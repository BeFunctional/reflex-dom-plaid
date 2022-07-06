
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.TransactionsRulesCreateRequest ( TransactionsRulesCreateRequest (..)  ) where

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

-- | TransactionsRulesCreateRequest defines the request schema for &#x60;beta/transactions/rules/v1/create&#x60;
data TransactionsRulesCreateRequest = TransactionsRulesCreateRequest
  { transactionsRulesCreateRequestClientUnderscoreid :: Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , transactionsRulesCreateRequestAccessUnderscoretoken :: Text -- ^ The access token associated with the Item data is being requested for.
  , transactionsRulesCreateRequestSecret :: Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , transactionsRulesCreateRequestPersonalUnderscorefinanceUnderscorecategory :: Text -- ^ Personal finance detailed category.  See the [`taxonomy csv file`](https://plaid.com/documents/transactions-personal-finance-category-taxonomy.csv) for a full list of personal finance categories. 
  , transactionsRulesCreateRequestRuleUnderscoredetails :: TransactionsRuleDetails -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransactionsRulesCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transactionsRulesCreateRequest")
instance ToJSON TransactionsRulesCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transactionsRulesCreateRequest")

