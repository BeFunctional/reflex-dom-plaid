{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.BankTransferEventListRequest ( BankTransferEventListRequest (..)  ) where

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
import Plaid.Types.BankTransferEventListBankTransferType
import Plaid.Types.BankTransferEventType
import Plaid.Types.BankTransferEventListDirection

-- | Defines the request schema for &#x60;/bank_transfer/event/list&#x60;
data BankTransferEventListRequest = BankTransferEventListRequest
  { bankTransferEventListRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , bankTransferEventListRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , bankTransferEventListRequestStartUnderscoredate :: Maybe UTCTime -- ^ The start datetime of bank transfers to list. This should be in RFC 3339 format (i.e. `2019-12-06T22:35:49Z`)
  , bankTransferEventListRequestEndUnderscoredate :: Maybe UTCTime -- ^ The end datetime of bank transfers to list. This should be in RFC 3339 format (i.e. `2019-12-06T22:35:49Z`)
  , bankTransferEventListRequestBankUnderscoretransferUnderscoreid :: Maybe Text -- ^ Plaid’s unique identifier for a bank transfer.
  , bankTransferEventListRequestAccountUnderscoreid :: Maybe Text -- ^ The account ID to get events for all transactions to/from an account.
  , bankTransferEventListRequestBankUnderscoretransferUnderscoretype :: Maybe BankTransferEventListBankTransferType -- ^ 
  , bankTransferEventListRequestEventUnderscoretypes :: Maybe [BankTransferEventType] -- ^ Filter events by event type.
  , bankTransferEventListRequestCount :: Maybe Int -- ^ The maximum number of bank transfer events to return. If the number of events matching the above parameters is greater than `count`, the most recent events will be returned.
  , bankTransferEventListRequestOffset :: Maybe Int -- ^ The offset into the list of bank transfer events. When `count`=25 and `offset`=0, the first 25 events will be returned. When `count`=25 and `offset`=25, the next 25 bank transfer events will be returned.
  , bankTransferEventListRequestOriginationUnderscoreaccountUnderscoreid :: Maybe Text -- ^ The origination account ID to get events for transfers from a specific origination account.
  , bankTransferEventListRequestDirection :: Maybe BankTransferEventListDirection -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON BankTransferEventListRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "bankTransferEventListRequest")
instance ToJSON BankTransferEventListRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "bankTransferEventListRequest")

