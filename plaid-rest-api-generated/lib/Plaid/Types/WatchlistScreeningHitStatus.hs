{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.WatchlistScreeningHitStatus ( WatchlistScreeningHitStatus (..)  ) where

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

-- | The current state of review. All watchlist screening hits begin in a &#x60;pending_review&#x60; state but can be changed by creating a review. When a hit is in the &#x60;pending_review&#x60; state, it will always show the latest version of the watchlist data Plaid has available and be compared against the latest customer information saved in the watchlist screening. Once a hit has been marked as &#x60;confirmed&#x60; or &#x60;dismissed&#x60; it will no longer be updated so that the state is as it was when the review was first conducted.
data WatchlistScreeningHitStatus = WatchlistScreeningHitStatus
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON WatchlistScreeningHitStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "watchlistScreeningHitStatus")
instance ToJSON WatchlistScreeningHitStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "watchlistScreeningHitStatus")

