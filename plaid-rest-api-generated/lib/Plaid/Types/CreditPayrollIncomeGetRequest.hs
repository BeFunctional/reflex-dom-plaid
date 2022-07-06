{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.CreditPayrollIncomeGetRequest ( CreditPayrollIncomeGetRequest (..)  ) where

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

-- | CreditPayrollIncomeGetRequest defines the request schema for &#x60;/credit/payroll_income/get&#x60;.
data CreditPayrollIncomeGetRequest = CreditPayrollIncomeGetRequest
  { creditPayrollIncomeGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , creditPayrollIncomeGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , creditPayrollIncomeGetRequestUserUnderscoretoken :: Maybe Text -- ^ The user token associated with the User data is being requested for.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditPayrollIncomeGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditPayrollIncomeGetRequest")
instance ToJSON CreditPayrollIncomeGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditPayrollIncomeGetRequest")

