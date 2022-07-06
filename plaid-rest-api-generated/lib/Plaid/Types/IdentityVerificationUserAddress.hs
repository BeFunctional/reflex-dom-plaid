
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.IdentityVerificationUserAddress ( IdentityVerificationUserAddress (..)  ) where

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

-- | Even if an address has been collected, some fields may be null depending on the region&#39;s addressing system. For example: * Addresses from the United Kingdom will not include a region * Addresses from Hong Kong will not include postal code
data IdentityVerificationUserAddress = IdentityVerificationUserAddress
  { identityVerificationUserAddressStreet :: Text -- ^ 
  , identityVerificationUserAddressStreet2 :: Text -- ^ Extra street information, like an apartment or suite number.
  , identityVerificationUserAddressCity :: Text -- ^ 
  , identityVerificationUserAddressRegion :: Text -- ^ 
  , identityVerificationUserAddressPostalUnderscorecode :: Text -- ^ 
  , identityVerificationUserAddressCountry :: Text -- ^ Valid, capitalized, two-letter ISO code representing the country of this object. Must be in ISO 3166-1 alpha-2 form.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IdentityVerificationUserAddress where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "identityVerificationUserAddress")
instance ToJSON IdentityVerificationUserAddress where
  toJSON = genericToJSON (removeFieldLabelPrefix False "identityVerificationUserAddress")

