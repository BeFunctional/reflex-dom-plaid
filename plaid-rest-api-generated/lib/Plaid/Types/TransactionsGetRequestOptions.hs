{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.TransactionsGetRequestOptions ( TransactionsGetRequestOptions (..)  ) where

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
data TransactionsGetRequestOptions = TransactionsGetRequestOptions
  { transactionsGetRequestOptionsAccountUnderscoreids :: Maybe [Text] -- ^ A list of `account_ids` to retrieve for the Item  Note: An error will be returned if a provided `account_id` is not associated with the Item.
  , transactionsGetRequestOptionsCount :: Maybe Int -- ^ The number of transactions to fetch.
  , transactionsGetRequestOptionsOffset :: Maybe Int -- ^ The number of transactions to skip. The default value is 0.
  , transactionsGetRequestOptionsIncludeUnderscoreoriginalUnderscoredescription :: Maybe Bool -- ^ Include the raw unparsed transaction description from the financial institution. This field is disabled by default. If you need this information in addition to the parsed data provided, contact your Plaid Account Manager.
  , transactionsGetRequestOptionsIncludeUnderscorepersonalUnderscorefinanceUnderscorecategoryUnderscorebeta :: Maybe Bool -- ^ Please use [`include_personal_finance_category`](https://plaid.com/docs/api/products/transactions/#transactions-get-request-options-include-personal-finance-category) instead.
  , transactionsGetRequestOptionsIncludeUnderscorepersonalUnderscorefinanceUnderscorecategory :: Maybe Bool -- ^ Include the [`personal_finance_category`](https://plaid.com/docs/api/products/transactions/#transactions-get-response-transactions-personal-finance-category) object in the response.  See the [`taxonomy csv file`](https://plaid.com/documents/transactions-personal-finance-category-taxonomy.csv) for a full list of personal finance categories.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransactionsGetRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transactionsGetRequestOptions")
instance ToJSON TransactionsGetRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transactionsGetRequestOptions")

