{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.LinkTokenCreateRequestTransfer ( LinkTokenCreateRequestTransfer (..)  ) where

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

-- | Specifies options for initializing Link for use with the Transfer product.
data LinkTokenCreateRequestTransfer = LinkTokenCreateRequestTransfer
  { linkTokenCreateRequestTransferIntentUnderscoreid :: Maybe Text -- ^ The `id` returned by the `/transfer/intent/create` endpoint.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON LinkTokenCreateRequestTransfer where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "linkTokenCreateRequestTransfer")
instance ToJSON LinkTokenCreateRequestTransfer where
  toJSON = genericToJSON (removeFieldLabelPrefix False "linkTokenCreateRequestTransfer")

