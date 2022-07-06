
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.InvestmentsTransactionsGetRequest ( InvestmentsTransactionsGetRequest (..)  ) where

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
import Plaid.Types.InvestmentsTransactionsGetRequestOptions

-- | InvestmentsTransactionsGetRequest defines the request schema for &#x60;/investments/transactions/get&#x60;
data InvestmentsTransactionsGetRequest = InvestmentsTransactionsGetRequest
  { investmentsTransactionsGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , investmentsTransactionsGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , investmentsTransactionsGetRequestAccessUnderscoretoken :: Text -- ^ The access token associated with the Item data is being requested for.
  , investmentsTransactionsGetRequestStartUnderscoredate :: Day -- ^ The earliest date for which to fetch transaction history. Dates should be formatted as YYYY-MM-DD.
  , investmentsTransactionsGetRequestEndUnderscoredate :: Day -- ^ The most recent date for which to fetch transaction history. Dates should be formatted as YYYY-MM-DD.
  , investmentsTransactionsGetRequestOptions :: Maybe InvestmentsTransactionsGetRequestOptions -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON InvestmentsTransactionsGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "investmentsTransactionsGetRequest")
instance ToJSON InvestmentsTransactionsGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "investmentsTransactionsGetRequest")

