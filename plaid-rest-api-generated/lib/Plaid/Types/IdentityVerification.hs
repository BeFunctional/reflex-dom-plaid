
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.IdentityVerification ( IdentityVerification (..)  ) where

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
import Plaid.Types.IdentityVerificationTemplateReference
import Plaid.Types.IdentityVerificationUserData
import Plaid.Types.IdentityVerificationStatus
import Plaid.Types.IdentityVerificationStepSummary
import Plaid.Types.DocumentaryVerification
import Plaid.Types.KYCCheckDetails

-- | A identity verification attempt represents a customer&#39;s attempt to verify their identity, reflecting the required steps for completing the session, the results for each step, and information collected in the process.
data IdentityVerification = IdentityVerification
  { identityVerificationId :: Text -- ^ ID of the associated Identity Verification attempt.
  , identityVerificationClientUnderscoreuserUnderscoreid :: Text -- ^ An identifier to help you connect this object to your internal systems. For example, your database ID corresponding to this object.
  , identityVerificationCreatedUnderscoreat :: UTCTime -- ^ An ISO8601 formatted timestamp.
  , identityVerificationCompletedUnderscoreat :: UTCTime -- ^ An ISO8601 formatted timestamp.
  , identityVerificationPreviousUnderscoreattemptUnderscoreid :: Text -- ^ The ID for the Identity Verification preceding this session. This field will only be filled if the current Identity Verification is a retry of a previous attempt.
  , identityVerificationShareableUnderscoreurl :: Text -- ^ A shareable URL that can be sent directly to the user to complete verification
  , identityVerificationTemplate :: IdentityVerificationTemplateReference -- ^ 
  , identityVerificationUser :: IdentityVerificationUserData -- ^ 
  , identityVerificationStatus :: IdentityVerificationStatus -- ^ 
  , identityVerificationSteps :: IdentityVerificationStepSummary -- ^ 
  , identityVerificationDocumentaryUnderscoreverification :: DocumentaryVerification -- ^ 
  , identityVerificationKycUnderscorecheck :: KYCCheckDetails -- ^ 
  , identityVerificationWatchlistUnderscorescreeningUnderscoreid :: Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IdentityVerification where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "identityVerification")
instance ToJSON IdentityVerification where
  toJSON = genericToJSON (removeFieldLabelPrefix False "identityVerification")

