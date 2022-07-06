{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.WalletTransactionExecuteRequest ( WalletTransactionExecuteRequest (..)  ) where

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
import Plaid.Types.WalletTransactionCounterparty
import Plaid.Types.WalletTransactionAmount

-- | WalletTransactionExecuteRequest defines the request schema for &#x60;/wallet/transaction/execute&#x60;
data WalletTransactionExecuteRequest = WalletTransactionExecuteRequest
  { walletTransactionExecuteRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , walletTransactionExecuteRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , walletTransactionExecuteRequestIdempotencyUnderscorekey :: Text -- ^ A random key provided by the client, per unique wallet transaction. Maximum of 128 characters.  The API supports idempotency for safely retrying requests without accidentally performing the same operation twice. If a request to execute a wallet transaction fails due to a network connection error, then after a minimum delay of one minute, you can retry the request with the same idempotency key to guarantee that only a single wallet transaction is created. If the request was successfully processed, it will prevent any transaction that uses the same idempotency key, and was received within 24 hours of the first request, from being processed.
  , walletTransactionExecuteRequestWalletUnderscoreid :: Text -- ^ The ID of the e-wallet to debit from
  , walletTransactionExecuteRequestCounterparty :: WalletTransactionCounterparty -- ^ 
  , walletTransactionExecuteRequestAmount :: WalletTransactionAmount -- ^ 
  , walletTransactionExecuteRequestReference :: Text -- ^ A reference for the transaction. This must be an alphanumeric string with at most 18 characters and must not contain any special characters or spaces.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON WalletTransactionExecuteRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "walletTransactionExecuteRequest")
instance ToJSON WalletTransactionExecuteRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "walletTransactionExecuteRequest")

