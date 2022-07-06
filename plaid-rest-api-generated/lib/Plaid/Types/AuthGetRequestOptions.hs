
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.AuthGetRequestOptions ( AuthGetRequestOptions (..)  ) where

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

-- | An optional object to filter &#x60;/auth/get&#x60; results.
data AuthGetRequestOptions = AuthGetRequestOptions
  { authGetRequestOptionsAccountUnderscoreids :: Maybe [Text] -- ^ A list of `account_ids` to retrieve for the Item. Note: An error will be returned if a provided `account_id` is not associated with the Item.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AuthGetRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "authGetRequestOptions")
instance ToJSON AuthGetRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "authGetRequestOptions")

