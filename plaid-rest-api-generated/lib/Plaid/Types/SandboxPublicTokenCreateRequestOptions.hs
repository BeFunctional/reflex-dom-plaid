{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.SandboxPublicTokenCreateRequestOptions ( SandboxPublicTokenCreateRequestOptions (..)  ) where

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
import Plaid.Types.SandboxPublicTokenCreateRequestOptionsTransactions

-- | An optional set of options to be used when configuring the Item. If specified, must not be &#x60;null&#x60;.
data SandboxPublicTokenCreateRequestOptions = SandboxPublicTokenCreateRequestOptions
  { sandboxPublicTokenCreateRequestOptionsWebhook :: Maybe Text -- ^ Specify a webhook to associate with the new Item.
  , sandboxPublicTokenCreateRequestOptionsOverrideUnderscoreusername :: Maybe Text -- ^ Test username to use for the creation of the Sandbox Item. Default value is `user_good`.
  , sandboxPublicTokenCreateRequestOptionsOverrideUnderscorepassword :: Maybe Text -- ^ Test password to use for the creation of the Sandbox Item. Default value is `pass_good`.
  , sandboxPublicTokenCreateRequestOptionsTransactions :: Maybe SandboxPublicTokenCreateRequestOptionsTransactions -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SandboxPublicTokenCreateRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "sandboxPublicTokenCreateRequestOptions")
instance ToJSON SandboxPublicTokenCreateRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "sandboxPublicTokenCreateRequestOptions")

