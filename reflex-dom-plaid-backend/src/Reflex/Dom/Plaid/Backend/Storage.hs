module Reflex.Dom.Plaid.Backend.Storage where

import Control.Monad.Except
import Data.Text (Text)
import GHC.Generics (Generic)
import Reflex.Dom.Plaid.Common

data PlaidStorageError
  = PlaidAccessTokenNotFound PlaidUserId
  | PlaidUnexpectedError Text
  deriving stock (Generic, Show, Eq)

class (Monad m, MonadIO m, MonadError PlaidStorageError m) => PlaidStorage m where
  storeToken :: PlaidUserId -> PlaidAccessToken -> m ()
  getToken :: PlaidUserId -> m PlaidAccessToken
  deleteToken :: PlaidUserId -> m ()
