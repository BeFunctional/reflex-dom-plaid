{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.PaymentInitiationPaymentStatus ( PaymentInitiationPaymentStatus (..)  ) where

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

-- | The status of the payment.  &#x60;PAYMENT_STATUS_INPUT_NEEDED&#x60;: This is the initial state of all payments. It indicates that the payment is waiting on user input to continue processing. A payment may re-enter this state later on if further input is needed.  &#x60;PAYMENT_STATUS_INITIATED&#x60;: The payment has been successfully authorised and accepted by the financial institution but has not been executed.  &#x60;PAYMENT_STATUS_INSUFFICIENT_FUNDS&#x60;: The payment has failed due to insufficient funds.  &#x60;PAYMENT_STATUS_FAILED&#x60;: The payment has failed to be initiated. This error is retryable once the root cause is resolved.  &#x60;PAYMENT_STATUS_BLOCKED&#x60;: The payment has been blocked. This is a retryable error.  &#x60;PAYMENT_STATUS_AUTHORISING&#x60;: The payment is currently being processed. The payment will automatically exit this state when the financial institution has authorised the transaction.  &#x60;PAYMENT_STATUS_CANCELLED&#x60;: The payment was cancelled during authorisation.  &#x60;PAYMENT_STATUS_EXECUTED&#x60;: The payment has been successfully initiated and is considered complete.  &#x60;PAYMENT_STATUS_ESTABLISHED&#x60;: Indicates that the standing order has been successfully established. This state is only used for standing orders.  &#x60;PAYMENT_STATUS_REJECTED&#x60;: The payment was rejected by the financial institution.  Deprecated: These statuses will be removed in a future release.  &#x60;PAYMENT_STATUS_UNKNOWN&#x60;: The payment status is unknown.  &#x60;PAYMENT_STATUS_PROCESSING&#x60;: The payment is currently being processed. The payment will automatically exit this state when processing is complete.  &#x60;PAYMENT_STATUS_COMPLETED&#x60;: Indicates that the standing order has been successfully established. This state is only used for standing orders.
data PaymentInitiationPaymentStatus = PaymentInitiationPaymentStatus
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentInitiationPaymentStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentInitiationPaymentStatus")
instance ToJSON PaymentInitiationPaymentStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentInitiationPaymentStatus")

