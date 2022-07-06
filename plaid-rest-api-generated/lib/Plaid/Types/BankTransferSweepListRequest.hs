{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.BankTransferSweepListRequest ( BankTransferSweepListRequest (..)  ) where

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

-- | BankTransferSweepListRequest defines the request schema for &#x60;/bank_transfer/sweep/list&#x60;
data BankTransferSweepListRequest = BankTransferSweepListRequest
  { bankTransferSweepListRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , bankTransferSweepListRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , bankTransferSweepListRequestOriginationUnderscoreaccountUnderscoreid :: Maybe Text -- ^ If multiple origination accounts are available, `origination_account_id` must be used to specify the account that the sweeps belong to.
  , bankTransferSweepListRequestStartUnderscoretime :: Maybe UTCTime -- ^ The start datetime of sweeps to return (RFC 3339 format).
  , bankTransferSweepListRequestEndUnderscoretime :: Maybe UTCTime -- ^ The end datetime of sweeps to return (RFC 3339 format).
  , bankTransferSweepListRequestCount :: Maybe Int -- ^ The maximum number of sweeps to return.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON BankTransferSweepListRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "bankTransferSweepListRequest")
instance ToJSON BankTransferSweepListRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "bankTransferSweepListRequest")

