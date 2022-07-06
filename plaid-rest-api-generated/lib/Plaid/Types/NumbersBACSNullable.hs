{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.NumbersBACSNullable ( NumbersBACSNullable (..)  ) where

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

-- | Identifying information for transferring money to or from a UK bank account via BACS.
data NumbersBACSNullable = NumbersBACSNullable
  { numbersBACSNullableAccountUnderscoreid :: Text -- ^ The Plaid account ID associated with the account numbers
  , numbersBACSNullableAccount :: Text -- ^ The BACS account number for the account
  , numbersBACSNullableSortUnderscorecode :: Text -- ^ The BACS sort code for the account
  } deriving (Show, Eq, Generic, Data)

instance FromJSON NumbersBACSNullable where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "numbersBACSNullable")
instance ToJSON NumbersBACSNullable where
  toJSON = genericToJSON (removeFieldLabelPrefix False "numbersBACSNullable")

