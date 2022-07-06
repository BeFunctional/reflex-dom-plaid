{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.CreditBankIncomeSource ( CreditBankIncomeSource (..)  ) where

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
import Plaid.Types.CreditBankIncomeCategory
import Plaid.Types.CreditBankIncomePayFrequency
import Plaid.Types.CreditBankIncomeHistoricalSummary

-- | Detailed information for the income source.
data CreditBankIncomeSource = CreditBankIncomeSource
  { creditBankIncomeSourceIncomeUnderscoresourceUnderscoreid :: Maybe Text -- ^ A unique identifier for an income source.
  , creditBankIncomeSourceIncomeUnderscoredescription :: Maybe Text -- ^ The most common name or original description for the underlying income transactions.
  , creditBankIncomeSourceIncomeUnderscorecategory :: Maybe CreditBankIncomeCategory -- ^ 
  , creditBankIncomeSourceAccountUnderscoreid :: Maybe Text -- ^ Plaid's unique idenfier for the account.
  , creditBankIncomeSourceStartUnderscoredate :: Maybe Day -- ^ Minimum of all dates within the specific income sources in the user's bank account for days requested by the client. The date will be returned in an ISO 8601 format (YYYY-MM-DD).
  , creditBankIncomeSourceEndUnderscoredate :: Maybe Day -- ^ Maximum of all dates within the specific income sources in the user’s bank account for days requested by the client. The date will be returned in an ISO 8601 format (YYYY-MM-DD).
  , creditBankIncomeSourcePayUnderscorefrequency :: Maybe CreditBankIncomePayFrequency -- ^ 
  , creditBankIncomeSourceTotalUnderscoreamount :: Maybe Double -- ^ Total amount of earnings in the user’s bank account for the specific income source for days requested by the client.
  , creditBankIncomeSourceTransactionUnderscorecount :: Maybe Int -- ^ Number of transactions for the income source within the start and end date.
  , creditBankIncomeSourceHistoricalUnderscoresummary :: Maybe [CreditBankIncomeHistoricalSummary] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditBankIncomeSource where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditBankIncomeSource")
instance ToJSON CreditBankIncomeSource where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditBankIncomeSource")

