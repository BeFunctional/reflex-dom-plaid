
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.ExternalPaymentRefundDetails ( ExternalPaymentRefundDetails (..)  ) where

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

-- | Details about external payment refund
data ExternalPaymentRefundDetails = ExternalPaymentRefundDetails
  { externalPaymentRefundDetailsName :: Text -- ^ The name of the account holder.
  , externalPaymentRefundDetailsIban :: Text -- ^ The International Bank Account Number (IBAN) for the account.
  , externalPaymentRefundDetailsBacs :: RecipientBACSNullable -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ExternalPaymentRefundDetails where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "externalPaymentRefundDetails")
instance ToJSON ExternalPaymentRefundDetails where
  toJSON = genericToJSON (removeFieldLabelPrefix False "externalPaymentRefundDetails")

