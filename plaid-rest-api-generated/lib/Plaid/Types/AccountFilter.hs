
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.AccountFilter ( AccountFilter (..)  ) where

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

-- | Enumerates the account subtypes that the application wishes for the user to be able to select from. For more details refer to Plaid documentation on account filters.
data AccountFilter = AccountFilter
  { accountFilterDepository :: Maybe [Text] -- ^ A list of account subtypes to be filtered.
  , accountFilterCredit :: Maybe [Text] -- ^ A list of account subtypes to be filtered.
  , accountFilterLoan :: Maybe [Text] -- ^ A list of account subtypes to be filtered.
  , accountFilterInvestment :: Maybe [Text] -- ^ A list of account subtypes to be filtered.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AccountFilter where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "accountFilter")
instance ToJSON AccountFilter where
  toJSON = genericToJSON (removeFieldLabelPrefix False "accountFilter")

