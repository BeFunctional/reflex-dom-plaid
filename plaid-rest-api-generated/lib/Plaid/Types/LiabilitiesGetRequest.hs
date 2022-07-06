{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.LiabilitiesGetRequest ( LiabilitiesGetRequest (..)  ) where

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
import Plaid.Types.LiabilitiesGetRequestOptions

-- | LiabilitiesGetRequest defines the request schema for &#x60;/liabilities/get&#x60;
data LiabilitiesGetRequest = LiabilitiesGetRequest
  { liabilitiesGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , liabilitiesGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , liabilitiesGetRequestAccessUnderscoretoken :: Text -- ^ The access token associated with the Item data is being requested for.
  , liabilitiesGetRequestOptions :: Maybe LiabilitiesGetRequestOptions -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON LiabilitiesGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "liabilitiesGetRequest")
instance ToJSON LiabilitiesGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "liabilitiesGetRequest")

