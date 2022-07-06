
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.IncomeVerificationDocumentsDownloadRequest ( IncomeVerificationDocumentsDownloadRequest (..)  ) where

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

-- | IncomeVerificationDocumentsDownloadRequest defines the request schema for &#x60;/income/verification/documents/download&#x60;.
data IncomeVerificationDocumentsDownloadRequest = IncomeVerificationDocumentsDownloadRequest
  { incomeVerificationDocumentsDownloadRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , incomeVerificationDocumentsDownloadRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , incomeVerificationDocumentsDownloadRequestIncomeUnderscoreverificationUnderscoreid :: Maybe Text -- ^ The ID of the verification.
  , incomeVerificationDocumentsDownloadRequestAccessUnderscoretoken :: Maybe Text -- ^ The access token associated with the Item data is being requested for.
  , incomeVerificationDocumentsDownloadRequestDocumentUnderscoreid :: Maybe Text -- ^ The document ID to download. If passed, a single document will be returned in the resulting zip file, rather than all document
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IncomeVerificationDocumentsDownloadRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "incomeVerificationDocumentsDownloadRequest")
instance ToJSON IncomeVerificationDocumentsDownloadRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "incomeVerificationDocumentsDownloadRequest")

