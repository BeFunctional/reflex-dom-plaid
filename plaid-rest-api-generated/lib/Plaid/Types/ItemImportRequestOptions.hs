{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.ItemImportRequestOptions ( ItemImportRequestOptions (..)  ) where

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

-- | An optional object to configure &#x60;/item/import&#x60; request.
data ItemImportRequestOptions = ItemImportRequestOptions
  { itemImportRequestOptionsWebhook :: Maybe Text -- ^ Specifies a webhook URL to associate with an Item. Plaid fires a webhook if credentials fail. 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ItemImportRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "itemImportRequestOptions")
instance ToJSON ItemImportRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "itemImportRequestOptions")

