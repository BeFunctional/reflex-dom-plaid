{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.SignalDecisionReportRequest ( SignalDecisionReportRequest (..)  ) where

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

-- | SignalDecisionReportRequest defines the request schema for &#x60;/signal/decision/report&#x60;
data SignalDecisionReportRequest = SignalDecisionReportRequest
  { signalDecisionReportRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , signalDecisionReportRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , signalDecisionReportRequestClientUnderscoretransactionUnderscoreid :: Text -- ^ Must be the same as the `client_transaction_id` supplied when calling `/signal/evaluate`
  , signalDecisionReportRequestInitiated :: Bool -- ^ `true` if the ACH transaction was initiated, `false` otherwise.
  , signalDecisionReportRequestDaysUnderscorefundsUnderscoreonUnderscorehold :: Maybe Int -- ^ The actual number of days (hold time) since the ACH debit transaction that you wait before making funds available to your customers. The holding time could affect the ACH return rate. For example, use 0 if you make funds available to your customers instantly or the same day following the debit transaction, or 1 if you make funds available the next day following the debit initialization.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SignalDecisionReportRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "signalDecisionReportRequest")
instance ToJSON SignalDecisionReportRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "signalDecisionReportRequest")

