{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.IdentityVerificationStatus ( IdentityVerificationStatus (..)  ) where

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

-- | The status of this Identity Verification attempt.   &#x60;active&#x60; - The Identity Verification attempt is incomplete. The user may have completed part of the session, but has neither failed or passed.  &#x60;success&#x60; - The Identity Verification attempt has completed, passing all steps defined to the associated Identity Verification template  &#x60;failed&#x60; - The user failed one or more steps in the session and was told to contact support.  &#x60;expired&#x60; - The Identity Verification attempt was active for more than 48 hours without being completed and was automatically marked as expired.  &#x60;canceled&#x60; - The Identity Verification attempt was canceled, either via the dashboard by a user, or via API. The user may have completed part of the session, but has neither failed or passed.  &#x60;pending_review&#x60; - The Identity Verification attempt template was configured to perform a screening that had one or more hits needing review.
data IdentityVerificationStatus = IdentityVerificationStatus
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IdentityVerificationStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "identityVerificationStatus")
instance ToJSON IdentityVerificationStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "identityVerificationStatus")

