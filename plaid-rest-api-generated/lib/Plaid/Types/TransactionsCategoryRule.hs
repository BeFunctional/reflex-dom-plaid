{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.TransactionsCategoryRule ( TransactionsCategoryRule (..)  ) where

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
import Plaid.Types.TransactionsRuleDetails

-- | A representation of a transactions category rule.
data TransactionsCategoryRule = TransactionsCategoryRule
  { transactionsCategoryRuleId :: Maybe Text -- ^ A unique identifier of the rule created
  , transactionsCategoryRuleItemUnderscoreid :: Maybe Text -- ^ A unique identifier of the item the rule was created for
  , transactionsCategoryRuleCreatedUnderscoreat :: Maybe UTCTime -- ^ Date and time when a rule was created in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format ( `YYYY-MM-DDTHH:mm:ssZ` ). 
  , transactionsCategoryRulePersonalUnderscorefinanceUnderscorecategory :: Maybe Text -- ^ Personal finance category unique identifier.  In the personal finance category taxonomy, this field is represented by the detailed category field. 
  , transactionsCategoryRuleRuleUnderscoredetails :: Maybe TransactionsRuleDetails -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransactionsCategoryRule where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transactionsCategoryRule")
instance ToJSON TransactionsCategoryRule where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transactionsCategoryRule")

