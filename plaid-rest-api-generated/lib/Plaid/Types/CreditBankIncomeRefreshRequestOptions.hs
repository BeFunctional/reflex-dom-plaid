
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.CreditBankIncomeRefreshRequestOptions ( CreditBankIncomeRefreshRequestOptions (..)  ) where

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

-- | An optional object for &#x60;/credit/bank_income/refresh&#x60; request options.
data CreditBankIncomeRefreshRequestOptions = CreditBankIncomeRefreshRequestOptions
  { creditBankIncomeRefreshRequestOptionsDaysUnderscorerequested :: Maybe Int -- ^ How many days of data to include in the refresh. If not specified, this will default to the days requested in the most recently generated bank income report for the user.
  , creditBankIncomeRefreshRequestOptionsWebhook :: Maybe Text -- ^ The URL where Plaid will send the bank income webhook.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditBankIncomeRefreshRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditBankIncomeRefreshRequestOptions")
instance ToJSON CreditBankIncomeRefreshRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditBankIncomeRefreshRequestOptions")

