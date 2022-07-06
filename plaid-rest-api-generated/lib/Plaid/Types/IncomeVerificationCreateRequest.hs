
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.IncomeVerificationCreateRequest ( IncomeVerificationCreateRequest (..)  ) where

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
import Plaid.Types.IncomeVerificationCreateRequestOptions

-- | IncomeVerificationCreateRequest defines the request schema for &#x60;/income/verification/create&#x60;
data IncomeVerificationCreateRequest = IncomeVerificationCreateRequest
  { incomeVerificationCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , incomeVerificationCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , incomeVerificationCreateRequestWebhook :: Text -- ^ The URL endpoint to which Plaid should send webhooks related to the progress of the income verification process.
  , incomeVerificationCreateRequestPrecheckUnderscoreid :: Maybe Text -- ^ The ID of a precheck created with `/income/verification/precheck`. Will be used to improve conversion of the income verification flow.
  , incomeVerificationCreateRequestOptions :: Maybe IncomeVerificationCreateRequestOptions -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IncomeVerificationCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "incomeVerificationCreateRequest")
instance ToJSON IncomeVerificationCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "incomeVerificationCreateRequest")

