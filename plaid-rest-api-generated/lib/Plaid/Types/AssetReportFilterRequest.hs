{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.AssetReportFilterRequest ( AssetReportFilterRequest (..)  ) where

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

-- | AssetReportFilterRequest defines the request schema for &#x60;/asset_report/filter&#x60;
data AssetReportFilterRequest = AssetReportFilterRequest
  { assetReportFilterRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , assetReportFilterRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , assetReportFilterRequestAssetUnderscorereportUnderscoretoken :: Text -- ^ A token that can be provided to endpoints such as `/asset_report/get` or `/asset_report/pdf/get` to fetch or update an Asset Report.
  , assetReportFilterRequestAccountUnderscoreidsUnderscoretoUnderscoreexclude :: [Text] -- ^ The accounts to exclude from the Asset Report, identified by `account_id`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AssetReportFilterRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "assetReportFilterRequest")
instance ToJSON AssetReportFilterRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "assetReportFilterRequest")

