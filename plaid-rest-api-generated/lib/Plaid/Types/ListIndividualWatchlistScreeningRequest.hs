
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.ListIndividualWatchlistScreeningRequest ( ListIndividualWatchlistScreeningRequest (..)  ) where

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
import Plaid.Types.WatchlistScreeningStatus

-- | Request input for listinging watchlist screenings for individuals
data ListIndividualWatchlistScreeningRequest = ListIndividualWatchlistScreeningRequest
  { listIndividualWatchlistScreeningRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , listIndividualWatchlistScreeningRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , listIndividualWatchlistScreeningRequestWatchlistUnderscoreprogramUnderscoreid :: Text -- ^ ID of the associated program.
  , listIndividualWatchlistScreeningRequestClientUnderscoreuserUnderscoreid :: Maybe Text -- ^ 
  , listIndividualWatchlistScreeningRequestStatus :: Maybe WatchlistScreeningStatus -- ^ 
  , listIndividualWatchlistScreeningRequestAssignee :: Maybe Text -- ^ 
  , listIndividualWatchlistScreeningRequestCursor :: Maybe Text -- ^ An identifier that determines which page of results you receive.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ListIndividualWatchlistScreeningRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "listIndividualWatchlistScreeningRequest")
instance ToJSON ListIndividualWatchlistScreeningRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "listIndividualWatchlistScreeningRequest")

