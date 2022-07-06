{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.PaymentConsentPeriodicAlignment ( PaymentConsentPeriodicAlignment (..)  ) where

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

-- | Where the payment consent period should start.  &#x60;CALENDAR&#x60;: line up with a calendar.  &#x60;CONSENT&#x60;: on the date of consent creation.
data PaymentConsentPeriodicAlignment = PaymentConsentPeriodicAlignment
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentConsentPeriodicAlignment where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentConsentPeriodicAlignment")
instance ToJSON PaymentConsentPeriodicAlignment where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentConsentPeriodicAlignment")

