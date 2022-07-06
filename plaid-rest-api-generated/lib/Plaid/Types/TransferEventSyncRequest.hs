{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}

{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.TransferEventSyncRequest ( TransferEventSyncRequest (..)  ) where

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

-- | Defines the request schema for &#x60;/transfer/event/sync&#x60;
data TransferEventSyncRequest = TransferEventSyncRequest
  { transferEventSyncRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , transferEventSyncRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , transferEventSyncRequestAfterUnderscoreid :: Int -- ^ The latest (largest) `event_id` fetched via the sync endpoint, or 0 initially.
  , transferEventSyncRequestCount :: Maybe Int -- ^ The maximum number of transfer events to return.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferEventSyncRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferEventSyncRequest")
instance ToJSON TransferEventSyncRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferEventSyncRequest")

