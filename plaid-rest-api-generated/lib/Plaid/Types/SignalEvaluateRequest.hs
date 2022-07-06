
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.SignalEvaluateRequest ( SignalEvaluateRequest (..)  ) where

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
import Plaid.Types.SignalUser
import Plaid.Types.SignalDevice

-- | SignalEvaluateRequest defines the request schema for &#x60;/signal/evaluate&#x60;
data SignalEvaluateRequest = SignalEvaluateRequest
  { signalEvaluateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , signalEvaluateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , signalEvaluateRequestAccessUnderscoretoken :: Text -- ^ The access token associated with the Item data is being requested for.
  , signalEvaluateRequestAccountUnderscoreid :: Text -- ^ The `account_id` of the account whose verification status is to be modified
  , signalEvaluateRequestClientUnderscoretransactionUnderscoreid :: Text -- ^ The unique ID that you would like to use to refer to this transaction. For your convenience mapping your internal data, you could use your internal ID/identifier for this transaction. The max length for this field is 36 characters.
  , signalEvaluateRequestAmount :: Double -- ^ The transaction amount, in USD (e.g. `102.05`)
  , signalEvaluateRequestUserUnderscorepresent :: Maybe Bool -- ^ `true` if the end user is present while initiating the ACH transfer and the endpoint is being called; `false` otherwise (for example, when the ACH transfer is scheduled and the end user is not present, or you call this endpoint after the ACH transfer but before submitting the Nacha file for ACH processing).
  , signalEvaluateRequestClientUnderscoreuserUnderscoreid :: Maybe Text -- ^ A unique ID that identifies the end user in your system. This ID is used to correlate requests by a user with multiple Items. The max length for this field is 36 characters.
  , signalEvaluateRequestUser :: Maybe SignalUser -- ^ 
  , signalEvaluateRequestDevice :: Maybe SignalDevice -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SignalEvaluateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "signalEvaluateRequest")
instance ToJSON SignalEvaluateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "signalEvaluateRequest")

