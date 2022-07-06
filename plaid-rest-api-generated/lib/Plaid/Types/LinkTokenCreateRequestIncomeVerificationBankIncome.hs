
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.LinkTokenCreateRequestIncomeVerificationBankIncome ( LinkTokenCreateRequestIncomeVerificationBankIncome (..)  ) where

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

-- | Specifies options for initializing Link for use with Bank Income. This field is required if &#x60;income_verification&#x60; is included in the &#x60;products&#x60; array and &#x60;bank&#x60; is specified in &#x60;income_source_types&#x60;.
data LinkTokenCreateRequestIncomeVerificationBankIncome = LinkTokenCreateRequestIncomeVerificationBankIncome
  { linkTokenCreateRequestIncomeVerificationBankIncomeDaysUnderscorerequested :: Maybe Int -- ^ The number of days of data to request for the Bank Income product
  , linkTokenCreateRequestIncomeVerificationBankIncomeEnableUnderscoremultipleUnderscoreitems :: Maybe Bool -- ^ Whether to enable multiple items to be added in the link session
  } deriving (Show, Eq, Generic, Data)

instance FromJSON LinkTokenCreateRequestIncomeVerificationBankIncome where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "linkTokenCreateRequestIncomeVerificationBankIncome")
instance ToJSON LinkTokenCreateRequestIncomeVerificationBankIncome where
  toJSON = genericToJSON (removeFieldLabelPrefix False "linkTokenCreateRequestIncomeVerificationBankIncome")

