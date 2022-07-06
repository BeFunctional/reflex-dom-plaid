
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.CauseAllOf ( CauseAllOf (..)  ) where

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

-- | 
data CauseAllOf = CauseAllOf
  { causeAllOfItemUnderscoreid :: Maybe Text -- ^ The `item_id` of the Item associated with this webhook, warning, or error
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CauseAllOf where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "causeAllOf")
instance ToJSON CauseAllOf where
  toJSON = genericToJSON (removeFieldLabelPrefix False "causeAllOf")

