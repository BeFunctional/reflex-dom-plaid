{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}

{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.IdentityVerificationCreateRequest ( IdentityVerificationCreateRequest (..)  ) where

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
import Plaid.Types.IdentityVerificationRequestUser

-- | Request schema for &#39;/identity_verification/create&#39;
data IdentityVerificationCreateRequest = IdentityVerificationCreateRequest
  { identityVerificationCreateRequestIsUnderscoreshareable :: Bool -- ^ A flag specifying whether you would like Plaid to expose a shareable URL for the verification being created.
  , identityVerificationCreateRequestTemplateUnderscoreid :: Text -- ^ ID of the associated Identity Verification template.
  , identityVerificationCreateRequestGaveUnderscoreconsent :: Bool -- ^ A flag specifying whether the end user has already agreed to a privacy policy specifying that their data will be shared with Plaid for verification purposes.  If `gave_consent` is set to `true`, the `accept_tos` step will be marked as `skipped` and the end user's session will start at the next step requirement.
  , identityVerificationCreateRequestUser :: IdentityVerificationRequestUser -- ^ 
  , identityVerificationCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , identityVerificationCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , identityVerificationCreateRequestIsUnderscoreidempotent :: Maybe Bool -- ^ An optional flag specifying how you would like Plaid to handle attempts to create an Identity Verification when an Identity Verification already exists for the provided `client_user_id` and `template_id`. If idempotency is enabled, Plaid will return the existing Identity Verification. If idempotency is disabled, Plaid will reject the request with a `400 Bad Request` status code if an Identity Verification already exists for the supplied `client_user_id` and `template_id`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IdentityVerificationCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "identityVerificationCreateRequest")
instance ToJSON IdentityVerificationCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "identityVerificationCreateRequest")

