{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.EntityScreeningHitNames ( EntityScreeningHitNames (..)  ) where

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
import Plaid.Types.WeakAliasDetermination

-- | Name information for the associated entity watchlist hit
data EntityScreeningHitNames = EntityScreeningHitNames
  { entityScreeningHitNamesFull :: Text -- ^ The full name of the entity.
  , entityScreeningHitNamesIsUnderscoreprimary :: Bool -- ^ Primary names are those most commonly used to refer to this entity. Only one name will ever be marked as primary.
  , entityScreeningHitNamesWeakUnderscorealiasUnderscoredetermination :: WeakAliasDetermination -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON EntityScreeningHitNames where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "entityScreeningHitNames")
instance ToJSON EntityScreeningHitNames where
  toJSON = genericToJSON (removeFieldLabelPrefix False "entityScreeningHitNames")

