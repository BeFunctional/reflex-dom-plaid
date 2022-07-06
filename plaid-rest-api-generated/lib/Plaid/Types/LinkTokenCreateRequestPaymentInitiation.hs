
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.LinkTokenCreateRequestPaymentInitiation ( LinkTokenCreateRequestPaymentInitiation (..)  ) where

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

-- | Specifies options for initializing Link for use with the Payment Initiation (Europe) product. This field is required if &#x60;payment_initiation&#x60; is included in the &#x60;products&#x60; array.
data LinkTokenCreateRequestPaymentInitiation = LinkTokenCreateRequestPaymentInitiation
  { linkTokenCreateRequestPaymentInitiationPaymentUnderscoreid :: Text -- ^ The `payment_id` provided by the `/payment_initiation/payment/create` endpoint.
  , linkTokenCreateRequestPaymentInitiationConsentUnderscoreid :: Maybe Text -- ^ The `consent_id` provided by the `/payment_initiation/consent/create` endpoint.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON LinkTokenCreateRequestPaymentInitiation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "linkTokenCreateRequestPaymentInitiation")
instance ToJSON LinkTokenCreateRequestPaymentInitiation where
  toJSON = genericToJSON (removeFieldLabelPrefix False "linkTokenCreateRequestPaymentInitiation")

