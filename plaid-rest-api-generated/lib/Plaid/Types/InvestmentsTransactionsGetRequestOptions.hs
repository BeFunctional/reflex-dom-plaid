
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.InvestmentsTransactionsGetRequestOptions ( InvestmentsTransactionsGetRequestOptions (..)  ) where

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

-- | An optional object to filter &#x60;/investments/transactions/get&#x60; results. If provided, must be non-&#x60;null&#x60;.
data InvestmentsTransactionsGetRequestOptions = InvestmentsTransactionsGetRequestOptions
  { investmentsTransactionsGetRequestOptionsAccountUnderscoreids :: Maybe [Text] -- ^ An array of `account_ids` to retrieve for the Item.
  , investmentsTransactionsGetRequestOptionsCount :: Maybe Int -- ^ The number of transactions to fetch. 
  , investmentsTransactionsGetRequestOptionsOffset :: Maybe Int -- ^ The number of transactions to skip when fetching transaction history
  } deriving (Show, Eq, Generic, Data)

instance FromJSON InvestmentsTransactionsGetRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "investmentsTransactionsGetRequestOptions")
instance ToJSON InvestmentsTransactionsGetRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "investmentsTransactionsGetRequestOptions")

