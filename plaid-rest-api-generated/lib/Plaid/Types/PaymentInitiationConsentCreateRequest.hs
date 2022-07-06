
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.PaymentInitiationConsentCreateRequest ( PaymentInitiationConsentCreateRequest (..)  ) where

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
import Plaid.Types.PaymentInitiationConsentScope
import Plaid.Types.PaymentInitiationConsentConstraints
import Plaid.Types.ExternalPaymentInitiationConsentOptions

-- | PaymentInitiationConsentCreateRequest defines the request schema for &#x60;/payment_initiation/consent/create&#x60;
data PaymentInitiationConsentCreateRequest = PaymentInitiationConsentCreateRequest
  { paymentInitiationConsentCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , paymentInitiationConsentCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , paymentInitiationConsentCreateRequestRecipientUnderscoreid :: Text -- ^ The ID of the recipient the payment consent is for. The created consent can be used to transfer funds to this recipient only.
  , paymentInitiationConsentCreateRequestReference :: Text -- ^ A reference for the payment consent. This must be an alphanumeric string with at most 18 characters and must not contain any special characters.
  , paymentInitiationConsentCreateRequestScopes :: [PaymentInitiationConsentScope] -- ^ An array of payment consent scopes.
  , paymentInitiationConsentCreateRequestConstraints :: PaymentInitiationConsentConstraints -- ^ 
  , paymentInitiationConsentCreateRequestOptions :: Maybe ExternalPaymentInitiationConsentOptions -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentInitiationConsentCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentInitiationConsentCreateRequest")
instance ToJSON PaymentInitiationConsentCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentInitiationConsentCreateRequest")

