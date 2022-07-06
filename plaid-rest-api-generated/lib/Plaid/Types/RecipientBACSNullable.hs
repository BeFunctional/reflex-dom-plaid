
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.RecipientBACSNullable ( RecipientBACSNullable (..)  ) where

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

-- | An object containing a BACS account number and sort code. If an IBAN is not provided or if this recipient needs to accept domestic GBP-denominated payments, BACS data is required.
data RecipientBACSNullable = RecipientBACSNullable
  { recipientBACSNullableAccount :: Maybe Text -- ^ The account number of the account. Maximum of 10 characters.
  , recipientBACSNullableSortUnderscorecode :: Maybe Text -- ^ The 6-character sort code of the account.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RecipientBACSNullable where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "recipientBACSNullable")
instance ToJSON RecipientBACSNullable where
  toJSON = genericToJSON (removeFieldLabelPrefix False "recipientBACSNullable")

