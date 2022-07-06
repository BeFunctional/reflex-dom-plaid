
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.TransferIntentCreateRequest ( TransferIntentCreateRequest (..)  ) where

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
import Plaid.Types.TransferIntentCreateMode
import Plaid.Types.ACHClass
import Plaid.Types.TransferUserInRequest

-- | Defines the request schema for &#x60;/transfer/intent/create&#x60;
data TransferIntentCreateRequest = TransferIntentCreateRequest
  { transferIntentCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , transferIntentCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , transferIntentCreateRequestAccountUnderscoreid :: Maybe Text -- ^ The Plaid `account_id` for the account that will be debited or credited.
  , transferIntentCreateRequestMode :: TransferIntentCreateMode -- ^ 
  , transferIntentCreateRequestAmount :: Text -- ^ The amount of the transfer (decimal string with two digits of precision e.g. \"10.00\").
  , transferIntentCreateRequestDescription :: Text -- ^ A description for the underlying transfer. Maximum of 8 characters.
  , transferIntentCreateRequestAchUnderscoreclass :: ACHClass -- ^ 
  , transferIntentCreateRequestOriginationUnderscoreaccountUnderscoreid :: Maybe Text -- ^ Plaid’s unique identifier for the origination account for the intent. If not provided, the default account will be used.
  , transferIntentCreateRequestUser :: TransferUserInRequest -- ^ 
  , transferIntentCreateRequestMetadata :: Maybe (Map.Map String Text) -- ^ The Metadata object is a mapping of client-provided string fields to any string value. The following limitations apply: - The JSON values must be Strings (no nested JSON objects allowed) - Only ASCII characters may be used - Maximum of 50 key/value pairs - Maximum key length of 40 characters - Maximum value length of 500 characters 
  , transferIntentCreateRequestIsoUnderscorecurrencyUnderscorecode :: Maybe Text -- ^ The currency of the transfer amount, e.g. \"USD\"
  , transferIntentCreateRequestRequireUnderscoreguarantee :: Maybe Bool -- ^ When `true`, the transfer requires a `GUARANTEED` decision by Plaid to proceed (Guaranteed ACH customers only).
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferIntentCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferIntentCreateRequest")
instance ToJSON TransferIntentCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferIntentCreateRequest")

