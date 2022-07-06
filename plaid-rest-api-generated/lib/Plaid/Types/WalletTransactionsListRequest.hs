{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.WalletTransactionsListRequest ( WalletTransactionsListRequest (..)  ) where

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

-- | WalletTransactionsListRequest defines the request schema for &#x60;/wallet/transactions/list&#x60;
data WalletTransactionsListRequest = WalletTransactionsListRequest
  { walletTransactionsListRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , walletTransactionsListRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , walletTransactionsListRequestWalletUnderscoreid :: Text -- ^ The ID of the e-wallet to fetch transactions from
  , walletTransactionsListRequestCursor :: Maybe Text -- ^ A base64 value representing the latest transaction that has already been requested. Set this to `next_cursor` received from the previous `/wallet/transactions/list` request. If provided, the response will only contain transactions created before that transaction. If omitted, the response will contain transactions starting from the most recent, and in descending order by the `created_at` time.
  , walletTransactionsListRequestCount :: Maybe Int -- ^ The number of transactions to fetch
  } deriving (Show, Eq, Generic, Data)

instance FromJSON WalletTransactionsListRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "walletTransactionsListRequest")
instance ToJSON WalletTransactionsListRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "walletTransactionsListRequest")

