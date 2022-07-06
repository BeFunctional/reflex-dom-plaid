
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.KYCCheckNameSummary ( KYCCheckNameSummary (..)  ) where

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
import Plaid.Types.MatchSummaryCode

-- | Result summary object specifying how the &#x60;name&#x60; field matched.
data KYCCheckNameSummary = KYCCheckNameSummary
  { kYCCheckNameSummarySummary :: MatchSummaryCode -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON KYCCheckNameSummary where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kYCCheckNameSummary")
instance ToJSON KYCCheckNameSummary where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kYCCheckNameSummary")

