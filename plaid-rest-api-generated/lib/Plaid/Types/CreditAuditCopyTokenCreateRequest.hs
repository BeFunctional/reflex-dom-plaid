{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.CreditAuditCopyTokenCreateRequest ( CreditAuditCopyTokenCreateRequest (..)  ) where

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
import Plaid.Types.ReportToken

-- | CreditAuditCopyTokenCreateRequest defines the request schema for &#x60;/credit/audit_copy_token/create&#x60;
data CreditAuditCopyTokenCreateRequest = CreditAuditCopyTokenCreateRequest
  { creditAuditCopyTokenCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , creditAuditCopyTokenCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , creditAuditCopyTokenCreateRequestReportUnderscoretokens :: [ReportToken] -- ^ List of report tokens; can include both Asset Report tokens and Income Report tokens.
  , creditAuditCopyTokenCreateRequestAuditorUnderscoreid :: Text -- ^ The `auditor_id` of the third party with whom you would like to share the Asset Report and/or Income Report.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditAuditCopyTokenCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditAuditCopyTokenCreateRequest")
instance ToJSON CreditAuditCopyTokenCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditAuditCopyTokenCreateRequest")

