{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.WatchlistScreeningHitLocations ( WatchlistScreeningHitLocations (..)  ) where

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

-- | Location information for the associated individual watchlist hit
data WatchlistScreeningHitLocations = WatchlistScreeningHitLocations
  { watchlistScreeningHitLocationsFull :: Text -- ^ The full location string, potentially including elements like street, city, postal codes and country codes. Note that this is not necessarily a complete or well-formatted address.
  , watchlistScreeningHitLocationsCountry :: Text -- ^ Valid, capitalized, two-letter ISO code representing the country of this object. Must be in ISO 3166-1 alpha-2 form.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON WatchlistScreeningHitLocations where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "watchlistScreeningHitLocations")
instance ToJSON WatchlistScreeningHitLocations where
  toJSON = genericToJSON (removeFieldLabelPrefix False "watchlistScreeningHitLocations")

