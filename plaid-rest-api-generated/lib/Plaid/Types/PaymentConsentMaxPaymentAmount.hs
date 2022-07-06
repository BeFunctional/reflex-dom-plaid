
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.PaymentConsentMaxPaymentAmount ( PaymentConsentMaxPaymentAmount (..)  ) where

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
import Plaid.Types.PaymentAmountCurrency

-- | Maximum amount of a single payment initiated using the payment consent.
data PaymentConsentMaxPaymentAmount = PaymentConsentMaxPaymentAmount
  { paymentConsentMaxPaymentAmountCurrency :: PaymentAmountCurrency -- ^ 
  , paymentConsentMaxPaymentAmountValue :: Double -- ^ The amount of the payment. Must contain at most two digits of precision e.g. `1.23`. Minimum accepted value is `1`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentConsentMaxPaymentAmount where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentConsentMaxPaymentAmount")
instance ToJSON PaymentConsentMaxPaymentAmount where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentConsentMaxPaymentAmount")

