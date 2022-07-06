
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.InstitutionsSearchRequest ( InstitutionsSearchRequest (..)  ) where

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
import Plaid.Types.CountryCode
import Plaid.Types.InstitutionsSearchRequestOptions

-- | InstitutionsSearchRequest defines the request schema for &#x60;/institutions/search&#x60;
data InstitutionsSearchRequest = InstitutionsSearchRequest
  { institutionsSearchRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , institutionsSearchRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , institutionsSearchRequestQuery :: Text -- ^ The search query. Institutions with names matching the query are returned
  , institutionsSearchRequestProducts :: [Products] -- ^ Filter the Institutions based on whether they support all products listed in `products`. Provide `null` to get institutions regardless of supported products. Note that when `auth` is specified as a product, if you are enabled for Instant Match or Automated Micro-deposits, institutions that support those products will be returned even if `auth` is not present in their product array.
  , institutionsSearchRequestCountryUnderscorecodes :: [CountryCode] -- ^ Specify an array of Plaid-supported country codes this institution supports, using the ISO-3166-1 alpha-2 country code standard. In API versions 2019-05-29 and earlier, the `country_codes` parameter is an optional parameter within the `options` object and will default to `[US]` if it is not supplied. 
  , institutionsSearchRequestOptions :: Maybe InstitutionsSearchRequestOptions -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON InstitutionsSearchRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "institutionsSearchRequest")
instance ToJSON InstitutionsSearchRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "institutionsSearchRequest")

