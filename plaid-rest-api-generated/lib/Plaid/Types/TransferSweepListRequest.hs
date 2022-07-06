
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.TransferSweepListRequest ( TransferSweepListRequest (..)  ) where

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

-- | Defines the request schema for &#x60;/transfer/sweep/list&#x60;
data TransferSweepListRequest = TransferSweepListRequest
  { transferSweepListRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , transferSweepListRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , transferSweepListRequestStartUnderscoredate :: Maybe UTCTime -- ^ The start datetime of sweeps to return (RFC 3339 format).
  , transferSweepListRequestEndUnderscoredate :: Maybe UTCTime -- ^ The end datetime of sweeps to return (RFC 3339 format).
  , transferSweepListRequestCount :: Maybe Int -- ^ The maximum number of sweeps to return.
  , transferSweepListRequestOffset :: Maybe Int -- ^ The number of sweeps to skip before returning results.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferSweepListRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferSweepListRequest")
instance ToJSON TransferSweepListRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferSweepListRequest")

