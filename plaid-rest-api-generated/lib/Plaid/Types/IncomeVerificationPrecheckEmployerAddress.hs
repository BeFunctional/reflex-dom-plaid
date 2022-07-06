{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.IncomeVerificationPrecheckEmployerAddress ( IncomeVerificationPrecheckEmployerAddress (..)  ) where

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

-- | The address of the employer
data IncomeVerificationPrecheckEmployerAddress = IncomeVerificationPrecheckEmployerAddress
  { incomeVerificationPrecheckEmployerAddressCity :: Maybe Text -- ^ The full city name
  , incomeVerificationPrecheckEmployerAddressCountry :: Maybe Text -- ^ The ISO 3166-1 alpha-2 country code
  , incomeVerificationPrecheckEmployerAddressPostalUnderscorecode :: Maybe Text -- ^ The postal code. In API versions 2018-05-22 and earlier, this field is called `zip`.
  , incomeVerificationPrecheckEmployerAddressRegion :: Maybe Text -- ^ The region or state. In API versions 2018-05-22 and earlier, this field is called `state`. Example: `\"NC\"`
  , incomeVerificationPrecheckEmployerAddressStreet :: Maybe Text -- ^ The full street address Example: `\"564 Main Street, APT 15\"`
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IncomeVerificationPrecheckEmployerAddress where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "incomeVerificationPrecheckEmployerAddress")
instance ToJSON IncomeVerificationPrecheckEmployerAddress where
  toJSON = genericToJSON (removeFieldLabelPrefix False "incomeVerificationPrecheckEmployerAddress")

