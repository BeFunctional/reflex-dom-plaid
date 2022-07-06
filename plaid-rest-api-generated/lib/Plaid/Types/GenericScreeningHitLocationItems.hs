
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.GenericScreeningHitLocationItems ( GenericScreeningHitLocationItems (..)  ) where

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
import Plaid.Types.MatchSummary
import Plaid.Types.WatchlistScreeningHitLocations

-- | Analyzed location information for the associated hit
data GenericScreeningHitLocationItems = GenericScreeningHitLocationItems
  { genericScreeningHitLocationItemsAnalysis :: Maybe MatchSummary -- ^ 
  , genericScreeningHitLocationItemsData :: Maybe WatchlistScreeningHitLocations -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON GenericScreeningHitLocationItems where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "genericScreeningHitLocationItems")
instance ToJSON GenericScreeningHitLocationItems where
  toJSON = genericToJSON (removeFieldLabelPrefix False "genericScreeningHitLocationItems")

