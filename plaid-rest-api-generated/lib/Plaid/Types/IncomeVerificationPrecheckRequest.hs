
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.IncomeVerificationPrecheckRequest ( IncomeVerificationPrecheckRequest (..)  ) where

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
import Plaid.Types.IncomeVerificationPrecheckUser
import Plaid.Types.IncomeVerificationPrecheckEmployer
import Plaid.Types.IncomeVerificationPrecheckMilitaryInfo

-- | IncomeVerificationPrecheckRequest defines the request schema for &#x60;/income/verification/precheck&#x60;
data IncomeVerificationPrecheckRequest = IncomeVerificationPrecheckRequest
  { incomeVerificationPrecheckRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , incomeVerificationPrecheckRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , incomeVerificationPrecheckRequestUser :: Maybe IncomeVerificationPrecheckUser -- ^ 
  , incomeVerificationPrecheckRequestEmployer :: Maybe IncomeVerificationPrecheckEmployer -- ^ 
  , incomeVerificationPrecheckRequestTransactionsUnderscoreaccessUnderscoretoken :: Maybe Text -- ^ 
  , incomeVerificationPrecheckRequestTransactionsUnderscoreaccessUnderscoretokens :: Maybe [Text] -- ^ An array of access tokens corresponding to Items belonging to the user whose eligibility is being checked. Note that if the Items specified here are not already initialized with `transactions`, providing them in this field will cause these Items to be initialized with (and billed for) the Transactions product.
  , incomeVerificationPrecheckRequestUsUnderscoremilitaryUnderscoreinfo :: Maybe IncomeVerificationPrecheckMilitaryInfo -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IncomeVerificationPrecheckRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "incomeVerificationPrecheckRequest")
instance ToJSON IncomeVerificationPrecheckRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "incomeVerificationPrecheckRequest")

