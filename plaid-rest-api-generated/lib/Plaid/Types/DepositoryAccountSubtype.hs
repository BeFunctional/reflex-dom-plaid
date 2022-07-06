
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.DepositoryAccountSubtype ( DepositoryAccountSubtype (..)  ) where

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

-- | Valid account subtypes for depository accounts. For a list containing descriptions of each subtype, see [Account schemas](https://plaid.com/docs/api/accounts/#StandaloneAccountType-depository).
data DepositoryAccountSubtype = DepositoryAccountSubtype
  {
  } deriving (Show, Eq, Generic, Data)

instance FromJSON DepositoryAccountSubtype where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "depositoryAccountSubtype")
instance ToJSON DepositoryAccountSubtype where
  toJSON = genericToJSON (removeFieldLabelPrefix False "depositoryAccountSubtype")

