
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.SandboxPublicTokenCreateRequest ( SandboxPublicTokenCreateRequest (..)  ) where

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
import Plaid.Types.Products
import Plaid.Types.SandboxPublicTokenCreateRequestOptions

-- | SandboxPublicTokenCreateRequest defines the request schema for &#x60;/sandbox/public_token/create&#x60;
data SandboxPublicTokenCreateRequest = SandboxPublicTokenCreateRequest
  { sandboxPublicTokenCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , sandboxPublicTokenCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , sandboxPublicTokenCreateRequestInstitutionUnderscoreid :: Text -- ^ The ID of the institution the Item will be associated with
  , sandboxPublicTokenCreateRequestInitialUnderscoreproducts :: [Products] -- ^ The products to initially pull for the Item. May be any products that the specified `institution_id`  supports. This array may not be empty.
  , sandboxPublicTokenCreateRequestOptions :: Maybe SandboxPublicTokenCreateRequestOptions -- ^ 
  , sandboxPublicTokenCreateRequestUserUnderscoretoken :: Maybe Text -- ^ The user token associated with the User data is being requested for.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SandboxPublicTokenCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "sandboxPublicTokenCreateRequest")
instance ToJSON SandboxPublicTokenCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "sandboxPublicTokenCreateRequest")

