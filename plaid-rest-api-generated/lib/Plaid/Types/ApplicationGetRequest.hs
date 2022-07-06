
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.ApplicationGetRequest ( ApplicationGetRequest (..)  ) where

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

-- | ApplicationGetRequest defines the schema for &#x60;/application/get&#x60;
data ApplicationGetRequest = ApplicationGetRequest
  { applicationGetRequestClientUnderscoreid :: Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , applicationGetRequestSecret :: Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , applicationGetRequestApplicationUnderscoreid :: Text -- ^ This field will map to the application ID that is returned from /item/applications/list, or provided to the institution in an oauth redirect.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ApplicationGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "applicationGetRequest")
instance ToJSON ApplicationGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "applicationGetRequest")

