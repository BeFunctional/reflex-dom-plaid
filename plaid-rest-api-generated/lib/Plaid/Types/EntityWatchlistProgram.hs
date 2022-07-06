{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.EntityWatchlistProgram ( EntityWatchlistProgram (..)  ) where

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
import Plaid.Types.EntityWatchlistCode
import Plaid.Types.ProgramNameSensitivity
import Plaid.Types.WatchlistScreeningAuditTrail

-- | A program that configures the active lists, search parameters, and other behavior for initial and ongoing screening of entities.
data EntityWatchlistProgram = EntityWatchlistProgram
  { entityWatchlistProgramId :: Text -- ^ ID of the associated entity program.
  , entityWatchlistProgramCreatedUnderscoreat :: UTCTime -- ^ An ISO8601 formatted timestamp.
  , entityWatchlistProgramIsUnderscorerescanningUnderscoreenabled :: Bool -- ^ Indicator specifying whether the program is enabled and will perform daily rescans.
  , entityWatchlistProgramListsUnderscoreenabled :: [EntityWatchlistCode] -- ^ Watchlists enabled for the associated program
  , entityWatchlistProgramName :: Text -- ^ A name for the entity program to define its purpose. For example, \"High Risk Organizations\" or \"Applicants\".
  , entityWatchlistProgramNameUnderscoresensitivity :: ProgramNameSensitivity -- ^ 
  , entityWatchlistProgramAuditUnderscoretrail :: WatchlistScreeningAuditTrail -- ^ 
  , entityWatchlistProgramIsUnderscorearchived :: Bool -- ^ Archived programs are read-only and cannot screen new customers nor participate in ongoing monitoring.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON EntityWatchlistProgram where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "entityWatchlistProgram")
instance ToJSON EntityWatchlistProgram where
  toJSON = genericToJSON (removeFieldLabelPrefix False "entityWatchlistProgram")

