
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.SandboxBankTransferSimulateRequest ( SandboxBankTransferSimulateRequest (..)  ) where

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
import Plaid.Types.BankTransferFailure

-- | Defines the request schema for &#x60;/sandbox/bank_transfer/simulate&#x60;
data SandboxBankTransferSimulateRequest = SandboxBankTransferSimulateRequest
  { sandboxBankTransferSimulateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , sandboxBankTransferSimulateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , sandboxBankTransferSimulateRequestBankUnderscoretransferUnderscoreid :: Text -- ^ Plaid’s unique identifier for a bank transfer.
  , sandboxBankTransferSimulateRequestEventUnderscoretype :: Text -- ^ The asynchronous event to be simulated. May be: `posted`, `failed`, or `reversed`.  An error will be returned if the event type is incompatible with the current transfer status. Compatible status --> event type transitions include:  `pending` --> `failed`  `pending` --> `posted`  `posted` --> `reversed` 
  , sandboxBankTransferSimulateRequestFailureUnderscorereason :: Maybe BankTransferFailure -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SandboxBankTransferSimulateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "sandboxBankTransferSimulateRequest")
instance ToJSON SandboxBankTransferSimulateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "sandboxBankTransferSimulateRequest")

