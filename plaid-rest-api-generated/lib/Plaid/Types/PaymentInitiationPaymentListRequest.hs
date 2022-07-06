
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.PaymentInitiationPaymentListRequest ( PaymentInitiationPaymentListRequest (..)  ) where

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

-- | PaymentInitiationPaymentListRequest defines the request schema for &#x60;/payment_initiation/payment/list&#x60;
data PaymentInitiationPaymentListRequest = PaymentInitiationPaymentListRequest
  { paymentInitiationPaymentListRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , paymentInitiationPaymentListRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , paymentInitiationPaymentListRequestCount :: Maybe Int -- ^ The maximum number of payments to return. If `count` is not specified, a maximum of 10 payments will be returned, beginning with the most recent payment before the cursor (if specified).
  , paymentInitiationPaymentListRequestCursor :: Maybe UTCTime -- ^ A string in RFC 3339 format (i.e. \"2019-12-06T22:35:49Z\"). Only payments created before the cursor will be returned.
  , paymentInitiationPaymentListRequestConsentUnderscoreid :: Maybe Text -- ^ The consent ID. If specified, only payments, executed using this consent, will be returned.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentInitiationPaymentListRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentInitiationPaymentListRequest")
instance ToJSON PaymentInitiationPaymentListRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentInitiationPaymentListRequest")

