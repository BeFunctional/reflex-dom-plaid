
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.IncomeBreakdownType ( IncomeBreakdownType (..)  ) where

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

-- | The type of income. Possible values include:   &#x60;\&quot;regular\&quot;&#x60;: regular income   &#x60;\&quot;overtime\&quot;&#x60;: overtime income   &#x60;\&quot;bonus\&quot;&#x60;: bonus income
data IncomeBreakdownType = IncomeBreakdownType
  {
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IncomeBreakdownType where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "incomeBreakdownType")
instance ToJSON IncomeBreakdownType where
  toJSON = genericToJSON (removeFieldLabelPrefix False "incomeBreakdownType")

