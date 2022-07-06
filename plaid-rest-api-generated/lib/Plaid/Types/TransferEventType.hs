
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.TransferEventType ( TransferEventType (..)  ) where

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

-- | The type of event that this transfer represents.  &#x60;pending&#x60;: A new transfer was created; it is in the pending state.  &#x60;cancelled&#x60;: The transfer was cancelled by the client.  &#x60;failed&#x60;: The transfer failed, no funds were moved.  &#x60;posted&#x60;: The transfer has been successfully submitted to the payment network.  &#x60;returned&#x60;: A posted transfer was returned.  &#x60;swept&#x60;: The transfer was swept to / from the sweep account.  &#x60;return_swept&#x60;: Due to the transfer being returned, funds were pulled from or pushed back to the sweep account.
data TransferEventType = TransferEventType
  {
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferEventType where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferEventType")
instance ToJSON TransferEventType where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferEventType")

