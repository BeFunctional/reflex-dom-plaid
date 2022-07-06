{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.LinkTokenCreateRequestIncomeVerificationPayrollIncome ( LinkTokenCreateRequestIncomeVerificationPayrollIncome (..)  ) where

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
import Plaid.Types.IncomeVerificationPayrollFlowType

-- | Specifies options for initializing Link for use with Payroll Income. This field is required if &#x60;income_verification&#x60; is included in the &#x60;products&#x60; array and &#x60;payroll&#x60; is specified in &#x60;income_source_types&#x60;.
data LinkTokenCreateRequestIncomeVerificationPayrollIncome = LinkTokenCreateRequestIncomeVerificationPayrollIncome
  { linkTokenCreateRequestIncomeVerificationPayrollIncomeFlowUnderscoretypes :: Maybe [IncomeVerificationPayrollFlowType] -- ^ The types of payroll income verification to enable for the link session. If none are specified, then users will see both document and digital payroll income.
  , linkTokenCreateRequestIncomeVerificationPayrollIncomeIsUnderscoreupdateUnderscoremode :: Maybe Bool -- ^ An identifier to indicate whether the income verification link token will be used for an update or not
  } deriving (Show, Eq, Generic, Data)

instance FromJSON LinkTokenCreateRequestIncomeVerificationPayrollIncome where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "linkTokenCreateRequestIncomeVerificationPayrollIncome")
instance ToJSON LinkTokenCreateRequestIncomeVerificationPayrollIncome where
  toJSON = genericToJSON (removeFieldLabelPrefix False "linkTokenCreateRequestIncomeVerificationPayrollIncome")

