{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.SignalEvaluateCoreAttributes ( SignalEvaluateCoreAttributes (..)  ) where

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

-- | The core attributes object contains additional data that can be used to assess the ACH return risk. Examples of data include:  &#x60;days_since_first_plaid_connection&#x60;: The number of days since the first time the Item was connected to an application via Plaid &#x60;plaid_connections_count_7d&#x60;: The number of times the Item has been connected to applications via Plaid over the past 7 days &#x60;plaid_connections_count_30d&#x60;: The number of times the Item has been connected to applications via Plaid over the past 30 days &#x60;total_plaid_connections_count&#x60;: The number of times the Item has been connected to applications via Plaid &#x60;is_savings_or_money_market_account&#x60;: Indicates whether the ACH transaction funding account is a savings/money market account  For the full list and detailed documentation of core attributes available, or to request that core attributes not be returned, contact Sales or your Plaid account manager
data SignalEvaluateCoreAttributes = SignalEvaluateCoreAttributes
  { signalEvaluateCoreAttributesUnauthorizedUnderscoretransactionsUnderscorecountUnderscore7d :: Maybe Int -- ^ We parse and analyze historical transaction metadata to identify the number of possible past returns due to unauthorized transactions over the past 7 days from the account that will be debited.
  , signalEvaluateCoreAttributesUnauthorizedUnderscoretransactionsUnderscorecountUnderscore30d :: Maybe Int -- ^ We parse and analyze historical transaction metadata to identify the number of possible past returns due to unauthorized transactions over the past 30 days from the account that will be debited.
  , signalEvaluateCoreAttributesUnauthorizedUnderscoretransactionsUnderscorecountUnderscore60d :: Maybe Int -- ^ We parse and analyze historical transaction metadata to identify the number of possible past returns due to unauthorized transactions over the past 60 days from the account that will be debited.
  , signalEvaluateCoreAttributesUnauthorizedUnderscoretransactionsUnderscorecountUnderscore90d :: Maybe Int -- ^ We parse and analyze historical transaction metadata to identify the number of possible past returns due to unauthorized transactions over the past 90 days from the account that will be debited.
  , signalEvaluateCoreAttributesNsfUnderscoreoverdraftUnderscoretransactionsUnderscorecountUnderscore7d :: Maybe Int -- ^ We parse and analyze historical transaction metadata to identify the number of possible past returns due to non-sufficient funds/overdrafts over the past 7 days from the account that will be debited.
  , signalEvaluateCoreAttributesNsfUnderscoreoverdraftUnderscoretransactionsUnderscorecountUnderscore30d :: Maybe Int -- ^ We parse and analyze historical transaction metadata to identify the number of possible past returns due to non-sufficient funds/overdrafts over the past 30 days from the account that will be debited.
  , signalEvaluateCoreAttributesNsfUnderscoreoverdraftUnderscoretransactionsUnderscorecountUnderscore60d :: Maybe Int -- ^ We parse and analyze historical transaction metadata to identify the number of possible past returns due to non-sufficient funds/overdrafts over the past 60 days from the account that will be debited.
  , signalEvaluateCoreAttributesNsfUnderscoreoverdraftUnderscoretransactionsUnderscorecountUnderscore90d :: Maybe Int -- ^ We parse and analyze historical transaction metadata to identify the number of possible past returns due to non-sufficient funds/overdrafts over the past 90 days from the account that will be debited.
  , signalEvaluateCoreAttributesDaysUnderscoresinceUnderscorefirstUnderscoreplaidUnderscoreconnection :: Maybe Int -- ^ The number of days since the first time the Item was connected to an application via Plaid
  , signalEvaluateCoreAttributesPlaidUnderscoreconnectionsUnderscorecountUnderscore7d :: Maybe Int -- ^ The number of times the Item has been connected to applications via Plaid over the past 7 days
  , signalEvaluateCoreAttributesPlaidUnderscoreconnectionsUnderscorecountUnderscore30d :: Maybe Int -- ^ The number of times the Item has been connected to applications via Plaid over the past 30 days
  , signalEvaluateCoreAttributesTotalUnderscoreplaidUnderscoreconnectionsUnderscorecount :: Maybe Int -- ^ The total number of times the Item has been connected to applications via Plaid
  , signalEvaluateCoreAttributesIsUnderscoresavingsUnderscoreorUnderscoremoneyUnderscoremarketUnderscoreaccount :: Maybe Bool -- ^ Indicates if the ACH transaction funding account is a savings/money market account
  , signalEvaluateCoreAttributesTotalUnderscorecreditUnderscoretransactionsUnderscoreamountUnderscore10d :: Maybe Double -- ^ The total credit (inflow) transaction amount over the past 10 days from the account that will be debited
  , signalEvaluateCoreAttributesTotalUnderscoredebitUnderscoretransactionsUnderscoreamountUnderscore10d :: Maybe Double -- ^ The total debit (outflow) transaction amount over the past 10 days from the account that will be debited
  , signalEvaluateCoreAttributesP50UnderscorecreditUnderscoretransactionsUnderscoreamountUnderscore28d :: Maybe Double -- ^ The 50th percentile of all credit (inflow) transaction amounts over the past 28 days from the account that will be debited
  , signalEvaluateCoreAttributesP50UnderscoredebitUnderscoretransactionsUnderscoreamountUnderscore28d :: Maybe Double -- ^ The 50th percentile of all debit (outflow) transaction amounts over the past 28 days from the account that will be debited
  , signalEvaluateCoreAttributesP95UnderscorecreditUnderscoretransactionsUnderscoreamountUnderscore28d :: Maybe Double -- ^ The 95th percentile of all credit (inflow) transaction amounts over the past 28 days from the account that will be debited
  , signalEvaluateCoreAttributesP95UnderscoredebitUnderscoretransactionsUnderscoreamountUnderscore28d :: Maybe Double -- ^ The 95th percentile of all debit (outflow) transaction amounts over the past 28 days from the account that will be debited
  , signalEvaluateCoreAttributesDaysUnderscorewithUnderscorenegativeUnderscorebalanceUnderscorecountUnderscore90d :: Maybe Int -- ^ The number of days within the past 90 days when the account that will be debited had a negative end-of-day available balance
  , signalEvaluateCoreAttributesP90UnderscoreeodUnderscorebalanceUnderscore30d :: Maybe Double -- ^ The 90th percentile of the end-of-day available balance over the past 30 days of the account that will be debited
  , signalEvaluateCoreAttributesP90UnderscoreeodUnderscorebalanceUnderscore60d :: Maybe Double -- ^ The 90th percentile of the end-of-day available balance over the past 60 days of the account that will be debited
  , signalEvaluateCoreAttributesP90UnderscoreeodUnderscorebalanceUnderscore90d :: Maybe Double -- ^ The 90th percentile of the end-of-day available balance over the past 90 days of the account that will be debited
  , signalEvaluateCoreAttributesP10UnderscoreeodUnderscorebalanceUnderscore30d :: Maybe Double -- ^ The 10th percentile of the end-of-day available balance over the past 30 days of the account that will be debited
  , signalEvaluateCoreAttributesP10UnderscoreeodUnderscorebalanceUnderscore60d :: Maybe Double -- ^ The 10th percentile of the end-of-day available balance over the past 60 days of the account that will be debited
  , signalEvaluateCoreAttributesP10UnderscoreeodUnderscorebalanceUnderscore90d :: Maybe Double -- ^ The 10th percentile of the end-of-day available balance over the past 90 days of the account that will be debited
  , signalEvaluateCoreAttributesAvailableUnderscorebalance :: Maybe Double -- ^ Available balance, as of the `balance_last_updated` time. The available balance is the current balance less any outstanding holds or debits that have not yet posted to the account.
  , signalEvaluateCoreAttributesCurrentUnderscorebalance :: Maybe Double -- ^ Current balance, as of the `balance_last_updated` time. The current balance is the total amount of funds in the account.
  , signalEvaluateCoreAttributesBalanceUnderscorelastUnderscoreupdated :: Maybe UTCTime -- ^ Timestamp in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format (YYYY-MM-DDTHH:mm:ssZ) indicating the last time that the balance for the given account has been updated.
  , signalEvaluateCoreAttributesPhoneUnderscorechangeUnderscorecountUnderscore28d :: Maybe Int -- ^ The number of times the account's phone numbers on file have changed over the past 28 days
  , signalEvaluateCoreAttributesPhoneUnderscorechangeUnderscorecountUnderscore90d :: Maybe Int -- ^ The number of times the account's phone numbers on file have changed over the past 90 days
  , signalEvaluateCoreAttributesEmailUnderscorechangeUnderscorecountUnderscore28d :: Maybe Int -- ^ The number of times the account's email addresses on file have changed over the past 28 days
  , signalEvaluateCoreAttributesEmailUnderscorechangeUnderscorecountUnderscore90d :: Maybe Int -- ^ The number of times the account's email addresses on file have changed over the past 90 days
  , signalEvaluateCoreAttributesAddressUnderscorechangeUnderscorecountUnderscore28d :: Maybe Int -- ^ The number of times the account's addresses on file have changed over the past 28 days
  , signalEvaluateCoreAttributesAddressUnderscorechangeUnderscorecountUnderscore90d :: Maybe Int -- ^ The number of times the account's addresses on file have changed over the past 90 days
  , signalEvaluateCoreAttributesPlaidUnderscorenonUnderscoreoauthUnderscoreauthenticationUnderscoreattemptsUnderscorecountUnderscore3d :: Maybe Int -- ^ The number of non-OAuth authentication attempts via Plaid for this bank account over the past 3 days
  , signalEvaluateCoreAttributesPlaidUnderscorenonUnderscoreoauthUnderscoreauthenticationUnderscoreattemptsUnderscorecountUnderscore7d :: Maybe Int -- ^ The number of non-OAuth authentication attempts via Plaid for this bank account over the past 7 days
  , signalEvaluateCoreAttributesPlaidUnderscorenonUnderscoreoauthUnderscoreauthenticationUnderscoreattemptsUnderscorecountUnderscore30d :: Maybe Int -- ^ The number of non-OAuth authentication attempts via Plaid for this bank account over the past 30 days
  , signalEvaluateCoreAttributesFailedUnderscoreplaidUnderscorenonUnderscoreoauthUnderscoreauthenticationUnderscoreattemptsUnderscorecountUnderscore3d :: Maybe Int -- ^ The number of failed non-OAuth authentication attempts via Plaid for this bank account over the past 3 days
  , signalEvaluateCoreAttributesFailedUnderscoreplaidUnderscorenonUnderscoreoauthUnderscoreauthenticationUnderscoreattemptsUnderscorecountUnderscore7d :: Maybe Int -- ^ The number of failed non-OAuth authentication attempts via Plaid for this bank account over the past 7 days
  , signalEvaluateCoreAttributesFailedUnderscoreplaidUnderscorenonUnderscoreoauthUnderscoreauthenticationUnderscoreattemptsUnderscorecountUnderscore30d :: Maybe Int -- ^ The number of failed non-OAuth authentication attempts via Plaid for this bank account over the past 30 days
  , signalEvaluateCoreAttributesDebitUnderscoretransactionsUnderscorecountUnderscore10d :: Maybe Int -- ^ The total number of debit (outflow) transactions over the past 10 days from the account that will be debited
  , signalEvaluateCoreAttributesCreditUnderscoretransactionsUnderscorecountUnderscore10d :: Maybe Int -- ^ The total number of credit (inflow) transactions over the past 10 days from the account that will be debited
  , signalEvaluateCoreAttributesDebitUnderscoretransactionsUnderscorecountUnderscore30d :: Maybe Int -- ^ The total number of debit (outflow) transactions over the past 30 days from the account that will be debited
  , signalEvaluateCoreAttributesCreditUnderscoretransactionsUnderscorecountUnderscore30d :: Maybe Int -- ^ The total number of credit (inflow) transactions over the past 30 days from the account that will be debited
  , signalEvaluateCoreAttributesDebitUnderscoretransactionsUnderscorecountUnderscore60d :: Maybe Int -- ^ The total number of debit (outflow) transactions over the past 60 days from the account that will be debited
  , signalEvaluateCoreAttributesCreditUnderscoretransactionsUnderscorecountUnderscore60d :: Maybe Int -- ^ The total number of credit (inflow) transactions over the past 60 days from the account that will be debited
  , signalEvaluateCoreAttributesDebitUnderscoretransactionsUnderscorecountUnderscore90d :: Maybe Int -- ^ The total number of debit (outflow) transactions over the past 90 days from the account that will be debited
  , signalEvaluateCoreAttributesCreditUnderscoretransactionsUnderscorecountUnderscore90d :: Maybe Int -- ^ The total number of credit (inflow) transactions over the past 90 days from the account that will be debited
  , signalEvaluateCoreAttributesTotalUnderscoredebitUnderscoretransactionsUnderscoreamountUnderscore30d :: Maybe Double -- ^ The total debit (outflow) transaction amount over the past 30 days from the account that will be debited
  , signalEvaluateCoreAttributesTotalUnderscorecreditUnderscoretransactionsUnderscoreamountUnderscore30d :: Maybe Double -- ^ The total credit (inflow) transaction amount over the past 30 days from the account that will be debited
  , signalEvaluateCoreAttributesTotalUnderscoredebitUnderscoretransactionsUnderscoreamountUnderscore60d :: Maybe Double -- ^ The total debit (outflow) transaction amount over the past 60 days from the account that will be debited
  , signalEvaluateCoreAttributesTotalUnderscorecreditUnderscoretransactionsUnderscoreamountUnderscore60d :: Maybe Double -- ^ The total credit (inflow) transaction amount over the past 60 days from the account that will be debited
  , signalEvaluateCoreAttributesTotalUnderscoredebitUnderscoretransactionsUnderscoreamountUnderscore90d :: Maybe Double -- ^ The total debit (outflow) transaction amount over the past 90 days from the account that will be debited
  , signalEvaluateCoreAttributesTotalUnderscorecreditUnderscoretransactionsUnderscoreamountUnderscore90d :: Maybe Double -- ^ The total credit (inflow) transaction amount over the past 90 days from the account that will be debited
  , signalEvaluateCoreAttributesP50UnderscoreeodUnderscorebalanceUnderscore30d :: Maybe Double -- ^ The 50th percentile of the end-of-day available balance over the past 30 days of the account that will be debited
  , signalEvaluateCoreAttributesP50UnderscoreeodUnderscorebalanceUnderscore60d :: Maybe Double -- ^ The 50th percentile of the end-of-day available balance over the past 60 days of the account that will be debited
  , signalEvaluateCoreAttributesP50UnderscoreeodUnderscorebalanceUnderscore90d :: Maybe Double -- ^ The 50th percentile of the end-of-day available balance over the past 90 days of the account that will be debited
  , signalEvaluateCoreAttributesP50UnderscoreeodUnderscorebalanceUnderscore31dUnderscoretoUnderscore60d :: Maybe Double -- ^ The 50th percentile of the end-of-day available balance between day 31 and day 60 over the past 60 days of the account that will be debited
  , signalEvaluateCoreAttributesP50UnderscoreeodUnderscorebalanceUnderscore61dUnderscoretoUnderscore90d :: Maybe Double -- ^ The 50th percentile of the end-of-day available balance between day 61 and day 90 over the past 60 days of the account that will be debited
  , signalEvaluateCoreAttributesP90UnderscoreeodUnderscorebalanceUnderscore31dUnderscoretoUnderscore60d :: Maybe Double -- ^ The 90th percentile of the end-of-day available balance between day 31 and day 60 over the past 60 days of the account that will be debited
  , signalEvaluateCoreAttributesP90UnderscoreeodUnderscorebalanceUnderscore61dUnderscoretoUnderscore90d :: Maybe Double -- ^ The 90th percentile of the end-of-day available balance between day 61 and day 90 over the past 60 days of the account that will be debited
  , signalEvaluateCoreAttributesP10UnderscoreeodUnderscorebalanceUnderscore31dUnderscoretoUnderscore60d :: Maybe Double -- ^ The 10th percentile of the end-of-day available balance between day 31 and day 60 over the past 60 days of the account that will be debited
  , signalEvaluateCoreAttributesP10UnderscoreeodUnderscorebalanceUnderscore61dUnderscoretoUnderscore90d :: Maybe Double -- ^ The 10th percentile of the end-of-day available balance between day 61 and day 90 over the past 60 days of the account that will be debited
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SignalEvaluateCoreAttributes where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "signalEvaluateCoreAttributes")
instance ToJSON SignalEvaluateCoreAttributes where
  toJSON = genericToJSON (removeFieldLabelPrefix False "signalEvaluateCoreAttributes")

