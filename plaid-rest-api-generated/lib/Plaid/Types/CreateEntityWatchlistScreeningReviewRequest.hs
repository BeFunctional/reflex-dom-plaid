
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.CreateEntityWatchlistScreeningReviewRequest ( CreateEntityWatchlistScreeningReviewRequest (..)  ) where

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

-- | Request input for creating a review for an entity screening
data CreateEntityWatchlistScreeningReviewRequest = CreateEntityWatchlistScreeningReviewRequest
  { createEntityWatchlistScreeningReviewRequestConfirmedUnderscorehits :: [Text] -- ^ Hits to mark as a true positive after thorough manual review. These hits will never recur or be updated once dismissed. In most cases, confirmed hits indicate that the customer should be rejected.
  , createEntityWatchlistScreeningReviewRequestDismissedUnderscorehits :: [Text] -- ^ Hits to mark as a false positive after thorough manual review. These hits will never recur or be updated once dismissed.
  , createEntityWatchlistScreeningReviewRequestComment :: Maybe Text -- ^ A comment submitted by a team member as part of reviewing a watchlist screening.
  , createEntityWatchlistScreeningReviewRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , createEntityWatchlistScreeningReviewRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , createEntityWatchlistScreeningReviewRequestEntityUnderscorewatchlistUnderscorescreeningUnderscoreid :: Text -- ^ ID of the associated entity screening.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreateEntityWatchlistScreeningReviewRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "createEntityWatchlistScreeningReviewRequest")
instance ToJSON CreateEntityWatchlistScreeningReviewRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "createEntityWatchlistScreeningReviewRequest")

