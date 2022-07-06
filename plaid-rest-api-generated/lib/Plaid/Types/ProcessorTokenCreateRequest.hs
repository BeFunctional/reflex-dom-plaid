
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.ProcessorTokenCreateRequest ( ProcessorTokenCreateRequest (..)  ) where

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

-- | ProcessorTokenCreateRequest defines the request schema for &#x60;/processor/token/create&#x60;
data ProcessorTokenCreateRequest = ProcessorTokenCreateRequest
  { processorTokenCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , processorTokenCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , processorTokenCreateRequestAccessUnderscoretoken :: Text -- ^ The access token associated with the Item data is being requested for.
  , processorTokenCreateRequestAccountUnderscoreid :: Text -- ^ The `account_id` value obtained from the `onSuccess` callback in Link
  , processorTokenCreateRequestProcessor :: Text -- ^ The processor you are integrating with.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ProcessorTokenCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "processorTokenCreateRequest")
instance ToJSON ProcessorTokenCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "processorTokenCreateRequest")

