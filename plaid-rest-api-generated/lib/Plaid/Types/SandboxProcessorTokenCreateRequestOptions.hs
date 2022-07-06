{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.SandboxProcessorTokenCreateRequestOptions ( SandboxProcessorTokenCreateRequestOptions (..)  ) where

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

-- | An optional set of options to be used when configuring the Item. If specified, must not be &#x60;null&#x60;.
data SandboxProcessorTokenCreateRequestOptions = SandboxProcessorTokenCreateRequestOptions
  { sandboxProcessorTokenCreateRequestOptionsOverrideUnderscoreusername :: Maybe Text -- ^ Test username to use for the creation of the Sandbox Item. Default value is `user_good`.
  , sandboxProcessorTokenCreateRequestOptionsOverrideUnderscorepassword :: Maybe Text -- ^ Test password to use for the creation of the Sandbox Item. Default value is `pass_good`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SandboxProcessorTokenCreateRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "sandboxProcessorTokenCreateRequestOptions")
instance ToJSON SandboxProcessorTokenCreateRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "sandboxProcessorTokenCreateRequestOptions")

