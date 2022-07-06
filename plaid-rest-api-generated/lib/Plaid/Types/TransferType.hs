{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.TransferType ( TransferType (..)  ) where

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

-- | The type of transfer. This will be either &#x60;debit&#x60; or &#x60;credit&#x60;.  A &#x60;debit&#x60; indicates a transfer of money into the origination account; a &#x60;credit&#x60; indicates a transfer of money out of the origination account.
data TransferType = TransferType
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferType where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferType")
instance ToJSON TransferType where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferType")
