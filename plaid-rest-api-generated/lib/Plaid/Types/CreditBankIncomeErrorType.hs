{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}

{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.CreditBankIncomeErrorType ( CreditBankIncomeErrorType (..)  ) where

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

-- | A broad categorization of the error. Safe for programmatic use.
data CreditBankIncomeErrorType = CreditBankIncomeErrorType
  {
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditBankIncomeErrorType where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditBankIncomeErrorType")
instance ToJSON CreditBankIncomeErrorType where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditBankIncomeErrorType")

