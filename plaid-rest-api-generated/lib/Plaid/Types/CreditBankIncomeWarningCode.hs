
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.CreditBankIncomeWarningCode ( CreditBankIncomeWarningCode (..)  ) where

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

-- | The warning code identifies a specific kind of warning. &#x60;IDENTITY_UNAVAILABLE&#x60;: Unable to extract identity for the Item &#x60;TRANSACTIONS_UNAVAILABLE&#x60;: Unable to extract transactions for the Item &#x60;ITEM_UNAPPROVED&#x60;: User did not grant permission to share income data for the Item &#x60;REPORT_DELETED&#x60;: Report deleted due to customer or consumer request
data CreditBankIncomeWarningCode = CreditBankIncomeWarningCode
  {
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditBankIncomeWarningCode where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditBankIncomeWarningCode")
instance ToJSON CreditBankIncomeWarningCode where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditBankIncomeWarningCode")

