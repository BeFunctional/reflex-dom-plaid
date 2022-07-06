
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.TransactionsRuleDetails ( TransactionsRuleDetails (..)  ) where

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
import Plaid.Types.TransactionsRuleField
import Plaid.Types.TransactionsRuleType

-- | A representation of transactions rule details.
data TransactionsRuleDetails = TransactionsRuleDetails
  { transactionsRuleDetailsField :: TransactionsRuleField -- ^ 
  , transactionsRuleDetailsType :: TransactionsRuleType -- ^ 
  , transactionsRuleDetailsQuery :: Text -- ^ For TRANSACTION_ID field, provide transaction_id. For NAME field, provide a string pattern. 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransactionsRuleDetails where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transactionsRuleDetails")
instance ToJSON TransactionsRuleDetails where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transactionsRuleDetails")

