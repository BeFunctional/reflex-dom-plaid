
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.AccountProductAccessNullable ( AccountProductAccessNullable (..)  ) where

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

-- | Allow the application to access specific products on this account
data AccountProductAccessNullable = AccountProductAccessNullable
  { accountProductAccessNullableAccountUnderscoredata :: Maybe Bool -- ^ Allow the application to access account data. Only used by certain partners. If relevant to the partner and unset, defaults to `true`.
  , accountProductAccessNullableStatements :: Maybe Bool -- ^ Allow the application to access bank statements. Only used by certain partners. If relevant to the partner and unset, defaults to `true`.
  , accountProductAccessNullableTaxUnderscoredocuments :: Maybe Bool -- ^ Allow the application to access tax documents. Only used by certain partners. If relevant to the partner and unset, defaults to `true`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AccountProductAccessNullable where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "accountProductAccessNullable")
instance ToJSON AccountProductAccessNullable where
  toJSON = genericToJSON (removeFieldLabelPrefix False "accountProductAccessNullable")

