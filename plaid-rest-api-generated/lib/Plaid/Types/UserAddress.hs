{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.UserAddress ( UserAddress (..)  ) where

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

-- | Home address for user supplied to &#x60;/identity_verification/create&#x60;
data UserAddress = UserAddress
  { userAddressStreet :: Text -- ^ The primary street portion of an address. If the user has submitted their address, this field will always be filled.
  , userAddressStreet2 :: Maybe Text -- ^ Extra street information, like an apartment or suite number.
  , userAddressCity :: Text -- ^ City from the end user's address
  , userAddressRegion :: Text -- ^ An ISO 3166-2 subdivision code. Related terms would be \"state\", \"province\", \"prefecture\", \"zone\", \"subdivision\", etc.
  , userAddressPostalUnderscorecode :: Text -- ^ The postal code for the associated address. Between 2 and 10 alphanumeric characters.
  , userAddressCountry :: Text -- ^ Valid, capitalized, two-letter ISO code representing the country of this object. Must be in ISO 3166-1 alpha-2 form.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON UserAddress where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "userAddress")
instance ToJSON UserAddress where
  toJSON = genericToJSON (removeFieldLabelPrefix False "userAddress")

