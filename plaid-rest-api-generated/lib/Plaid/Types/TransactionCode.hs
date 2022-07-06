
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.TransactionCode ( TransactionCode (..)  ) where

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

-- | An identifier classifying the transaction type.  This field is only populated for European institutions. For institutions in the US and Canada, this field is set to &#x60;null&#x60;.  &#x60;adjustment:&#x60; Bank adjustment  &#x60;atm:&#x60; Cash deposit or withdrawal via an automated teller machine  &#x60;bank charge:&#x60; Charge or fee levied by the institution  &#x60;bill payment&#x60;: Payment of a bill  &#x60;cash:&#x60; Cash deposit or withdrawal  &#x60;cashback:&#x60; Cash withdrawal while making a debit card purchase  &#x60;cheque:&#x60; Document ordering the payment of money to another person or organization  &#x60;direct debit:&#x60; Automatic withdrawal of funds initiated by a third party at a regular interval  &#x60;interest:&#x60; Interest earned or incurred  &#x60;purchase:&#x60; Purchase made with a debit or credit card  &#x60;standing order:&#x60; Payment instructed by the account holder to a third party at a regular interval  &#x60;transfer:&#x60; Transfer of money between accounts
data TransactionCode = TransactionCode
  {
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransactionCode where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transactionCode")
instance ToJSON TransactionCode where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transactionCode")

