
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.RelayEvent ( RelayEvent (..)  ) where

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

-- | The webhook code indicating which endpoint was called. It can be one of &#x60;GET_CALLED&#x60;, &#x60;REFRESH_CALLED&#x60; or &#x60;AUDIT_COPY_CREATE_CALLED&#x60;.
data RelayEvent = RelayEvent
  {
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RelayEvent where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "relayEvent")
instance ToJSON RelayEvent where
  toJSON = genericToJSON (removeFieldLabelPrefix False "relayEvent")

