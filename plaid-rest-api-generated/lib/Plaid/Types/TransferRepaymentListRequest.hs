{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.TransferRepaymentListRequest ( TransferRepaymentListRequest (..)  ) where

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

-- | Defines the request schema for &#x60;/transfer/repayment/list&#x60;
data TransferRepaymentListRequest = TransferRepaymentListRequest
  { transferRepaymentListRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , transferRepaymentListRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , transferRepaymentListRequestStartUnderscoredate :: Maybe UTCTime -- ^ The start datetime of repayments to return (RFC 3339 format).
  , transferRepaymentListRequestEndUnderscoredate :: Maybe UTCTime -- ^ The end datetime of repayments to return (RFC 3339 format).
  , transferRepaymentListRequestCount :: Maybe Int -- ^ The maximum number of repayments to return.
  , transferRepaymentListRequestOffset :: Maybe Int -- ^ The number of repayments to skip before returning results.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferRepaymentListRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferRepaymentListRequest")
instance ToJSON TransferRepaymentListRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferRepaymentListRequest")

