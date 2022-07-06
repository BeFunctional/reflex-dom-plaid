
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.IdentityUpdateTypes ( IdentityUpdateTypes (..)  ) where

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

-- | The possible types of identity data that may have changed.
data IdentityUpdateTypes = IdentityUpdateTypes
  {
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IdentityUpdateTypes where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "identityUpdateTypes")
instance ToJSON IdentityUpdateTypes where
  toJSON = genericToJSON (removeFieldLabelPrefix False "identityUpdateTypes")

