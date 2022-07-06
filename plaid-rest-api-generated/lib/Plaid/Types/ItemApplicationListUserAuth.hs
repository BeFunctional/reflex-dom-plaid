
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.ItemApplicationListUserAuth ( ItemApplicationListUserAuth (..)  ) where

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

-- | User authentication parameters, for clients making a request without an &#x60;access_token&#x60;. This is only allowed for select clients and will not be supported in the future. Most clients should call /item/import to obtain an access token before making a request.
data ItemApplicationListUserAuth = ItemApplicationListUserAuth
  { itemApplicationListUserAuthUserUnderscoreid :: Maybe Text -- ^ Account username.
  , itemApplicationListUserAuthFiUnderscoreusernameUnderscorehash :: Maybe Text -- ^ Account username hashed by FI.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ItemApplicationListUserAuth where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "itemApplicationListUserAuth")
instance ToJSON ItemApplicationListUserAuth where
  toJSON = genericToJSON (removeFieldLabelPrefix False "itemApplicationListUserAuth")

