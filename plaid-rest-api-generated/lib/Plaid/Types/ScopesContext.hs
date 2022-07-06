
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.ScopesContext ( ScopesContext (..)  ) where

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

-- | An indicator for when scopes are being updated. When scopes are updated via enrollment (i.e. OAuth), the partner must send &#x60;ENROLLMENT&#x60;. When scopes are updated in a post-enrollment view, the partner must send &#x60;PORTAL&#x60;.
data ScopesContext = ScopesContext
  {
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ScopesContext where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "scopesContext")
instance ToJSON ScopesContext where
  toJSON = genericToJSON (removeFieldLabelPrefix False "scopesContext")

