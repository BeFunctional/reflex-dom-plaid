module Reflex.Dom.Plaid.Common where

import Control.DeepSeq (NFData)
import Data.Aeson
import Data.Hashable (Hashable)
import Data.Text (Text)
import GHC.Generics (Generic)

newtype PlaidUserId = PlaidUserId Text
  deriving stock (Generic)
  deriving newtype (Show, Eq, Hashable, NFData, ToJSON, FromJSON)

newtype PlaidPublicToken = PlaidPublicToken { unPlaidPublicToken :: Text }
  deriving stock (Generic)
  deriving newtype (Show, Eq, NFData, ToJSON, FromJSON)

newtype PlaidLinkToken = PlaidLinkToken { unPlaidLinkToken :: Text }
  deriving stock (Generic)
  deriving newtype (Show, Eq, NFData, ToJSON, FromJSON)

newtype PlaidAccessToken = PlaidAccessToken Text
  deriving stock (Generic)
  deriving newtype (Show, Eq, NFData, ToJSON, FromJSON)
