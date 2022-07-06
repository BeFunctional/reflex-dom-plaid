
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.ItemApplicationScopesUpdateRequest ( ItemApplicationScopesUpdateRequest (..)  ) where

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
import Plaid.Types.Scopes
import Plaid.Types.ScopesContext

-- | ItemApplicationScopesUpdateRequest defines the request schema for &#x60;/item/application/scopes/update&#x60;
data ItemApplicationScopesUpdateRequest = ItemApplicationScopesUpdateRequest
  { itemApplicationScopesUpdateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , itemApplicationScopesUpdateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , itemApplicationScopesUpdateRequestAccessUnderscoretoken :: Text -- ^ The access token associated with the Item data is being requested for.
  , itemApplicationScopesUpdateRequestApplicationUnderscoreid :: Text -- ^ This field will map to the application ID that is returned from /item/applications/list, or provided to the institution in an oauth redirect.
  , itemApplicationScopesUpdateRequestScopes :: Scopes -- ^ 
  , itemApplicationScopesUpdateRequestState :: Maybe Text -- ^ When scopes are updated during enrollment, this field must be populated with the state sent to the partner in the OAuth Login URI. This field is required when the context is `ENROLLMENT`.
  , itemApplicationScopesUpdateRequestContext :: ScopesContext -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ItemApplicationScopesUpdateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "itemApplicationScopesUpdateRequest")
instance ToJSON ItemApplicationScopesUpdateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "itemApplicationScopesUpdateRequest")

