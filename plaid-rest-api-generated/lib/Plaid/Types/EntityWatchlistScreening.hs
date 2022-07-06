{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.EntityWatchlistScreening ( EntityWatchlistScreening (..)  ) where

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
import Plaid.Types.EntityWatchlistScreeningSearchTerms
import Plaid.Types.WatchlistScreeningStatus
import Plaid.Types.WatchlistScreeningAuditTrail

-- | The entity screening object allows you to represent an entity in your system, update its profile, and search for it on various watchlists. Note: Rejected entity screenings will not receive new hits, regardless of entity program configuration.
data EntityWatchlistScreening = EntityWatchlistScreening
  { entityWatchlistScreeningId :: Text -- ^ ID of the associated entity screening.
  , entityWatchlistScreeningSearchUnderscoreterms :: EntityWatchlistScreeningSearchTerms -- ^ 
  , entityWatchlistScreeningAssignee :: Text -- ^ 
  , entityWatchlistScreeningStatus :: WatchlistScreeningStatus -- ^ 
  , entityWatchlistScreeningClientUnderscoreuserUnderscoreid :: Text -- ^ 
  , entityWatchlistScreeningAuditUnderscoretrail :: WatchlistScreeningAuditTrail -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON EntityWatchlistScreening where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "entityWatchlistScreening")
instance ToJSON EntityWatchlistScreening where
  toJSON = genericToJSON (removeFieldLabelPrefix False "entityWatchlistScreening")

