{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}

{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.SyncUpdatesAvailableWebhook ( SyncUpdatesAvailableWebhook (..)  ) where

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

-- | Fired when an Item&#39;s transactions change. This can be due to any event resulting in new changes, such as an initial, historical, or default pull. After receipt of this webhook, the new changes can be fetched for the Item from &#x60;/transactions/sync&#x60;.  Note that to receive this webhook for an Item, &#x60;/transactions/sync&#x60; must have been called at least once on that Item.
newtype SyncUpdatesAvailableWebhook = SyncUpdatesAvailableWebhook { unSyncUpdatesAvailableWebhook :: Map.Map Text Value }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)


