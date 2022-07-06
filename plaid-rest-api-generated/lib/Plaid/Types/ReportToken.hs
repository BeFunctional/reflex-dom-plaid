{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}

{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.ReportToken ( ReportToken (..)  ) where

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

-- | ReportToken is a representation of a token that has a &#x60;report_type&#x60; field that can be one of &#x60;assets&#x60; or &#x60;income&#x60; and a &#x60;token&#x60; field which is the associated token with the &#x60;report_type&#x60;. The &#x60;token&#x60; can be an Asset Report token or Income Report token.
newtype ReportToken = ReportToken { unReportToken :: Map.Map Text Value }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)


