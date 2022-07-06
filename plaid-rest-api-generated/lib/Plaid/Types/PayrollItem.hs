
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.PayrollItem ( PayrollItem (..)  ) where

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
import Plaid.Types.PayrollIncomeAccountData
import Plaid.Types.PayrollIncomeObject
import Plaid.Types.PayrollItemStatus

-- | An object containing information about the payroll item.
data PayrollItem = PayrollItem
  { payrollItemItemUnderscoreid :: Text -- ^ The `item_id` of the Item associated with this webhook, warning, or error
  , payrollItemAccounts :: [PayrollIncomeAccountData] -- ^ 
  , payrollItemPayrollUnderscoreincome :: [PayrollIncomeObject] -- ^ 
  , payrollItemStatus :: PayrollItemStatus -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PayrollItem where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "payrollItem")
instance ToJSON PayrollItem where
  toJSON = genericToJSON (removeFieldLabelPrefix False "payrollItem")

