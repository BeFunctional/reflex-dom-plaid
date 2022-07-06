{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.UpdateEntityScreeningRequest ( UpdateEntityScreeningRequest (..)  ) where

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
import Plaid.Types.UpdateEntityScreeningRequestSearchTerms
import Plaid.Types.WatchlistScreeningStatus
import Plaid.Types.UpdateEntityScreeningRequestResettableField

-- | Request input for editing an entity watchlist screening
data UpdateEntityScreeningRequest = UpdateEntityScreeningRequest
  { updateEntityScreeningRequestEntityUnderscorewatchlistUnderscorescreeningUnderscoreid :: Text -- ^ ID of the associated entity screening.
  , updateEntityScreeningRequestSearchUnderscoreterms :: Maybe UpdateEntityScreeningRequestSearchTerms -- ^ 
  , updateEntityScreeningRequestAssignee :: Maybe Text -- ^ 
  , updateEntityScreeningRequestStatus :: Maybe WatchlistScreeningStatus -- ^ 
  , updateEntityScreeningRequestClientUnderscoreuserUnderscoreid :: Maybe Text -- ^ 
  , updateEntityScreeningRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , updateEntityScreeningRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , updateEntityScreeningRequestResetUnderscorefields :: Maybe [UpdateEntityScreeningRequestResettableField] -- ^ A list of fields to reset back to null
  } deriving (Show, Eq, Generic, Data)

instance FromJSON UpdateEntityScreeningRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "updateEntityScreeningRequest")
instance ToJSON UpdateEntityScreeningRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "updateEntityScreeningRequest")
