
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.ListEntityWatchlistScreeningRequest ( ListEntityWatchlistScreeningRequest (..)  ) where

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

-- | Request input for listing entity watchlist screenings
data ListEntityWatchlistScreeningRequest = ListEntityWatchlistScreeningRequest
  { listEntityWatchlistScreeningRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , listEntityWatchlistScreeningRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , listEntityWatchlistScreeningRequestEntityUnderscorewatchlistUnderscoreprogramUnderscoreid :: Text -- ^ ID of the associated entity program.
  , listEntityWatchlistScreeningRequestClientUnderscoreuserUnderscoreid :: Maybe Text -- ^ 
  , listEntityWatchlistScreeningRequestStatus :: Maybe WatchlistScreeningStatus -- ^ 
  , listEntityWatchlistScreeningRequestAssignee :: Maybe Text -- ^ 
  , listEntityWatchlistScreeningRequestCursor :: Maybe Text -- ^ An identifier that determines which page of results you receive.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ListEntityWatchlistScreeningRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "listEntityWatchlistScreeningRequest")
instance ToJSON ListEntityWatchlistScreeningRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "listEntityWatchlistScreeningRequest")

