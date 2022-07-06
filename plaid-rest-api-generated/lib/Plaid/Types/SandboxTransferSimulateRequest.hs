{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.SandboxTransferSimulateRequest ( SandboxTransferSimulateRequest (..)  ) where

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
import Plaid.Types.TransferFailure

-- | Defines the request schema for &#x60;/sandbox/transfer/simulate&#x60;
data SandboxTransferSimulateRequest = SandboxTransferSimulateRequest
  { sandboxTransferSimulateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , sandboxTransferSimulateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , sandboxTransferSimulateRequestTransferUnderscoreid :: Text -- ^ Plaid’s unique identifier for a transfer.
  , sandboxTransferSimulateRequestEventUnderscoretype :: Text -- ^ The asynchronous event to be simulated. May be: `posted`, `failed`, or `returned`.  An error will be returned if the event type is incompatible with the current transfer status. Compatible status --> event type transitions include:  `pending` --> `failed`  `pending` --> `posted`  `posted` --> `returned` 
  , sandboxTransferSimulateRequestFailureUnderscorereason :: Maybe TransferFailure -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SandboxTransferSimulateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "sandboxTransferSimulateRequest")
instance ToJSON SandboxTransferSimulateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "sandboxTransferSimulateRequest")

