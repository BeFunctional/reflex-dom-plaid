
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.SignalDevice ( SignalDevice (..)  ) where

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

-- | Details about the end user&#39;s device
data SignalDevice = SignalDevice
  { signalDeviceIpUnderscoreaddress :: Maybe Text -- ^ The IP address of the device that initiated the transaction
  , signalDeviceUserUnderscoreagent :: Maybe Text -- ^ The user agent of the device that initiated the transaction (e.g. \"Mozilla/5.0\")
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SignalDevice where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "signalDevice")
instance ToJSON SignalDevice where
  toJSON = genericToJSON (removeFieldLabelPrefix False "signalDevice")

