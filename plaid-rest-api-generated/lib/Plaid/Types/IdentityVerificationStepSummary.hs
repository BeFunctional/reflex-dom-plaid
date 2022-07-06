{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.IdentityVerificationStepSummary ( IdentityVerificationStepSummary (..)  ) where

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
import Plaid.Types.IdentityVerificationStepStatus
import Plaid.Types.IdentityVerificationStepStatus
import Plaid.Types.IdentityVerificationStepStatus
import Plaid.Types.IdentityVerificationStepStatus
import Plaid.Types.IdentityVerificationStepStatus
import Plaid.Types.IdentityVerificationStepStatus
import Plaid.Types.IdentityVerificationStepStatus

-- | Each step will be one of the following values:   &#x60;active&#x60; - This step is the user&#39;s current step. They are either in the process of completing this step, or they recently closed their Identity Verification attempt while in the middle of this step. Only one step will be marked as &#x60;active&#x60; at any given point.  &#x60;success&#x60; - The Identity Verification attempt has completed this step.  &#x60;failed&#x60; - The user failed this step. This can either call the user to fail the session as a whole, or cause them to fallback to another step depending on how the Identity Verification template is configured. A failed step does not imply a failed session.  &#x60;waiting_for_prerequisite&#x60; - The user needs to complete another step first, before they progress to this step. This step may never run, depending on if the user fails an earlier step or if the step is only run as a fallback.  &#x60;not_applicable&#x60; - This step will not be run for this session.  &#x60;skipped&#x60; - The retry instructions that created this Identity Verification attempt specified that this step should be skipped.  &#x60;expired&#x60; - This step had not yet been completed when the Identity Verification attempt as a whole expired.  &#x60;canceled&#x60; - The Identity Verification attempt was canceled before the user completed this step.  &#x60;pending_review&#x60; - The Identity Verification attempt template was configured to perform a screening that had one or more hits needing review.  &#x60;manually_approved&#x60; - The step was manually overridden to pass by a team member in the dashboard.  &#x60;manually_rejected&#x60; - The step was manually overridden to fail by a team member in the dashboard.
data IdentityVerificationStepSummary = IdentityVerificationStepSummary
  { identityVerificationStepSummaryAcceptUnderscoretos :: IdentityVerificationStepStatus -- ^ 
  , identityVerificationStepSummaryVerifyUnderscoresms :: IdentityVerificationStepStatus -- ^ 
  , identityVerificationStepSummaryKycUnderscorecheck :: IdentityVerificationStepStatus -- ^ 
  , identityVerificationStepSummaryDocumentaryUnderscoreverification :: IdentityVerificationStepStatus -- ^ 
  , identityVerificationStepSummarySelfieUnderscorecheck :: IdentityVerificationStepStatus -- ^ 
  , identityVerificationStepSummaryWatchlistUnderscorescreening :: IdentityVerificationStepStatus -- ^ 
  , identityVerificationStepSummaryRiskUnderscorecheck :: IdentityVerificationStepStatus -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IdentityVerificationStepSummary where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "identityVerificationStepSummary")
instance ToJSON IdentityVerificationStepSummary where
  toJSON = genericToJSON (removeFieldLabelPrefix False "identityVerificationStepSummary")

