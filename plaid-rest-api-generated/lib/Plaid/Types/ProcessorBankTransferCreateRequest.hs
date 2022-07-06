
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.ProcessorBankTransferCreateRequest ( ProcessorBankTransferCreateRequest (..)  ) where

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
import Plaid.Types.BankTransferType
import Plaid.Types.BankTransferNetwork
import Plaid.Types.ACHClass
import Plaid.Types.BankTransferUser

-- | Defines the request schema for &#x60;/processor/bank_transfer/create&#x60;
data ProcessorBankTransferCreateRequest = ProcessorBankTransferCreateRequest
  { processorBankTransferCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , processorBankTransferCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , processorBankTransferCreateRequestIdempotencyUnderscorekey :: Text -- ^ A random key provided by the client, per unique bank transfer. Maximum of 50 characters.  The API supports idempotency for safely retrying requests without accidentally performing the same operation twice. For example, if a request to create a bank transfer fails due to a network connection error, you can retry the request with the same idempotency key to guarantee that only a single bank transfer is created.
  , processorBankTransferCreateRequestProcessorUnderscoretoken :: Text -- ^ The processor token obtained from the Plaid integration partner. Processor tokens are in the format: `processor-<environment>-<identifier>`
  , processorBankTransferCreateRequestType :: BankTransferType -- ^ 
  , processorBankTransferCreateRequestNetwork :: BankTransferNetwork -- ^ 
  , processorBankTransferCreateRequestAmount :: Text -- ^ The amount of the bank transfer (decimal string with two digits of precision e.g. \"10.00\").
  , processorBankTransferCreateRequestIsoUnderscorecurrencyUnderscorecode :: Text -- ^ The currency of the transfer amount – should be set to \"USD\".
  , processorBankTransferCreateRequestDescription :: Text -- ^ The transfer description. Maximum of 10 characters.
  , processorBankTransferCreateRequestAchUnderscoreclass :: Maybe ACHClass -- ^ 
  , processorBankTransferCreateRequestUser :: BankTransferUser -- ^ 
  , processorBankTransferCreateRequestCustomUnderscoretag :: Maybe Text -- ^ An arbitrary string provided by the client for storage with the bank transfer. May be up to 100 characters.
  , processorBankTransferCreateRequestMetadata :: Maybe (Map.Map String Text) -- ^ The Metadata object is a mapping of client-provided string fields to any string value. The following limitations apply: - The JSON values must be Strings (no nested JSON objects allowed) - Only ASCII characters may be used - Maximum of 50 key/value pairs - Maximum key length of 40 characters - Maximum value length of 500 characters 
  , processorBankTransferCreateRequestOriginationUnderscoreaccountUnderscoreid :: Maybe Text -- ^ Plaid’s unique identifier for the origination account for this transfer. If you have more than one origination account, this value must be specified.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ProcessorBankTransferCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "processorBankTransferCreateRequest")
instance ToJSON ProcessorBankTransferCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "processorBankTransferCreateRequest")

