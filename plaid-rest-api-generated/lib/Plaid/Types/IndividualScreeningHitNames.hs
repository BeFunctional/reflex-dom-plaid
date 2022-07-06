
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.IndividualScreeningHitNames ( IndividualScreeningHitNames (..)  ) where

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

-- | Name information for the associated individual watchlist hit
data IndividualScreeningHitNames = IndividualScreeningHitNames
  { individualScreeningHitNamesFull :: Text -- ^ The full name of the individual, including all parts.
  , individualScreeningHitNamesIsUnderscoreprimary :: Bool -- ^ Primary names are those most commonly used to refer to this person. Only one name will ever be marked as primary.
  , individualScreeningHitNamesWeakUnderscorealiasUnderscoredetermination :: WeakAliasDetermination -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IndividualScreeningHitNames where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "individualScreeningHitNames")
instance ToJSON IndividualScreeningHitNames where
  toJSON = genericToJSON (removeFieldLabelPrefix False "individualScreeningHitNames")

