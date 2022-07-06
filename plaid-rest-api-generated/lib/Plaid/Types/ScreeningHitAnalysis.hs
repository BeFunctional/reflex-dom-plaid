{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.ScreeningHitAnalysis ( ScreeningHitAnalysis (..)  ) where

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
import Plaid.Types.MatchSummaryCode
import Plaid.Types.MatchSummaryCode
import Plaid.Types.MatchSummaryCode

-- | Analysis information describing why a screening hit matched the provided user information
data ScreeningHitAnalysis = ScreeningHitAnalysis
  { screeningHitAnalysisDatesUnderscoreofUnderscorebirth :: Maybe MatchSummaryCode -- ^ 
  , screeningHitAnalysisDocuments :: Maybe MatchSummaryCode -- ^ 
  , screeningHitAnalysisLocations :: Maybe MatchSummaryCode -- ^ 
  , screeningHitAnalysisNames :: Maybe MatchSummaryCode -- ^ 
  , screeningHitAnalysisSearchUnderscoretermsUnderscoreversion :: Double -- ^ The version of the screening's `search_terms` that were compared when the screening hit was added. screening hits are immutable once they have been reviewed. If changes are detected due to updates to the screening's `search_terms`, the associated program, or the list's source data prior to review, the screening hit will be updated to reflect those changes.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ScreeningHitAnalysis where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "screeningHitAnalysis")
instance ToJSON ScreeningHitAnalysis where
  toJSON = genericToJSON (removeFieldLabelPrefix False "screeningHitAnalysis")

