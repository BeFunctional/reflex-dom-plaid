
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.WeakAliasDetermination ( WeakAliasDetermination (..)  ) where

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

-- | Names that are explicitly marked as low quality either by their &#x60;source&#x60; list, or by &#x60;plaid&#x60; by a series of additional checks done by Plaid. Plaid does not ever surface a hit as a result of a weak name alone. If a name has no quality issues, this value will be &#x60;none&#x60;.
data WeakAliasDetermination = WeakAliasDetermination
  {
  } deriving (Show, Eq, Generic, Data)

instance FromJSON WeakAliasDetermination where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "weakAliasDetermination")
instance ToJSON WeakAliasDetermination where
  toJSON = genericToJSON (removeFieldLabelPrefix False "weakAliasDetermination")

