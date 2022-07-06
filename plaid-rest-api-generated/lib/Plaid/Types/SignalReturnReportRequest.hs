
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.SignalReturnReportRequest ( SignalReturnReportRequest (..)  ) where

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

-- | SignalReturnReportRequest defines the request schema for &#x60;/signal/return/report&#x60;
data SignalReturnReportRequest = SignalReturnReportRequest
  { signalReturnReportRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , signalReturnReportRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , signalReturnReportRequestClientUnderscoretransactionUnderscoreid :: Text -- ^ Must be the same as the `client_transaction_id` supplied when calling `/signal/evaluate`
  , signalReturnReportRequestReturnUnderscorecode :: Text -- ^ Must be a valid ACH return code (e.g. \"R01\")
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SignalReturnReportRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "signalReturnReportRequest")
instance ToJSON SignalReturnReportRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "signalReturnReportRequest")

