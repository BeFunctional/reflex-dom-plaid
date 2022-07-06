
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.CreditBankIncomeCause ( CreditBankIncomeCause (..)  ) where

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
import Plaid.Types.CreditBankIncomeErrorType

-- | An error object and associated &#x60;item_id&#x60; used to identify a specific Item and error when a batch operation operating on multiple Items has encountered an error in one of the Items.
data CreditBankIncomeCause = CreditBankIncomeCause
  { creditBankIncomeCauseErrorUnderscoretype :: Maybe CreditBankIncomeErrorType -- ^ 
  , creditBankIncomeCauseErrorUnderscorecode :: Maybe Text -- ^ We use standard HTTP response codes for success and failure notifications, and our errors are further classified by `error_type`. In general, 200 HTTP codes correspond to success, 40X codes are for developer- or user-related failures, and 50X codes are for Plaid-related issues. Error fields will be `null` if no error has occurred.
  , creditBankIncomeCauseErrorUnderscoremessage :: Maybe Text -- ^ A developer-friendly representation of the error code. This may change over time and is not safe for programmatic use.
  , creditBankIncomeCauseDisplayUnderscoremessage :: Maybe Text -- ^ A user-friendly representation of the error code. null if the error is not related to user action. This may change over time and is not safe for programmatic use.
  , creditBankIncomeCauseItemUnderscoreid :: Maybe Text -- ^ The `item_id` of the Item associated with this warning.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditBankIncomeCause where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditBankIncomeCause")
instance ToJSON CreditBankIncomeCause where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditBankIncomeCause")

