
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.IssuingCountry ( IssuingCountry (..)  ) where

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

-- | A binary match indicator specifying whether the country that issued the provided document matches the country that the user separately provided to Plaid.  Note: You can configure whether a &#x60;no_match&#x60; on &#x60;issuing_country&#x60; fails the &#x60;documentary_verification&#x60; by editing your Plaid Template.
data IssuingCountry = IssuingCountry
  {
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IssuingCountry where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "issuingCountry")
instance ToJSON IssuingCountry where
  toJSON = genericToJSON (removeFieldLabelPrefix False "issuingCountry")

