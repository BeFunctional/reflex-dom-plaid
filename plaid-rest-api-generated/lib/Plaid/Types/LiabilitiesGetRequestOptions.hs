{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.LiabilitiesGetRequestOptions ( LiabilitiesGetRequestOptions (..)  ) where

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

-- | An optional object to filter &#x60;/liabilities/get&#x60; results. If provided, &#x60;options&#x60; cannot be null.
data LiabilitiesGetRequestOptions = LiabilitiesGetRequestOptions
  { liabilitiesGetRequestOptionsAccountUnderscoreids :: Maybe [Text] -- ^ A list of accounts to retrieve for the Item.  An error will be returned if a provided `account_id` is not associated with the Item
  } deriving (Show, Eq, Generic, Data)

instance FromJSON LiabilitiesGetRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "liabilitiesGetRequestOptions")
instance ToJSON LiabilitiesGetRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "liabilitiesGetRequestOptions")

