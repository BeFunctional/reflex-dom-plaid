
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.TransactionsSyncRequestOptions ( TransactionsSyncRequestOptions (..)  ) where

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

-- | An optional object to be used with the request. If specified, &#x60;options&#x60; must not be &#x60;null&#x60;.
data TransactionsSyncRequestOptions = TransactionsSyncRequestOptions
  { transactionsSyncRequestOptionsIncludeUnderscoreoriginalUnderscoredescription :: Maybe Bool -- ^ Include the raw unparsed transaction description from the financial institution. This field is disabled by default. If you need this information in addition to the parsed data provided, contact your Plaid Account Manager.
  , transactionsSyncRequestOptionsIncludeUnderscorepersonalUnderscorefinanceUnderscorecategory :: Maybe Bool -- ^ Include the [`personal_finance_category`](https://plaid.com/docs/api/products/transactions/#transactions-sync-response-transactions-personal-finance-category) object in the response.  See the [`taxonomy csv file`](https://plaid.com/documents/transactions-personal-finance-category-taxonomy.csv) for a full list of personal finance categories.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransactionsSyncRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transactionsSyncRequestOptions")
instance ToJSON TransactionsSyncRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transactionsSyncRequestOptions")

