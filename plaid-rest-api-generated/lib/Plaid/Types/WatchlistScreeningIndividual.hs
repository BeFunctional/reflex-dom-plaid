{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.WatchlistScreeningIndividual ( WatchlistScreeningIndividual (..)  ) where

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
import Plaid.Types.WatchlistScreeningSearchTerms
import Plaid.Types.WatchlistScreeningStatus
import Plaid.Types.WatchlistScreeningAuditTrail

-- | The screening object allows you to represent a customer in your system, update their profile, and search for them on various watchlists. Note: Rejected customers will not receive new hits, regardless of program configuration.
data WatchlistScreeningIndividual = WatchlistScreeningIndividual
  { watchlistScreeningIndividualId :: Text -- ^ ID of the associated screening.
  , watchlistScreeningIndividualSearchUnderscoreterms :: WatchlistScreeningSearchTerms -- ^ 
  , watchlistScreeningIndividualAssignee :: Text -- ^ 
  , watchlistScreeningIndividualStatus :: WatchlistScreeningStatus -- ^ 
  , watchlistScreeningIndividualClientUnderscoreuserUnderscoreid :: Text -- ^ 
  , watchlistScreeningIndividualAuditUnderscoretrail :: WatchlistScreeningAuditTrail -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON WatchlistScreeningIndividual where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "watchlistScreeningIndividual")
instance ToJSON WatchlistScreeningIndividual where
  toJSON = genericToJSON (removeFieldLabelPrefix False "watchlistScreeningIndividual")

