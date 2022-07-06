
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.TransferListRequest ( TransferListRequest (..)  ) where

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

-- | Defines the request schema for &#x60;/transfer/list&#x60;
data TransferListRequest = TransferListRequest
  { transferListRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , transferListRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , transferListRequestStartUnderscoredate :: Maybe UTCTime -- ^ The start datetime of transfers to list. This should be in RFC 3339 format (i.e. `2019-12-06T22:35:49Z`)
  , transferListRequestEndUnderscoredate :: Maybe UTCTime -- ^ The end datetime of transfers to list. This should be in RFC 3339 format (i.e. `2019-12-06T22:35:49Z`)
  , transferListRequestCount :: Maybe Int -- ^ The maximum number of transfers to return.
  , transferListRequestOffset :: Maybe Int -- ^ The number of transfers to skip before returning results.
  , transferListRequestOriginationUnderscoreaccountUnderscoreid :: Maybe Text -- ^ Filter transfers to only those originated through the specified origination account.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferListRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferListRequest")
instance ToJSON TransferListRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferListRequest")

