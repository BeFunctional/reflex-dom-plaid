
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.ItemWebhookUpdateRequest ( ItemWebhookUpdateRequest (..)  ) where

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

-- | ItemWebhookUpdateRequest defines the request schema for &#x60;/item/webhook/update&#x60;
data ItemWebhookUpdateRequest = ItemWebhookUpdateRequest
  { itemWebhookUpdateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , itemWebhookUpdateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , itemWebhookUpdateRequestAccessUnderscoretoken :: Text -- ^ The access token associated with the Item data is being requested for.
  , itemWebhookUpdateRequestWebhook :: Maybe Text -- ^ The new webhook URL to associate with the Item. To remove a webhook from an Item, set to `null`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ItemWebhookUpdateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "itemWebhookUpdateRequest")
instance ToJSON ItemWebhookUpdateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "itemWebhookUpdateRequest")

