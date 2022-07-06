{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}

{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.LiabilitiesDefaultUpdateWebhook ( LiabilitiesDefaultUpdateWebhook (..)  ) where

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

-- | The webhook of type &#x60;LIABILITIES&#x60; and code &#x60;DEFAULT_UPDATE&#x60; will be fired when new or updated liabilities have been detected on a liabilities item.
data LiabilitiesDefaultUpdateWebhook = LiabilitiesDefaultUpdateWebhook
  { liabilitiesDefaultUpdateWebhookWebhookUnderscoretype :: Text -- ^ `LIABILITIES`
  , liabilitiesDefaultUpdateWebhookWebhookUnderscorecode :: Text -- ^ `DEFAULT_UPDATE`
  , liabilitiesDefaultUpdateWebhookItemUnderscoreid :: Text -- ^ The `item_id` of the Item associated with this webhook, warning, or error
  , liabilitiesDefaultUpdateWebhookError :: PlaidError -- ^ 
  , liabilitiesDefaultUpdateWebhookAccountUnderscoreidsUnderscorewithUnderscorenewUnderscoreliabilities :: [Text] -- ^ An array of `account_id`'s for accounts that contain new liabilities.'
  , liabilitiesDefaultUpdateWebhookAccountUnderscoreidsUnderscorewithUnderscoreupdatedUnderscoreliabilities :: Map.Map String [Text] -- ^ An object with keys of `account_id`'s that are mapped to their respective liabilities fields that changed.  Example: `{ \"XMBvvyMGQ1UoLbKByoMqH3nXMj84ALSdE5B58\": [\"past_amount_due\"] }` 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON LiabilitiesDefaultUpdateWebhook where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "liabilitiesDefaultUpdateWebhook")
instance ToJSON LiabilitiesDefaultUpdateWebhook where
  toJSON = genericToJSON (removeFieldLabelPrefix False "liabilitiesDefaultUpdateWebhook")

