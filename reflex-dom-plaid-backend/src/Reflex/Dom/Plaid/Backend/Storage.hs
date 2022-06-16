module Reflex.Dom.Plaid.Backend.Storage where

import Control.Monad.Except
import Data.Hashable (Hashable)
import Data.Text (Text)
import GHC.Generics (Generic)

newtype PlaidUserId = PlaidUserId Text
  deriving stock (Generic)
  deriving newtype (Show, Eq, Hashable)

newtype PlaidAccessToken = PlaidAccessToken Text
  deriving stock (Generic)
  deriving newtype (Show, Eq)

data PlaidStorageError
  = PlaidAccessTokenNotFound PlaidUserId
  | PlaidUnexpectedError Text
  deriving stock (Generic, Show, Eq)

class (Monad m, MonadIO m, MonadError PlaidStorageError m) => PlaidStorage m where
  storeToken :: PlaidUserId -> PlaidAccessToken -> m ()
  getToken :: PlaidUserId -> m PlaidAccessToken
  deleteToken :: PlaidUserId -> m ()
