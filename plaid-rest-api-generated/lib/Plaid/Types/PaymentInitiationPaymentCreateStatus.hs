
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.PaymentInitiationPaymentCreateStatus ( PaymentInitiationPaymentCreateStatus (..)  ) where

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

-- | For a payment returned by this endpoint, there is only one possible value:  &#x60;PAYMENT_STATUS_INPUT_NEEDED&#x60;: The initial phase of the payment
data PaymentInitiationPaymentCreateStatus = PaymentInitiationPaymentCreateStatus
  {
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentInitiationPaymentCreateStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentInitiationPaymentCreateStatus")
instance ToJSON PaymentInitiationPaymentCreateStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentInitiationPaymentCreateStatus")

