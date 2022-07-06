
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.SandboxProcessorTokenCreateRequest ( SandboxProcessorTokenCreateRequest (..)  ) where

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
import Plaid.Types.SandboxProcessorTokenCreateRequestOptions

-- | SandboxProcessorTokenCreateRequest defines the request schema for &#x60;/sandbox/processor_token/create&#x60;
data SandboxProcessorTokenCreateRequest = SandboxProcessorTokenCreateRequest
  { sandboxProcessorTokenCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , sandboxProcessorTokenCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , sandboxProcessorTokenCreateRequestInstitutionUnderscoreid :: Text -- ^ The ID of the institution the Item will be associated with
  , sandboxProcessorTokenCreateRequestOptions :: Maybe SandboxProcessorTokenCreateRequestOptions -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SandboxProcessorTokenCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "sandboxProcessorTokenCreateRequest")
instance ToJSON SandboxProcessorTokenCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "sandboxProcessorTokenCreateRequest")

