
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.CreditBankIncomeHistoricalSummary ( CreditBankIncomeHistoricalSummary (..)  ) where

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
import Plaid.Types.CreditBankIncomeTransaction

-- | The end user&#39;s monthly summary for the income source(s).
data CreditBankIncomeHistoricalSummary = CreditBankIncomeHistoricalSummary
  { creditBankIncomeHistoricalSummaryTotalUnderscoreamount :: Maybe Double -- ^ Total amount of earnings for the income source(s) of the user for the month in the summary.
  , creditBankIncomeHistoricalSummaryIsoUnderscorecurrencyUnderscorecode :: Maybe Text -- ^ The ISO 4217 currency code of the amount or balance.
  , creditBankIncomeHistoricalSummaryUnofficialUnderscorecurrencyUnderscorecode :: Maybe Text -- ^ The unofficial currency code associated with the amount or balance. Always `null` if `iso_currency_code` is non-null. Unofficial currency codes are used for currencies that do not have official ISO currency codes, such as cryptocurrencies and the currencies of certain countries.
  , creditBankIncomeHistoricalSummaryStartUnderscoredate :: Maybe Day -- ^ The start date of the period covered in this monthly summary. This date will be the first day of the month, unless the month being covered is a partial month because it is the first month included in the summary and the date range being requested does not begin with the first day of the month. The date will be returned in an ISO 8601 format (YYYY-MM-DD).
  , creditBankIncomeHistoricalSummaryEndUnderscoredate :: Maybe Day -- ^ The end date of the period included in this monthly summary. This date will be the last day of the month, unless the month being covered is a partial month because it is the last month included in the summary and the date range being requested does not end with the last day of the month. The date will be returned in an ISO 8601 format (YYYY-MM-DD).
  , creditBankIncomeHistoricalSummaryTransactions :: Maybe [CreditBankIncomeTransaction] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditBankIncomeHistoricalSummary where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditBankIncomeHistoricalSummary")
instance ToJSON CreditBankIncomeHistoricalSummary where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditBankIncomeHistoricalSummary")

