{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}

{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.SandboxIncomeFireWebhookRequest ( SandboxIncomeFireWebhookRequest (..)  ) where

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

-- | SandboxIncomeFireWebhookRequest defines the request schema for &#x60;/sandbox/income/fire_webhook&#x60;
data SandboxIncomeFireWebhookRequest = SandboxIncomeFireWebhookRequest
  { sandboxIncomeFireWebhookRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , sandboxIncomeFireWebhookRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , sandboxIncomeFireWebhookRequestItemUnderscoreid :: Text -- ^ The Item ID associated with the verification.
  , sandboxIncomeFireWebhookRequestUserUnderscoreid :: Maybe Text -- ^ The Plaid `user_id` of the User associated with this webhook, warning, or error.
  , sandboxIncomeFireWebhookRequestWebhook :: Text -- ^ The URL to which the webhook should be sent.
  , sandboxIncomeFireWebhookRequestVerificationUnderscorestatus :: Text -- ^ `VERIFICATION_STATUS_PROCESSING_COMPLETE`: The income verification status processing has completed. If the user uploaded multiple documents, this webhook will fire when all documents have finished processing. Call the `/income/verification/paystubs/get` endpoint and check the document metadata to see which documents were successfully parsed.  `VERIFICATION_STATUS_PROCESSING_FAILED`: A failure occurred when attempting to process the verification documentation.  `VERIFICATION_STATUS_PENDING_APPROVAL`: The income verification has been sent to the user for review.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SandboxIncomeFireWebhookRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "sandboxIncomeFireWebhookRequest")
instance ToJSON SandboxIncomeFireWebhookRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "sandboxIncomeFireWebhookRequest")

