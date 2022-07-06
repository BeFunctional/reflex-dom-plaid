{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.CreditPayrollIncomePrecheckRequest ( CreditPayrollIncomePrecheckRequest (..)  ) where

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
import Plaid.Types.IncomeVerificationPrecheckEmployer
import Plaid.Types.IncomeVerificationPrecheckMilitaryInfo

-- | Defines the request schema for &#x60;/credit/payroll_income/precheck&#x60;.
data CreditPayrollIncomePrecheckRequest = CreditPayrollIncomePrecheckRequest
  { creditPayrollIncomePrecheckRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , creditPayrollIncomePrecheckRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , creditPayrollIncomePrecheckRequestUserUnderscoretoken :: Maybe Text -- ^ The user token associated with the User data is being requested for.
  , creditPayrollIncomePrecheckRequestAccessUnderscoretokens :: Maybe [Text] -- ^ An array of access tokens corresponding to Items belonging to the user whose eligibility is being checked. Note that if the Items specified here are not already initialized with `transactions`, providing them in this field will cause these Items to be initialized with (and billed for) the Transactions product.
  , creditPayrollIncomePrecheckRequestEmployer :: Maybe IncomeVerificationPrecheckEmployer -- ^ 
  , creditPayrollIncomePrecheckRequestUsUnderscoremilitaryUnderscoreinfo :: Maybe IncomeVerificationPrecheckMilitaryInfo -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditPayrollIncomePrecheckRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditPayrollIncomePrecheckRequest")
instance ToJSON CreditPayrollIncomePrecheckRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditPayrollIncomePrecheckRequest")

