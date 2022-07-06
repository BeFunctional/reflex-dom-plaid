{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.TransferEventListRequest ( TransferEventListRequest (..)  ) where

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
import Plaid.Types.TransferEventListTransferType
import Plaid.Types.TransferEventType

-- | Defines the request schema for &#x60;/transfer/event/list&#x60;
data TransferEventListRequest = TransferEventListRequest
  { transferEventListRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , transferEventListRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , transferEventListRequestStartUnderscoredate :: Maybe UTCTime -- ^ The start datetime of transfers to list. This should be in RFC 3339 format (i.e. `2019-12-06T22:35:49Z`)
  , transferEventListRequestEndUnderscoredate :: Maybe UTCTime -- ^ The end datetime of transfers to list. This should be in RFC 3339 format (i.e. `2019-12-06T22:35:49Z`)
  , transferEventListRequestTransferUnderscoreid :: Maybe Text -- ^ Plaid’s unique identifier for a transfer.
  , transferEventListRequestAccountUnderscoreid :: Maybe Text -- ^ The account ID to get events for all transactions to/from an account.
  , transferEventListRequestTransferUnderscoretype :: Maybe TransferEventListTransferType -- ^ 
  , transferEventListRequestEventUnderscoretypes :: Maybe [TransferEventType] -- ^ Filter events by event type.
  , transferEventListRequestSweepUnderscoreid :: Maybe Text -- ^ Plaid’s unique identifier for a sweep.
  , transferEventListRequestCount :: Maybe Int -- ^ The maximum number of transfer events to return. If the number of events matching the above parameters is greater than `count`, the most recent events will be returned.
  , transferEventListRequestOffset :: Maybe Int -- ^ The offset into the list of transfer events. When `count`=25 and `offset`=0, the first 25 events will be returned. When `count`=25 and `offset`=25, the next 25 bank transfer events will be returned.
  , transferEventListRequestOriginationUnderscoreaccountUnderscoreid :: Maybe Text -- ^ The origination account ID to get events for transfers from a specific origination account.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferEventListRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferEventListRequest")
instance ToJSON TransferEventListRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferEventListRequest")

