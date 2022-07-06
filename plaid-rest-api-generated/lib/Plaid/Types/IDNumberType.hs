
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.IDNumberType ( IDNumberType (..)  ) where

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

-- | A globally unique and human readable ID type, specific to the country and document category. For more context on this field, see [Hybrid Input Validation](https://cognitohq.com/docs/flow/flow-hybrid-input-validation)
data IDNumberType = IDNumberType
  {
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IDNumberType where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "iDNumberType")
instance ToJSON IDNumberType where
  toJSON = genericToJSON (removeFieldLabelPrefix False "iDNumberType")

