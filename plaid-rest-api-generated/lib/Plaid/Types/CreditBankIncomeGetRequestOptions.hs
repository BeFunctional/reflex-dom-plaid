
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.CreditBankIncomeGetRequestOptions ( CreditBankIncomeGetRequestOptions (..)  ) where

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

-- | An optional object for &#x60;/credit/bank_income/get&#x60; request options.
data CreditBankIncomeGetRequestOptions = CreditBankIncomeGetRequestOptions
  { creditBankIncomeGetRequestOptionsCount :: Maybe Int -- ^ How many Bank Income Reports should be fetched. Multiple reports may be available if the report has been re-created or refreshed. If more than one report is available, the most recent reports will be returned first.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditBankIncomeGetRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditBankIncomeGetRequestOptions")
instance ToJSON CreditBankIncomeGetRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditBankIncomeGetRequestOptions")

