{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.TransactionsSyncRequest ( TransactionsSyncRequest (..)  ) where

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
import Plaid.Types.TransactionsSyncRequestOptions

-- | TransactionsSyncRequest defines the request schema for &#x60;/transactions/sync&#x60;
data TransactionsSyncRequest = TransactionsSyncRequest
  { transactionsSyncRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , transactionsSyncRequestAccessUnderscoretoken :: Text -- ^ The access token associated with the Item data is being requested for.
  , transactionsSyncRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , transactionsSyncRequestCursor :: Maybe Text -- ^ The cursor value represents the last update requested. Providing it will cause the response to only return changes after this update. If omitted, the entire history of updates will be returned, starting with the first-added transactions on the item. Note: The upper-bound length of this cursor is 256 characters of base64.
  , transactionsSyncRequestCount :: Maybe Int -- ^ The number of transaction updates to fetch.
  , transactionsSyncRequestOptions :: Maybe TransactionsSyncRequestOptions -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransactionsSyncRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transactionsSyncRequest")
instance ToJSON TransactionsSyncRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transactionsSyncRequest")

