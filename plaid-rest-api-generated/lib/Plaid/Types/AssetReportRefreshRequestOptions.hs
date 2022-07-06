{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.AssetReportRefreshRequestOptions ( AssetReportRefreshRequestOptions (..)  ) where

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

-- | An optional object to filter &#x60;/asset_report/refresh&#x60; results. If provided, cannot be &#x60;null&#x60;. If not specified, the &#x60;options&#x60; from the original call to &#x60;/asset_report/create&#x60; will be used.
data AssetReportRefreshRequestOptions = AssetReportRefreshRequestOptions
  { assetReportRefreshRequestOptionsClientUnderscorereportUnderscoreid :: Maybe Text -- ^ Client-generated identifier, which can be used by lenders to track loan applications.
  , assetReportRefreshRequestOptionsWebhook :: Maybe Text -- ^ URL to which Plaid will send Assets webhooks, for example when the requested Asset Report is ready.
  , assetReportRefreshRequestOptionsUser :: Maybe AssetReportUser -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AssetReportRefreshRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "assetReportRefreshRequestOptions")
instance ToJSON AssetReportRefreshRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "assetReportRefreshRequestOptions")

