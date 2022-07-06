{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.TransferCreateRequest ( TransferCreateRequest (..)  ) where

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
import Plaid.Types.TransferType
import Plaid.Types.TransferNetwork
import Plaid.Types.ACHClass
import Plaid.Types.TransferUserInRequest

-- | Defines the request schema for &#x60;/transfer/create&#x60;
data TransferCreateRequest = TransferCreateRequest
  { transferCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , transferCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , transferCreateRequestIdempotencyUnderscorekey :: Maybe Text -- ^ Deprecated. `authorization_id` is now used as idempotency instead.  A random key provided by the client, per unique transfer. Maximum of 50 characters.  The API supports idempotency for safely retrying requests without accidentally performing the same operation twice. For example, if a request to create a transfer fails due to a network connection error, you can retry the request with the same idempotency key to guarantee that only a single transfer is created.
  , transferCreateRequestAccessUnderscoretoken :: Text -- ^ The Plaid `access_token` for the account that will be debited or credited.
  , transferCreateRequestAccountUnderscoreid :: Text -- ^ The Plaid `account_id` for the account that will be debited or credited.
  , transferCreateRequestAuthorizationUnderscoreid :: Text -- ^ Plaid’s unique identifier for a transfer authorization. This parameter also serves the purpose of acting as an idempotency identifier.
  , transferCreateRequestType :: TransferType -- ^ 
  , transferCreateRequestNetwork :: TransferNetwork -- ^ 
  , transferCreateRequestAmount :: Text -- ^ The amount of the transfer (decimal string with two digits of precision e.g. \"10.00\").
  , transferCreateRequestDescription :: Text -- ^ The transfer description. Maximum of 10 characters.
  , transferCreateRequestAchUnderscoreclass :: ACHClass -- ^ 
  , transferCreateRequestUser :: TransferUserInRequest -- ^ 
  , transferCreateRequestMetadata :: Maybe (Map.Map String Text) -- ^ The Metadata object is a mapping of client-provided string fields to any string value. The following limitations apply: - The JSON values must be Strings (no nested JSON objects allowed) - Only ASCII characters may be used - Maximum of 50 key/value pairs - Maximum key length of 40 characters - Maximum value length of 500 characters 
  , transferCreateRequestOriginationUnderscoreaccountUnderscoreid :: Maybe Text -- ^ Plaid’s unique identifier for the origination account for this transfer. If you have more than one origination account, this value must be specified. Otherwise, this field should be left blank.
  , transferCreateRequestIsoUnderscorecurrencyUnderscorecode :: Maybe Text -- ^ The currency of the transfer amount. The default value is \"USD\".
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferCreateRequest")
instance ToJSON TransferCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferCreateRequest")

