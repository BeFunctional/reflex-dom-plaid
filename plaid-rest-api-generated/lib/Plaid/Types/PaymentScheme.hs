
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.PaymentScheme ( PaymentScheme (..)  ) where

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

-- | Payment scheme. If not specified - the default in the region will be used (e.g. &#x60;SEPA_CREDIT_TRANSFER&#x60; for EU). Using unsupported values will result in a failed payment.  &#x60;FASTER_PAYMENTS&#x60;: Enables payments to move quickly between UK bank accounts. Default value in the UK.  &#x60;SEPA_CREDIT_TRANSFER&#x60;: The standard payment to a beneficiary within the SEPA area.  &#x60;SEPA_CREDIT_TRANSFER_INSTANT&#x60;: Instant payment within the SEPA area. May involve additional fees and may not be available at some banks.
data PaymentScheme = PaymentScheme
  {
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentScheme where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentScheme")
instance ToJSON PaymentScheme where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentScheme")

