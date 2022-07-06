
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.IndividualWatchlistProgram ( IndividualWatchlistProgram (..)  ) where

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
import Plaid.Types.IndividualWatchlistCode
import Plaid.Types.ProgramNameSensitivity
import Plaid.Types.WatchlistScreeningAuditTrail

-- | A program that configures the active lists, search parameters, and other behavior for initial and ongoing screening of individuals.
data IndividualWatchlistProgram = IndividualWatchlistProgram
  { individualWatchlistProgramId :: Text -- ^ ID of the associated program.
  , individualWatchlistProgramCreatedUnderscoreat :: UTCTime -- ^ An ISO8601 formatted timestamp.
  , individualWatchlistProgramIsUnderscorerescanningUnderscoreenabled :: Bool -- ^ Indicator specifying whether the program is enabled and will perform daily rescans.
  , individualWatchlistProgramListsUnderscoreenabled :: [IndividualWatchlistCode] -- ^ Watchlists enabled for the associated program
  , individualWatchlistProgramName :: Text -- ^ A name for the program to define its purpose. For example, \"High Risk Individuals\", \"US Cardholders\", or \"Applicants\".
  , individualWatchlistProgramNameUnderscoresensitivity :: ProgramNameSensitivity -- ^ 
  , individualWatchlistProgramAuditUnderscoretrail :: WatchlistScreeningAuditTrail -- ^ 
  , individualWatchlistProgramIsUnderscorearchived :: Bool -- ^ Archived programs are read-only and cannot screen new customers nor participate in ongoing monitoring.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IndividualWatchlistProgram where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "individualWatchlistProgram")
instance ToJSON IndividualWatchlistProgram where
  toJSON = genericToJSON (removeFieldLabelPrefix False "individualWatchlistProgram")

