
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.NumbersEFTNullable ( NumbersEFTNullable (..)  ) where

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

-- | Identifying information for transferring money to or from a Canadian bank account via EFT.
data NumbersEFTNullable = NumbersEFTNullable
  { numbersEFTNullableAccountUnderscoreid :: Text -- ^ The Plaid account ID associated with the account numbers
  , numbersEFTNullableAccount :: Text -- ^ The EFT account number for the account
  , numbersEFTNullableInstitution :: Text -- ^ The EFT institution number for the account
  , numbersEFTNullableBranch :: Text -- ^ The EFT branch number for the account
  } deriving (Show, Eq, Generic, Data)

instance FromJSON NumbersEFTNullable where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "numbersEFTNullable")
instance ToJSON NumbersEFTNullable where
  toJSON = genericToJSON (removeFieldLabelPrefix False "numbersEFTNullable")

