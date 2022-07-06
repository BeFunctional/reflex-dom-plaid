{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.UserIDNumber ( UserIDNumber (..)  ) where

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
import Plaid.Types.IDNumberType

-- | ID number submitted by the user, currently used only for the Identity Verification product. If the user has not submitted this data yet, this field will be &#x60;null&#x60;. Otherwise, both fields are guaranteed to be filled.
data UserIDNumber = UserIDNumber
  { userIDNumberValue :: Text -- ^ Value of identity document value typed in by user. Alpha-numeric, with all formatting characters stripped.
  , userIDNumberType :: IDNumberType -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON UserIDNumber where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "userIDNumber")
instance ToJSON UserIDNumber where
  toJSON = genericToJSON (removeFieldLabelPrefix False "userIDNumber")

