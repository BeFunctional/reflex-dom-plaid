{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}

{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.AccountsGetRequestOptions ( AccountsGetRequestOptions (..)  ) where

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

-- | An optional object to filter &#x60;/accounts/get&#x60; results.
data AccountsGetRequestOptions = AccountsGetRequestOptions
  { accountsGetRequestOptionsAccountUnderscoreids :: Maybe [Text] -- ^ An array of `account_ids` to retrieve for the Account.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AccountsGetRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "accountsGetRequestOptions")
instance ToJSON AccountsGetRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "accountsGetRequestOptions")

