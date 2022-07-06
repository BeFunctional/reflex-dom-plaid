{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.PaymentInitiationConsentStatus ( PaymentInitiationConsentStatus (..)  ) where

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

-- | The status of the payment consent.  &#x60;UNAUTHORISED&#x60;: Consent created, but requires user authorisation.  &#x60;REJECTED&#x60;: Consent authorisation was rejected by the user and/or the bank.  &#x60;AUTHORISED&#x60;: Consent is active and ready to be used.  &#x60;REVOKED&#x60;: Consent has been revoked and can no longer be used.  &#x60;EXPIRED&#x60;: Consent is no longer valid.
data PaymentInitiationConsentStatus = PaymentInitiationConsentStatus
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentInitiationConsentStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentInitiationConsentStatus")
instance ToJSON PaymentInitiationConsentStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentInitiationConsentStatus")

