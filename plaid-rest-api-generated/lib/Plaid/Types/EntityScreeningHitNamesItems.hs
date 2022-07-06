
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.EntityScreeningHitNamesItems ( EntityScreeningHitNamesItems (..)  ) where

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
import Plaid.Types.EntityScreeningHitNames

-- | Analyzed names for the associated hit
data EntityScreeningHitNamesItems = EntityScreeningHitNamesItems
  { entityScreeningHitNamesItemsAnalysis :: Maybe MatchSummary -- ^ 
  , entityScreeningHitNamesItemsData :: Maybe EntityScreeningHitNames -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON EntityScreeningHitNamesItems where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "entityScreeningHitNamesItems")
instance ToJSON EntityScreeningHitNamesItems where
  toJSON = genericToJSON (removeFieldLabelPrefix False "entityScreeningHitNamesItems")

