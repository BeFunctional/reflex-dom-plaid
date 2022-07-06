{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.MatchSummaryCode ( MatchSummaryCode (..)  ) where

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

-- | An enum indicating the match type between data provided by user and data checked against an external data source.   &#x60;match&#x60; indicates that the provided input data was a strong match against external data.  &#x60;partial_match&#x60; indicates the data approximately matched against external data. For example, \&quot;Knope\&quot; vs. \&quot;Knope-Wyatt\&quot; for last name.  &#x60;no_match&#x60; indicates that Plaid was able to perform a check against an external data source and it did not match the provided input data.  &#x60;no_data&#x60; indicates that Plaid was unable to find external data to compare against the provided input data.  &#x60;no_input&#x60; indicates that Plaid was unable to perform a check because no information was provided for this field by the end user.
data MatchSummaryCode = MatchSummaryCode
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON MatchSummaryCode where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "matchSummaryCode")
instance ToJSON MatchSummaryCode where
  toJSON = genericToJSON (removeFieldLabelPrefix False "matchSummaryCode")

