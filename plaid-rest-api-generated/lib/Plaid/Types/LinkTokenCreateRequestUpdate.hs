
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.LinkTokenCreateRequestUpdate ( LinkTokenCreateRequestUpdate (..)  ) where

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

-- | Specifies options for initializing Link for [update mode](https://plaid.com/docs/link/update-mode).
data LinkTokenCreateRequestUpdate = LinkTokenCreateRequestUpdate
  { linkTokenCreateRequestUpdateAccountUnderscoreselectionUnderscoreenabled :: Maybe Bool -- ^ If `true`, enables [update mode with Account Select](https://plaid.com/docs/link/update-mode/#using-update-mode-to-request-new-accounts).
  } deriving (Show, Eq, Generic, Data)

instance FromJSON LinkTokenCreateRequestUpdate where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "linkTokenCreateRequestUpdate")
instance ToJSON LinkTokenCreateRequestUpdate where
  toJSON = genericToJSON (removeFieldLabelPrefix False "linkTokenCreateRequestUpdate")

