{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.CreditBankIncomeTransaction ( CreditBankIncomeTransaction (..)  ) where

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

-- | The transactions data for the end user&#39;s income source(s).
data CreditBankIncomeTransaction = CreditBankIncomeTransaction
  { creditBankIncomeTransactionAmount :: Maybe Double -- ^ The settled value of the transaction, denominated in the account's currency as stated in `iso_currency_code` or `unofficial_currency_code`. Positive values when money moves out of the account; negative values when money moves in. For example, credit card purchases are positive; credit card payment, direct deposits, and refunds are negative.
  , creditBankIncomeTransactionDate :: Maybe Day -- ^ For pending transactions, the date that the transaction occurred; for posted transactions, the date that the transaction posted. Both dates are returned in an ISO 8601 format (YYYY-MM-DD).
  , creditBankIncomeTransactionName :: Maybe Text -- ^ The merchant name or transaction description.
  , creditBankIncomeTransactionOriginalUnderscoredescription :: Maybe Text -- ^ The string returned by the financial institution to describe the transaction.
  , creditBankIncomeTransactionPending :: Maybe Bool -- ^ When true, identifies the transaction as pending or unsettled. Pending transaction details (name, type, amount, category ID) may change before they are settled.
  , creditBankIncomeTransactionTransactionUnderscoreid :: Maybe Text -- ^ The unique ID of the transaction. Like all Plaid identifiers, the `transaction_id` is case sensitive.
  , creditBankIncomeTransactionCheckUnderscorenumber :: Maybe Text -- ^ The check number of the transaction. This field is only populated for check transactions.
  , creditBankIncomeTransactionIsoUnderscorecurrencyUnderscorecode :: Maybe Text -- ^ The ISO 4217 currency code of the amount or balance.
  , creditBankIncomeTransactionUnofficialUnderscorecurrencyUnderscorecode :: Maybe Text -- ^ The unofficial currency code associated with the amount or balance. Always `null` if `iso_currency_code` is non-null. Unofficial currency codes are used for currencies that do not have official ISO currency codes, such as cryptocurrencies and the currencies of certain countries.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditBankIncomeTransaction where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditBankIncomeTransaction")
instance ToJSON CreditBankIncomeTransaction where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditBankIncomeTransaction")

