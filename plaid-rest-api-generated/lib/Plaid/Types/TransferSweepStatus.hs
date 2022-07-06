{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.TransferSweepStatus ( TransferSweepStatus (..)  ) where

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

-- | The status of the sweep for the transfer. &#x60;unswept&#x60;: The transfer hasn&#39;t been swept yet. &#x60;swept&#x60;: The transfer was swept to the sweep account. &#x60;return_swept&#x60;: The transfer was returned, funds were pulled back or pushed back to the sweep account. &#x60;null&#x60;: The transfer will never be swept (e.g. if the transfer is cancelled or returned before being swept)
data TransferSweepStatus = TransferSweepStatus
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferSweepStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferSweepStatus")
instance ToJSON TransferSweepStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferSweepStatus")

