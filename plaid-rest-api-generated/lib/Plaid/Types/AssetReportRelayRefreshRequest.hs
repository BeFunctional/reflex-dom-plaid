
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.AssetReportRelayRefreshRequest ( AssetReportRelayRefreshRequest (..)  ) where

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

-- | AssetReportRelayRefreshRequest defines the request schema for &#x60;/asset_report/relay/refresh&#x60;
data AssetReportRelayRefreshRequest = AssetReportRelayRefreshRequest
  { assetReportRelayRefreshRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , assetReportRelayRefreshRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , assetReportRelayRefreshRequestAssetUnderscorerelayUnderscoretoken :: Text -- ^ 
  , assetReportRelayRefreshRequestWebhook :: Maybe Text -- ^ The URL registered to receive webhooks when the Asset Report of a Relay Token has been refreshed.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AssetReportRelayRefreshRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "assetReportRelayRefreshRequest")
instance ToJSON AssetReportRelayRefreshRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "assetReportRelayRefreshRequest")

