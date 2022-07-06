
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.CreditBankIncomeItem ( CreditBankIncomeItem (..)  ) where

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
import Plaid.Types.CreditBankIncomeAccount
import Plaid.Types.CreditBankIncomeSource

-- | The details and metadata for an end user&#39;s Item.
data CreditBankIncomeItem = CreditBankIncomeItem
  { creditBankIncomeItemBankUnderscoreincomeUnderscoreaccounts :: Maybe [CreditBankIncomeAccount] -- ^ The Item's accounts that have Bank Income data.
  , creditBankIncomeItemBankUnderscoreincomeUnderscoresources :: Maybe [CreditBankIncomeSource] -- ^ The income sources for this Item. Each entry in the array is a single income source.
  , creditBankIncomeItemLastUnderscoreupdatedUnderscoretime :: Maybe UTCTime -- ^ The time when this Item's data was last retrieved from the financial institution.
  , creditBankIncomeItemInstitutionUnderscoreid :: Maybe Text -- ^ The unique identifier of the institution associated with the Item.
  , creditBankIncomeItemInstitutionUnderscorename :: Maybe Text -- ^ The name of the institution associated with the Item.
  , creditBankIncomeItemItemUnderscoreid :: Maybe Text -- ^ The unique identifier for the Item.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditBankIncomeItem where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditBankIncomeItem")
instance ToJSON CreditBankIncomeItem where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditBankIncomeItem")

