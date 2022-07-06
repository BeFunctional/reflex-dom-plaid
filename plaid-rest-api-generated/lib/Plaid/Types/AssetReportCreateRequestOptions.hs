{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.AssetReportCreateRequestOptions ( AssetReportCreateRequestOptions (..)  ) where

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
import Plaid.Types.AssetReportUser

-- | An optional object to filter &#x60;/asset_report/create&#x60; results. If provided, must be non-&#x60;null&#x60;. The optional &#x60;user&#x60; object is required for the report to be eligible for Fannie Mae&#39;s Day 1 Certainty program.
data AssetReportCreateRequestOptions = AssetReportCreateRequestOptions
  { assetReportCreateRequestOptionsClientUnderscorereportUnderscoreid :: Maybe Text -- ^ Client-generated identifier, which can be used by lenders to track loan applications.
  , assetReportCreateRequestOptionsWebhook :: Maybe Text -- ^ URL to which Plaid will send Assets webhooks, for example when the requested Asset Report is ready.
  , assetReportCreateRequestOptionsIncludeUnderscorefastUnderscorereport :: Maybe Bool -- ^ true to return balance and identity earlier as a fast report. Defaults to false if omitted.
  , assetReportCreateRequestOptionsUser :: Maybe AssetReportUser -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AssetReportCreateRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "assetReportCreateRequestOptions")
instance ToJSON AssetReportCreateRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "assetReportCreateRequestOptions")

