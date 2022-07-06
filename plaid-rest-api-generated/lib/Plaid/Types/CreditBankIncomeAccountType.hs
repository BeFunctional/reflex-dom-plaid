
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.CreditBankIncomeAccountType ( CreditBankIncomeAccountType (..)  ) where

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

-- | The account type. This will always be &#x60;depository&#x60;.
data CreditBankIncomeAccountType = CreditBankIncomeAccountType
  {
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditBankIncomeAccountType where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditBankIncomeAccountType")
instance ToJSON CreditBankIncomeAccountType where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditBankIncomeAccountType")

