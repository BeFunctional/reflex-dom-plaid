{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.TransferIntentCreateMode ( TransferIntentCreateMode (..)  ) where

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

-- | The direction of the flow of transfer funds.  - &#x60;PAYMENT&#x60; – Transfers funds from an end user&#39;s account to your business account.  - &#x60;DISBURSEMENT&#x60; – Transfers funds from your business account to an end user&#39;s account.
data TransferIntentCreateMode = TransferIntentCreateMode
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferIntentCreateMode where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferIntentCreateMode")
instance ToJSON TransferIntentCreateMode where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferIntentCreateMode")

