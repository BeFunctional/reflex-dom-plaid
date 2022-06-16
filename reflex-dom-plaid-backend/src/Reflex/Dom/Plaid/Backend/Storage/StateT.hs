module Reflex.Dom.Plaid.Backend.Storage.StateT where

import Control.Lens
import Control.Monad.Error.Class (MonadError (..))
import Control.Monad.Reader
import Control.Monad.State (StateT)
import Control.Monad.State.Class (MonadState)
import Control.Monad.Trans.Except
import Data.HashMap.Strict (HashMap)
import Reflex.Dom.Plaid.Backend.Storage

type TokenMap = HashMap PlaidUserId PlaidAccessToken

newtype PlaidStorageState a = PlaidStorageState
  {runPlaidStorageState :: StateT TokenMap (ExceptT PlaidStorageError IO) a}
  deriving newtype
    ( Functor,
      Applicative,
      Monad,
      MonadError PlaidStorageError,
      MonadState TokenMap,
      MonadIO
    )

instance PlaidStorage PlaidStorageState where
  storeToken userId token = do
    at userId ?= token

  getToken userId = do
    token <- use (at userId)
    maybe (throwError $ PlaidAccessTokenNotFound userId) pure token

  deleteToken userId = do
    at userId .= Nothing
