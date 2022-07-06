{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.PaymentInitiationPaymentGetRequest ( PaymentInitiationPaymentGetRequest (..)  ) where

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

-- | PaymentInitiationPaymentGetRequest defines the request schema for &#x60;/payment_initiation/payment/get&#x60;
data PaymentInitiationPaymentGetRequest = PaymentInitiationPaymentGetRequest
  { paymentInitiationPaymentGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , paymentInitiationPaymentGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , paymentInitiationPaymentGetRequestPaymentUnderscoreid :: Text -- ^ The `payment_id` returned from `/payment_initiation/payment/create`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentInitiationPaymentGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentInitiationPaymentGetRequest")
instance ToJSON PaymentInitiationPaymentGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentInitiationPaymentGetRequest")

