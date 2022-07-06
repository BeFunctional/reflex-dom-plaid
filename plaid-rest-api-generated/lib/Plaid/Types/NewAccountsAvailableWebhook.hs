{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.NewAccountsAvailableWebhook ( NewAccountsAvailableWebhook (..)  ) where

import Data.String
import Data.Data (Data)
import Data.UUID (UUID)
import Data.List (stripPrefix)
import Data.Maybe (fromMaybe)
import Data.Aeson (Value, FromJSON(..), ToJSON(..), genericToJSON, genericParseJSON)
import Data.Aeson.Types (Options(..), defaultOptions)
import Data.Set (Set)
import Data.Text (Text)
import Data.Time
import Data.Swagger (ToSchema, declareNamedSchema)
import qualified Data.Swagger as Swagger
import qualified Data.Char as Char
import qualified Data.Text as T
import qualified Data.Map as Map
import GHC.Generics (Generic)
import Data.Function ((&))
import Plaid.Types.Common
import Plaid.Types.PlaidError

-- | Fired when Plaid detects a new account for Items created or updated with [Account Select v2](https://plaid.com/docs/link/customization/#account-select). Upon receiving this webhook, you can prompt your users to share new accounts with you through [Account Select v2 update mode](https://plaid.com/docs/link/update-mode/#using-update-mode-to-request-new-accounts).
data NewAccountsAvailableWebhook = NewAccountsAvailableWebhook
  { newAccountsAvailableWebhookWebhookUnderscoretype :: Maybe Text -- ^ `ITEM`
  , newAccountsAvailableWebhookWebhookUnderscorecode :: Maybe Text -- ^ `NEW_ACCOUNTS_AVAILABLE`
  , newAccountsAvailableWebhookItemUnderscoreid :: Maybe Text -- ^ The `item_id` of the Item associated with this webhook, warning, or error
  , newAccountsAvailableWebhookError :: Maybe PlaidError -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON NewAccountsAvailableWebhook where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "newAccountsAvailableWebhook")
instance ToJSON NewAccountsAvailableWebhook where
  toJSON = genericToJSON (removeFieldLabelPrefix False "newAccountsAvailableWebhook")

