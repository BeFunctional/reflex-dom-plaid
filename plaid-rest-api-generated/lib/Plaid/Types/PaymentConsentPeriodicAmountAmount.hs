{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.PaymentConsentPeriodicAmountAmount ( PaymentConsentPeriodicAmountAmount (..)  ) where

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

-- | Maximum cumulative amount for all payments in the specified interval.
data PaymentConsentPeriodicAmountAmount = PaymentConsentPeriodicAmountAmount
  { paymentConsentPeriodicAmountAmountCurrency :: PaymentAmountCurrency -- ^ 
  , paymentConsentPeriodicAmountAmountValue :: Double -- ^ The amount of the payment. Must contain at most two digits of precision e.g. `1.23`. Minimum accepted value is `1`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentConsentPeriodicAmountAmount where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentConsentPeriodicAmountAmount")
instance ToJSON PaymentConsentPeriodicAmountAmount where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentConsentPeriodicAmountAmount")

