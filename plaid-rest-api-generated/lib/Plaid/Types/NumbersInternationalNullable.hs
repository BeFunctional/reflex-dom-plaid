
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.NumbersInternationalNullable ( NumbersInternationalNullable (..)  ) where

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

-- | Identifying information for transferring money to or from an international bank account via wire transfer.
data NumbersInternationalNullable = NumbersInternationalNullable
  { numbersInternationalNullableAccountUnderscoreid :: Text -- ^ The Plaid account ID associated with the account numbers
  , numbersInternationalNullableIban :: Text -- ^ The International Bank Account Number (IBAN) for the account
  , numbersInternationalNullableBic :: Text -- ^ The Bank Identifier Code (BIC) for the account
  } deriving (Show, Eq, Generic, Data)

instance FromJSON NumbersInternationalNullable where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "numbersInternationalNullable")
instance ToJSON NumbersInternationalNullable where
  toJSON = genericToJSON (removeFieldLabelPrefix False "numbersInternationalNullable")

