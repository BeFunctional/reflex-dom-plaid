{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}

{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.AssetReportUser ( AssetReportUser (..)  ) where

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

-- | The user object allows you to provide additional information about the user to be appended to the Asset Report. All fields are optional. The &#x60;first_name&#x60;, &#x60;last_name&#x60;, and &#x60;ssn&#x60; fields are required if you would like the Report to be eligible for Fannie Mae’s Day 1 Certainty™ program.
newtype AssetReportUser = AssetReportUser { unAssetReportUser :: Map.Map Text Value }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)


