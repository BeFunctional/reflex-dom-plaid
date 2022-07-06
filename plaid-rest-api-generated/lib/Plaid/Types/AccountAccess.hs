
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.AccountAccess ( AccountAccess (..)  ) where

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
import Plaid.Types.AccountProductAccessNullable

-- | Allow or disallow product access by account. Unlisted (e.g. missing) accounts will be considered &#x60;new_accounts&#x60;.
data AccountAccess = AccountAccess
  { accountAccessUniqueUnderscoreid :: Text -- ^ The unique account identifier for this account. This value must match that returned by the data access API for this account.
  , accountAccessAuthorized :: Maybe Bool -- ^ Allow the application to see this account (and associated details, including balance) in the list of accounts  If unset, defaults to `true`.
  , accountAccessAccountUnderscoreproductUnderscoreaccess :: Maybe AccountProductAccessNullable -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AccountAccess where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "accountAccess")
instance ToJSON AccountAccess where
  toJSON = genericToJSON (removeFieldLabelPrefix False "accountAccess")

