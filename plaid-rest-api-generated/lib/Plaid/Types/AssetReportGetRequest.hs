{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.AssetReportGetRequest ( AssetReportGetRequest (..)  ) where

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

-- | AssetReportGetRequest defines the request schema for &#x60;/asset_report/get&#x60;
data AssetReportGetRequest = AssetReportGetRequest
  { assetReportGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , assetReportGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , assetReportGetRequestAssetUnderscorereportUnderscoretoken :: Text -- ^ A token that can be provided to endpoints such as `/asset_report/get` or `/asset_report/pdf/get` to fetch or update an Asset Report.
  , assetReportGetRequestIncludeUnderscoreinsights :: Maybe Bool -- ^ `true` if you would like to retrieve the Asset Report with Insights, `false` otherwise. This field defaults to `false` if omitted.
  , assetReportGetRequestFastUnderscorereport :: Maybe Bool -- ^ `true` to fetch \"fast\" version of asset report. Defaults to false if omitted.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AssetReportGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "assetReportGetRequest")
instance ToJSON AssetReportGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "assetReportGetRequest")

