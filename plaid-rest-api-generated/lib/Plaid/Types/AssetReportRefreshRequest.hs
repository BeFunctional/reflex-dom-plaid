
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.AssetReportRefreshRequest ( AssetReportRefreshRequest (..)  ) where

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
import Plaid.Types.AssetReportRefreshRequestOptions

-- | AssetReportRefreshRequest defines the request schema for &#x60;/asset_report/refresh&#x60;
data AssetReportRefreshRequest = AssetReportRefreshRequest
  { assetReportRefreshRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , assetReportRefreshRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , assetReportRefreshRequestAssetUnderscorereportUnderscoretoken :: Text -- ^ The `asset_report_token` returned by the original call to `/asset_report/create`
  , assetReportRefreshRequestDaysUnderscorerequested :: Maybe Int -- ^ The maximum number of days of history to include in the Asset Report. Must be an integer. If not specified, the value from the original call to `/asset_report/create` will be used.
  , assetReportRefreshRequestOptions :: Maybe AssetReportRefreshRequestOptions -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AssetReportRefreshRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "assetReportRefreshRequest")
instance ToJSON AssetReportRefreshRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "assetReportRefreshRequest")

