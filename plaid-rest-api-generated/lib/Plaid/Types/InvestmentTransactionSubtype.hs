
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.InvestmentTransactionSubtype ( InvestmentTransactionSubtype (..)  ) where

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

-- | For descriptions of possible transaction types and subtypes, see the [Investment transaction types schema](https://plaid.com/docs/api/accounts/#investment-transaction-types-schema).
data InvestmentTransactionSubtype = InvestmentTransactionSubtype
  {
  } deriving (Show, Eq, Generic, Data)

instance FromJSON InvestmentTransactionSubtype where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "investmentTransactionSubtype")
instance ToJSON InvestmentTransactionSubtype where
  toJSON = genericToJSON (removeFieldLabelPrefix False "investmentTransactionSubtype")

