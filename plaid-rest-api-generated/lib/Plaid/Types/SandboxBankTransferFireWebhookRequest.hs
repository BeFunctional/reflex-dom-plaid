{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.SandboxBankTransferFireWebhookRequest ( SandboxBankTransferFireWebhookRequest (..)  ) where

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

-- | Defines the request schema for &#x60;/sandbox/bank_transfer/fire_webhook&#x60;
data SandboxBankTransferFireWebhookRequest = SandboxBankTransferFireWebhookRequest
  { sandboxBankTransferFireWebhookRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , sandboxBankTransferFireWebhookRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , sandboxBankTransferFireWebhookRequestWebhook :: Text -- ^ The URL to which the webhook should be sent.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SandboxBankTransferFireWebhookRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "sandboxBankTransferFireWebhookRequest")
instance ToJSON SandboxBankTransferFireWebhookRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "sandboxBankTransferFireWebhookRequest")

