{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.AssetReportCreateRequest ( AssetReportCreateRequest (..)  ) where

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
import Plaid.Types.AssetReportCreateRequestOptions

-- | AssetReportCreateRequest defines the request schema for &#x60;/asset_report/create&#x60;
data AssetReportCreateRequest = AssetReportCreateRequest
  { assetReportCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , assetReportCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , assetReportCreateRequestAccessUnderscoretokens :: [Text] -- ^ An array of access tokens corresponding to the Items that will be included in the report. The `assets` product must have been initialized for the Items during link; the Assets product cannot be added after initialization.
  , assetReportCreateRequestDaysUnderscorerequested :: Int -- ^ The maximum integer number of days of history to include in the Asset Report. If using Fannie Mae Day 1 Certainty, `days_requested` must be at least 61 for new originations or at least 31 for refinancings.  An Asset Report requested with \"Additional History\" (that is, with more than 61 days of transaction history) will incur an Additional History fee.
  , assetReportCreateRequestOptions :: Maybe AssetReportCreateRequestOptions -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AssetReportCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "assetReportCreateRequest")
instance ToJSON AssetReportCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "assetReportCreateRequest")

