{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.VerificationStatus ( VerificationStatus (..)  ) where

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

-- | The verification status. One of the following:  &#x60;\&quot;VERIFIED\&quot;&#x60;: The information was successfully verified.  &#x60;\&quot;UNVERIFIED\&quot;&#x60;: The verification has not yet been performed.  &#x60;\&quot;NEEDS_INFO\&quot;&#x60;: The verification was attempted but could not be completed due to missing information.  \&quot;&#x60;UNABLE_TO_VERIFY&#x60;\&quot;: The verification was performed and the information could not be verified.  &#x60;\&quot;UNKNOWN\&quot;&#x60;: The verification status is unknown.
data VerificationStatus = VerificationStatus
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON VerificationStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "verificationStatus")
instance ToJSON VerificationStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "verificationStatus")

