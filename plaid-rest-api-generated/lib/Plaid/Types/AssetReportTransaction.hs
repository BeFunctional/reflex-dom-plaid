{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}

{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.AssetReportTransaction ( AssetReportTransaction (..)  ) where

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
import Plaid.Types.Location
import Plaid.Types.PaymentMeta

-- | A transaction on the asset report
data AssetReportTransaction = AssetReportTransaction
  { assetReportTransactionTransactionUnderscoretype :: Maybe Text -- ^ Please use the `payment_channel` field, `transaction_type` will be deprecated in the future.  `digital:` transactions that took place online.  `place:` transactions that were made at a physical location.  `special:` transactions that relate to banks, e.g. fees or deposits.  `unresolved:` transactions that do not fit into the other three types. 
  , assetReportTransactionPendingUnderscoretransactionUnderscoreid :: Maybe Text -- ^ The ID of a posted transaction's associated pending transaction, where applicable.
  , assetReportTransactionCategoryUnderscoreid :: Maybe Text -- ^ The ID of the category to which this transaction belongs. For a full list of categories, see [`/categories/get`](https://plaid.com/docs/api/products/transactions/#categoriesget).  If the `transactions` object was returned by an Assets endpoint such as `/asset_report/get/` or `/asset_report/pdf/get`, this field will only appear in an Asset Report with Insights.
  , assetReportTransactionCategory :: Maybe [Text] -- ^ A hierarchical array of the categories to which this transaction belongs. For a full list of categories, see [`/categories/get`](https://plaid.com/docs/api/products/transactions/#categoriesget).  If the `transactions` object was returned by an Assets endpoint such as `/asset_report/get/` or `/asset_report/pdf/get`, this field will only appear in an Asset Report with Insights.
  , assetReportTransactionLocation :: Maybe Location -- ^ 
  , assetReportTransactionPaymentUnderscoremeta :: Maybe PaymentMeta -- ^ 
  , assetReportTransactionAccountUnderscoreowner :: Maybe Text -- ^ The name of the account owner. This field is not typically populated and only relevant when dealing with sub-accounts.
  , assetReportTransactionName :: Maybe Text -- ^ The merchant name or transaction description.  If the `transactions` object was returned by a Transactions endpoint such as `/transactions/get`, this field will always appear. If the `transactions` object was returned by an Assets endpoint such as `/asset_report/get/` or `/asset_report/pdf/get`, this field will only appear in an Asset Report with Insights.
  , assetReportTransactionOriginalUnderscoredescription :: Text -- ^ The string returned by the financial institution to describe the transaction. For transactions returned by `/transactions/get`, this field is in beta and will be omitted unless the client is both enrolled in the closed beta program and has set `options.include_original_description` to `true`.
  , assetReportTransactionAccountUnderscoreid :: Text -- ^ The ID of the account in which this transaction occurred.
  , assetReportTransactionAmount :: Double -- ^ The settled value of the transaction, denominated in the account's currency, as stated in `iso_currency_code` or `unofficial_currency_code`. Positive values when money moves out of the account; negative values when money moves in. For example, debit card purchases are positive; credit card payments, direct deposits, and refunds are negative.
  , assetReportTransactionIsoUnderscorecurrencyUnderscorecode :: Text -- ^ The ISO-4217 currency code of the transaction. Always `null` if `unofficial_currency_code` is non-null.
  , assetReportTransactionUnofficialUnderscorecurrencyUnderscorecode :: Text -- ^ The unofficial currency code associated with the transaction. Always `null` if `iso_currency_code` is non-`null`. Unofficial currency codes are used for currencies that do not have official ISO currency codes, such as cryptocurrencies and the currencies of certain countries.  See the [currency code schema](https://plaid.com/docs/api/accounts#currency-code-schema) for a full listing of supported `iso_currency_code`s.
  , assetReportTransactionDate :: Day -- ^ For pending transactions, the date that the transaction occurred; for posted transactions, the date that the transaction posted. Both dates are returned in an [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format ( `YYYY-MM-DD` ).
  , assetReportTransactionPending :: Bool -- ^ When `true`, identifies the transaction as pending or unsettled. Pending transaction details (name, type, amount, category ID) may change before they are settled.
  , assetReportTransactionTransactionUnderscoreid :: Text -- ^ The unique ID of the transaction. Like all Plaid identifiers, the `transaction_id` is case sensitive.
  , assetReportTransactionMerchantUnderscorename :: Maybe Text -- ^ The merchant name, as extracted by Plaid from the `name` field.
  , assetReportTransactionCheckUnderscorenumber :: Maybe Text -- ^ The check number of the transaction. This field is only populated for check transactions.
  , assetReportTransactionDateUnderscoretransacted :: Maybe Text -- ^ The date on which the transaction took place, in IS0 8601 format.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AssetReportTransaction where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "assetReportTransaction")
instance ToJSON AssetReportTransaction where
  toJSON = genericToJSON (removeFieldLabelPrefix False "assetReportTransaction")

