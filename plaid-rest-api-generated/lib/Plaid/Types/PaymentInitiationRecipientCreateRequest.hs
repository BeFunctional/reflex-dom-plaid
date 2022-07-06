{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.PaymentInitiationRecipientCreateRequest ( PaymentInitiationRecipientCreateRequest (..)  ) where

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
import Plaid.Types.RecipientBACSNullable
import Plaid.Types.PaymentInitiationAddress

-- | PaymentInitiationRecipientCreateRequest defines the request schema for &#x60;/payment_initiation/recipient/create&#x60;
data PaymentInitiationRecipientCreateRequest = PaymentInitiationRecipientCreateRequest
  { paymentInitiationRecipientCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , paymentInitiationRecipientCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , paymentInitiationRecipientCreateRequestName :: Text -- ^ The name of the recipient
  , paymentInitiationRecipientCreateRequestIban :: Maybe Text -- ^ The International Bank Account Number (IBAN) for the recipient. If BACS data is not provided, an IBAN is required.
  , paymentInitiationRecipientCreateRequestBacs :: Maybe RecipientBACSNullable -- ^ 
  , paymentInitiationRecipientCreateRequestAddress :: Maybe PaymentInitiationAddress -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentInitiationRecipientCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentInitiationRecipientCreateRequest")
instance ToJSON PaymentInitiationRecipientCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentInitiationRecipientCreateRequest")

