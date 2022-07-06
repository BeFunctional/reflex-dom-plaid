{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.IdentityVerificationRetryRequestStepsObject ( IdentityVerificationRetryRequestStepsObject (..)  ) where

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

-- | Instructions for the &#x60;custom&#x60; retry strategy specifying which steps should be required or skipped.   Note:   This field must be provided when the retry strategy is &#x60;custom&#x60; and must be omitted otherwise.  Custom retries override settings in your Plaid Template. For example, if your Plaid Template has &#x60;verify_sms&#x60; disabled, a custom retry with &#x60;verify_sms&#x60; enabled will still require the step.  The &#x60;selfie_check&#x60; step is currently not supported on the sandbox server. Sandbox requests will silently disable the &#x60;selfie_check&#x60; step when provided.
data IdentityVerificationRetryRequestStepsObject = IdentityVerificationRetryRequestStepsObject
  { identityVerificationRetryRequestStepsObjectVerifyUnderscoresms :: Bool -- ^ A boolean field specifying whether the new session should require or skip the `verify_sms` step.
  , identityVerificationRetryRequestStepsObjectKycUnderscorecheck :: Bool -- ^ A boolean field specifying whether the new session should require or skip the `kyc_check` step.
  , identityVerificationRetryRequestStepsObjectDocumentaryUnderscoreverification :: Bool -- ^ A boolean field specifying whether the new session should require or skip the `documentary_verification` step.
  , identityVerificationRetryRequestStepsObjectSelfieUnderscorecheck :: Bool -- ^ A boolean field specifying whether the new session should require or skip the `selfie_check` step.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IdentityVerificationRetryRequestStepsObject where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "identityVerificationRetryRequestStepsObject")
instance ToJSON IdentityVerificationRetryRequestStepsObject where
  toJSON = genericToJSON (removeFieldLabelPrefix False "identityVerificationRetryRequestStepsObject")

