{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.ScopesNullable ( ScopesNullable (..)  ) where

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
import Plaid.Types.ProductAccess
import Plaid.Types.AccountAccess

-- | The scopes object
data ScopesNullable = ScopesNullable
  { scopesNullableProductUnderscoreaccess :: Maybe ProductAccess -- ^ 
  , scopesNullableAccounts :: Maybe [AccountAccess] -- ^ 
  , scopesNullableNewUnderscoreaccounts :: Maybe Bool -- ^ Allow access to newly opened accounts as they are opened. If unset, defaults to `true`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ScopesNullable where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "scopesNullable")
instance ToJSON ScopesNullable where
  toJSON = genericToJSON (removeFieldLabelPrefix False "scopesNullable")
