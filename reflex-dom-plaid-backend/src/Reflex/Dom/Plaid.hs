module Reflex.Dom.Plaid where

import Data.Hashable (Hashable)
import Data.Text (Text)
import GHC.Generics (Generic)

newtype PlaidUserId = PlaidUserId Text
  deriving stock (Generic)
  deriving newtype (Show, Eq, Hashable)

newtype PlaidPublicToken = PlaidPublicToken Text
  deriving stock (Generic)
  deriving newtype (Show, Eq)

newtype PlaidAccessToken = PlaidAccessToken Text
  deriving stock (Generic)
  deriving newtype (Show, Eq)
