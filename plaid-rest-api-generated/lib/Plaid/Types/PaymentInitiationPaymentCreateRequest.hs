{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.PaymentInitiationPaymentCreateRequest ( PaymentInitiationPaymentCreateRequest (..)  ) where

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
import Plaid.Types.PaymentAmount
import Plaid.Types.ExternalPaymentScheduleRequest
import Plaid.Types.ExternalPaymentOptions

-- | PaymentInitiationPaymentCreateRequest defines the request schema for &#x60;/payment_initiation/payment/create&#x60;
data PaymentInitiationPaymentCreateRequest = PaymentInitiationPaymentCreateRequest
  { paymentInitiationPaymentCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , paymentInitiationPaymentCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , paymentInitiationPaymentCreateRequestRecipientUnderscoreid :: Text -- ^ The ID of the recipient the payment is for.
  , paymentInitiationPaymentCreateRequestReference :: Text -- ^ A reference for the payment. This must be an alphanumeric string with at most 18 characters and must not contain any special characters (since not all institutions support them).
  , paymentInitiationPaymentCreateRequestAmount :: PaymentAmount -- ^ 
  , paymentInitiationPaymentCreateRequestSchedule :: Maybe ExternalPaymentScheduleRequest -- ^ 
  , paymentInitiationPaymentCreateRequestOptions :: Maybe ExternalPaymentOptions -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentInitiationPaymentCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentInitiationPaymentCreateRequest")
instance ToJSON PaymentInitiationPaymentCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentInitiationPaymentCreateRequest")

