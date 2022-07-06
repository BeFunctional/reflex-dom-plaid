{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.ScreeningHitData ( ScreeningHitData (..)  ) where

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
import Plaid.Types.ScreeningHitDateOfBirthItem
import Plaid.Types.ScreeningHitDocumentsItems
import Plaid.Types.GenericScreeningHitLocationItems
import Plaid.Types.ScreeningHitNamesItems

-- | Information associated with the watchlist hit
data ScreeningHitData = ScreeningHitData
  { screeningHitDataDatesUnderscoreofUnderscorebirth :: Maybe [ScreeningHitDateOfBirthItem] -- ^ Dates of birth associated with the watchlist hit
  , screeningHitDataDocuments :: Maybe [ScreeningHitDocumentsItems] -- ^ Documents associated with the watchlist hit
  , screeningHitDataLocations :: Maybe [GenericScreeningHitLocationItems] -- ^ Locations associated with the watchlist hit
  , screeningHitDataNames :: Maybe [ScreeningHitNamesItems] -- ^ Names associated with the watchlist hit
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ScreeningHitData where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "screeningHitData")
instance ToJSON ScreeningHitData where
  toJSON = genericToJSON (removeFieldLabelPrefix False "screeningHitData")

