
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.AddressDataNullable ( AddressDataNullable (..)  ) where

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

-- | Data about the components comprising an address.
data AddressDataNullable = AddressDataNullable
  { addressDataNullableCity :: Text -- ^ The full city name
  , addressDataNullableRegion :: Text -- ^ The region or state. In API versions 2018-05-22 and earlier, this field is called `state`. Example: `\"NC\"`
  , addressDataNullableStreet :: Text -- ^ The full street address Example: `\"564 Main Street, APT 15\"`
  , addressDataNullablePostalUnderscorecode :: Text -- ^ The postal code. In API versions 2018-05-22 and earlier, this field is called `zip`.
  , addressDataNullableCountry :: Text -- ^ The ISO 3166-1 alpha-2 country code
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AddressDataNullable where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "addressDataNullable")
instance ToJSON AddressDataNullable where
  toJSON = genericToJSON (removeFieldLabelPrefix False "addressDataNullable")

