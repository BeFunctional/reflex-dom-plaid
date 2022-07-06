{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.EntityWatchlistScreeningReview ( EntityWatchlistScreeningReview (..)  ) where

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
import Plaid.Types.WatchlistScreeningAuditTrail

-- | A review submitted by a team member for an entity watchlist screening. A review can be either a comment on the current screening state, actions taken against hits attached to the watchlist screening, or both.
data EntityWatchlistScreeningReview = EntityWatchlistScreeningReview
  { entityWatchlistScreeningReviewId :: Text -- ^ ID of the associated entity review.
  , entityWatchlistScreeningReviewConfirmedUnderscorehits :: [Text] -- ^ Hits marked as a true positive after thorough manual review. These hits will never recur or be updated once dismissed. In most cases, confirmed hits indicate that the customer should be rejected.
  , entityWatchlistScreeningReviewDismissedUnderscorehits :: [Text] -- ^ Hits marked as a false positive after thorough manual review. These hits will never recur or be updated once dismissed.
  , entityWatchlistScreeningReviewComment :: Text -- ^ A comment submitted by a team member as part of reviewing a watchlist screening.
  , entityWatchlistScreeningReviewAuditUnderscoretrail :: WatchlistScreeningAuditTrail -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON EntityWatchlistScreeningReview where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "entityWatchlistScreeningReview")
instance ToJSON EntityWatchlistScreeningReview where
  toJSON = genericToJSON (removeFieldLabelPrefix False "entityWatchlistScreeningReview")

