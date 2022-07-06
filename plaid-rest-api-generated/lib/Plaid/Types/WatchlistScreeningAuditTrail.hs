{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.WatchlistScreeningAuditTrail ( WatchlistScreeningAuditTrail (..)  ) where

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
import Plaid.Types.Source

-- | Information about the last change made to the parent object specifying what caused the change as well as when it occurred.
data WatchlistScreeningAuditTrail = WatchlistScreeningAuditTrail
  { watchlistScreeningAuditTrailSource :: Source -- ^ 
  , watchlistScreeningAuditTrailDashboardUnderscoreuserUnderscoreid :: Text -- ^ 
  , watchlistScreeningAuditTrailTimestamp :: UTCTime -- ^ An ISO8601 formatted timestamp.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON WatchlistScreeningAuditTrail where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "watchlistScreeningAuditTrail")
instance ToJSON WatchlistScreeningAuditTrail where
  toJSON = genericToJSON (removeFieldLabelPrefix False "watchlistScreeningAuditTrail")

