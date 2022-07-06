
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.AssetReportRelayCreateRequest ( AssetReportRelayCreateRequest (..)  ) where

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

-- | AssetReportRelayCreateRequest defines the request schema for &#x60;/asset_report/relay/create&#x60;
data AssetReportRelayCreateRequest = AssetReportRelayCreateRequest
  { assetReportRelayCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , assetReportRelayCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , assetReportRelayCreateRequestAssetUnderscorereportUnderscoretoken :: Text -- ^ A token that can be provided to endpoints such as `/asset_report/get` or `/asset_report/pdf/get` to fetch or update an Asset Report.
  , assetReportRelayCreateRequestSecondaryUnderscoreclientUnderscoreid :: Text -- ^ The `secondary_client_id` is the client id of the third party with whom you would like to share the Asset Report.
  , assetReportRelayCreateRequestWebhook :: Maybe Text -- ^ URL to which Plaid will send webhooks when the Secondary Client successfully retrieves an Asset Report by calling `asset_report/relay/get`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AssetReportRelayCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "assetReportRelayCreateRequest")
instance ToJSON AssetReportRelayCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "assetReportRelayCreateRequest")

