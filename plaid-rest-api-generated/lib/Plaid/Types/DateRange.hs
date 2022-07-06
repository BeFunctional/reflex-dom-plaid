{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.DateRange ( DateRange (..)  ) where

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

-- | A date range with a start and end date
data DateRange = DateRange
  { dateRangeBeginning :: Day -- ^ A date in the format YYYY-MM-DD (RFC 3339 Section 5.6).
  , dateRangeEnding :: Day -- ^ A date in the format YYYY-MM-DD (RFC 3339 Section 5.6).
  } deriving (Show, Eq, Generic, Data)

instance FromJSON DateRange where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "dateRange")
instance ToJSON DateRange where
  toJSON = genericToJSON (removeFieldLabelPrefix False "dateRange")

