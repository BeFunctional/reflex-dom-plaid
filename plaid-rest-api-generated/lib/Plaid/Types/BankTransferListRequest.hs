{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.BankTransferListRequest ( BankTransferListRequest (..)  ) where

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
import Plaid.Types.BankTransferDirection

-- | Defines the request schema for &#x60;/bank_transfer/list&#x60;
data BankTransferListRequest = BankTransferListRequest
  { bankTransferListRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , bankTransferListRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , bankTransferListRequestStartUnderscoredate :: Maybe UTCTime -- ^ The start datetime of bank transfers to list. This should be in RFC 3339 format (i.e. `2019-12-06T22:35:49Z`)
  , bankTransferListRequestEndUnderscoredate :: Maybe UTCTime -- ^ The end datetime of bank transfers to list. This should be in RFC 3339 format (i.e. `2019-12-06T22:35:49Z`)
  , bankTransferListRequestCount :: Maybe Int -- ^ The maximum number of bank transfers to return.
  , bankTransferListRequestOffset :: Maybe Int -- ^ The number of bank transfers to skip before returning results.
  , bankTransferListRequestOriginationUnderscoreaccountUnderscoreid :: Maybe Text -- ^ Filter bank transfers to only those originated through the specified origination account.
  , bankTransferListRequestDirection :: Maybe BankTransferDirection -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON BankTransferListRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "bankTransferListRequest")
instance ToJSON BankTransferListRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "bankTransferListRequest")

