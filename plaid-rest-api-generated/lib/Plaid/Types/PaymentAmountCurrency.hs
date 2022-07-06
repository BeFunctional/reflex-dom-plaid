
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.PaymentAmountCurrency ( PaymentAmountCurrency (..)  ) where

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

-- | The ISO-4217 currency code of the payment. For standing orders and payment consents, &#x60;\&quot;GBP\&quot;&#x60; must be used.
data PaymentAmountCurrency = PaymentAmountCurrency
  {
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentAmountCurrency where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentAmountCurrency")
instance ToJSON PaymentAmountCurrency where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentAmountCurrency")

