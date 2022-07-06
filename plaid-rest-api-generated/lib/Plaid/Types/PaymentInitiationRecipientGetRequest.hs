{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.PaymentInitiationRecipientGetRequest ( PaymentInitiationRecipientGetRequest (..)  ) where

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

-- | PaymentInitiationRecipientGetRequest defines the request schema for &#x60;/payment_initiation/recipient/get&#x60;
data PaymentInitiationRecipientGetRequest = PaymentInitiationRecipientGetRequest
  { paymentInitiationRecipientGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , paymentInitiationRecipientGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , paymentInitiationRecipientGetRequestRecipientUnderscoreid :: Text -- ^ The ID of the recipient
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentInitiationRecipientGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentInitiationRecipientGetRequest")
instance ToJSON PaymentInitiationRecipientGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentInitiationRecipientGetRequest")

