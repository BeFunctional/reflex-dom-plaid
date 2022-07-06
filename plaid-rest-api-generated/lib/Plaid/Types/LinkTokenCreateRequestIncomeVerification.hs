
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.LinkTokenCreateRequestIncomeVerification ( LinkTokenCreateRequestIncomeVerification (..)  ) where

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
import Plaid.Types.IncomeVerificationSourceType
import Plaid.Types.LinkTokenCreateRequestIncomeVerificationBankIncome
import Plaid.Types.LinkTokenCreateRequestIncomeVerificationPayrollIncome

-- | Specifies options for initializing Link for use with the Income (beta) product. This field is required if &#x60;income_verification&#x60; is included in the &#x60;products&#x60; array.
data LinkTokenCreateRequestIncomeVerification = LinkTokenCreateRequestIncomeVerification
  { linkTokenCreateRequestIncomeVerificationIncomeUnderscoreverificationUnderscoreid :: Maybe Text -- ^ The `income_verification_id` of the verification instance, as provided by `/income/verification/create`.
  , linkTokenCreateRequestIncomeVerificationAssetUnderscorereportUnderscoreid :: Maybe Text -- ^ The `asset_report_id` of an asset report associated with the user, as provided by `/asset_report/create`. Providing an `asset_report_id` is optional and can be used to verify the user through a streamlined flow. If provided, the bank linking flow will be skipped.
  , linkTokenCreateRequestIncomeVerificationPrecheckUnderscoreid :: Maybe Text -- ^ The ID of a precheck created with `/income/verification/precheck`. Will be used to improve conversion of the income verification flow by streamlining the Link interface presented to the end user.
  , linkTokenCreateRequestIncomeVerificationAccessUnderscoretokens :: Maybe [Text] -- ^ An array of access tokens corresponding to the Items that will be cross-referenced with the product data. If the `transactions` product was not initialized for the Items during link, it will be initialized after this Link session.
  , linkTokenCreateRequestIncomeVerificationIncomeUnderscoresourceUnderscoretypes :: Maybe [IncomeVerificationSourceType] -- ^ The types of source income data that users will be permitted to share. Options include `bank` and `payroll`. Currently you can only specify one of these options.
  , linkTokenCreateRequestIncomeVerificationBankUnderscoreincome :: Maybe LinkTokenCreateRequestIncomeVerificationBankIncome -- ^ 
  , linkTokenCreateRequestIncomeVerificationPayrollUnderscoreincome :: Maybe LinkTokenCreateRequestIncomeVerificationPayrollIncome -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON LinkTokenCreateRequestIncomeVerification where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "linkTokenCreateRequestIncomeVerification")
instance ToJSON LinkTokenCreateRequestIncomeVerification where
  toJSON = genericToJSON (removeFieldLabelPrefix False "linkTokenCreateRequestIncomeVerification")

