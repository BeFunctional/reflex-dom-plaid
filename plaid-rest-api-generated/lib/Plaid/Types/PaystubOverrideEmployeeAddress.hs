
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.PaystubOverrideEmployeeAddress ( PaystubOverrideEmployeeAddress (..)  ) where

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

-- | The address of the employee.
data PaystubOverrideEmployeeAddress = PaystubOverrideEmployeeAddress
  { paystubOverrideEmployeeAddressCity :: Maybe Text -- ^ The full city name.
  , paystubOverrideEmployeeAddressRegion :: Maybe Text -- ^ The region or state Example: `\"NC\"`
  , paystubOverrideEmployeeAddressStreet :: Maybe Text -- ^ The full street address Example: `\"564 Main Street, APT 15\"`
  , paystubOverrideEmployeeAddressPostalUnderscorecode :: Maybe Text -- ^ 5 digit postal code.
  , paystubOverrideEmployeeAddressCountry :: Maybe Text -- ^ The country of the address.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaystubOverrideEmployeeAddress where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paystubOverrideEmployeeAddress")
instance ToJSON PaystubOverrideEmployeeAddress where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paystubOverrideEmployeeAddress")

