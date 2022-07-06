{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}

{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.CreditBankIncome ( CreditBankIncome (..)  ) where

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
import Plaid.Types.CreditBankIncomeItem
import Plaid.Types.CreditBankIncomeSummary
import Plaid.Types.CreditBankIncomeWarning

-- | The report of the Bank Income data for an end user.
data CreditBankIncome = CreditBankIncome
  { creditBankIncomeBankUnderscoreincomeUnderscoreid :: Maybe Text -- ^ The unique identifier associated with the Bank Income Report.
  , creditBankIncomeGeneratedUnderscoretime :: Maybe UTCTime -- ^ The time when the Bank Income Report was generated.
  , creditBankIncomeDaysUnderscorerequested :: Maybe Int -- ^ The number of days requested by the customer for the Bank Income Report.
  , creditBankIncomeItems :: Maybe [CreditBankIncomeItem] -- ^ The list of Items in the report along with the associated metadata about the Item.
  , creditBankIncomeBankUnderscoreincomeUnderscoresummary :: Maybe CreditBankIncomeSummary -- ^ 
  , creditBankIncomeWarnings :: Maybe [CreditBankIncomeWarning] -- ^ If data from the Bank Income report was unable to be retrieved, the warnings will contain information about the error that caused the data to be incomplete.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditBankIncome where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditBankIncome")
instance ToJSON CreditBankIncome where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditBankIncome")

