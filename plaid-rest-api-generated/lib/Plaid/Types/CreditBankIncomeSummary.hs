
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.CreditBankIncomeSummary ( CreditBankIncomeSummary (..)  ) where

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
import Plaid.Types.CreditBankIncomeHistoricalSummary

-- | Summary for bank income across all income sources and items (max history of 730 days).
data CreditBankIncomeSummary = CreditBankIncomeSummary
  { creditBankIncomeSummaryTotalUnderscoreamount :: Maybe Double -- ^ Total amount of earnings across all the income sources in the end user's Items for the days requested by the client.
  , creditBankIncomeSummaryIsoUnderscorecurrencyUnderscorecode :: Maybe Text -- ^ The ISO 4217 currency code of the amount or balance.
  , creditBankIncomeSummaryUnofficialUnderscorecurrencyUnderscorecode :: Maybe Text -- ^ The unofficial currency code associated with the amount or balance. Always `null` if `iso_currency_code` is non-null. Unofficial currency codes are used for currencies that do not have official ISO currency codes, such as cryptocurrencies and the currencies of certain countries.
  , creditBankIncomeSummaryStartUnderscoredate :: Maybe Day -- ^ The earliest date within the days requested in which all income sources identified by Plaid appear in a user's account. The date will be returned in an ISO 8601 format (YYYY-MM-DD).
  , creditBankIncomeSummaryEndUnderscoredate :: Maybe Day -- ^ The latest date in which all income sources identified by Plaid appear in the user's account. The date will be returned in an ISO 8601 format (YYYY-MM-DD).
  , creditBankIncomeSummaryIncomeUnderscoresourcesUnderscorecount :: Maybe Int -- ^ Number of income sources per end user.
  , creditBankIncomeSummaryIncomeUnderscorecategoriesUnderscorecount :: Maybe Int -- ^ Number of income categories per end user.
  , creditBankIncomeSummaryIncomeUnderscoretransactionsUnderscorecount :: Maybe Int -- ^ Number of income transactions per end user.
  , creditBankIncomeSummaryHistoricalUnderscoresummary :: Maybe [CreditBankIncomeHistoricalSummary] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditBankIncomeSummary where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditBankIncomeSummary")
instance ToJSON CreditBankIncomeSummary where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditBankIncomeSummary")

