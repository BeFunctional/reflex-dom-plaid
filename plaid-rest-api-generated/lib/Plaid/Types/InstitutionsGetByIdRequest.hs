{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.InstitutionsGetByIdRequest ( InstitutionsGetByIdRequest (..)  ) where

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
import Plaid.Types.CountryCode
import Plaid.Types.InstitutionsGetByIdRequestOptions

-- | InstitutionsGetByIdRequest defines the request schema for &#x60;/institutions/get_by_id&#x60;
data InstitutionsGetByIdRequest = InstitutionsGetByIdRequest
  { institutionsGetByIdRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , institutionsGetByIdRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , institutionsGetByIdRequestInstitutionUnderscoreid :: Text -- ^ The ID of the institution to get details about
  , institutionsGetByIdRequestCountryUnderscorecodes :: [CountryCode] -- ^ Specify an array of Plaid-supported country codes this institution supports, using the ISO-3166-1 alpha-2 country code standard. In API versions 2019-05-29 and earlier, the `country_codes` parameter is an optional parameter within the `options` object and will default to `[US]` if it is not supplied. 
  , institutionsGetByIdRequestOptions :: Maybe InstitutionsGetByIdRequestOptions -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON InstitutionsGetByIdRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "institutionsGetByIdRequest")
instance ToJSON InstitutionsGetByIdRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "institutionsGetByIdRequest")

