
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.IdentityVerificationRequestUser ( IdentityVerificationRequestUser (..)  ) where

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
import Plaid.Types.UserName
import Plaid.Types.UserAddress
import Plaid.Types.UserIDNumber

-- | User information collected outside of Link, most likely via your own onboarding process.  Each of the following identity fields are optional:  &#x60;email_address&#x60;  &#x60;phone_number&#x60;  &#x60;date_of_birth&#x60;  &#x60;name&#x60;  &#x60;address&#x60;  &#x60;id_number&#x60; Specifically, these fields are optional in that they can either be fully provided (satisfying every required field in their subschema) or omitted from the request entirely by not providing the key or value. Providing these fields via the API will result in Link skipping the data collection process for the associated user. All verification steps enabled in the associated Identity Verification Template will still be run. Verification steps will either be run immediately, or once the user completes the &#x60;accept_tos&#x60; step, depending on the value provided to the &#x60;gave_consent&#x60; field.
data IdentityVerificationRequestUser = IdentityVerificationRequestUser
  { identityVerificationRequestUserClientUnderscoreuserUnderscoreid :: Text -- ^ An identifier to help you connect this object to your internal systems. For example, your database ID corresponding to this object.
  , identityVerificationRequestUserEmailUnderscoreaddress :: Maybe Text -- ^ 
  , identityVerificationRequestUserPhoneUnderscorenumber :: Maybe Text -- ^ A phone number in E.164 format.
  , identityVerificationRequestUserDateUnderscoreofUnderscorebirth :: Maybe Day -- ^ A date in the format YYYY-MM-DD (RFC 3339 Section 5.6).
  , identityVerificationRequestUserName :: Maybe UserName -- ^ 
  , identityVerificationRequestUserAddress :: Maybe UserAddress -- ^ 
  , identityVerificationRequestUserIdUnderscorenumber :: Maybe UserIDNumber -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IdentityVerificationRequestUser where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "identityVerificationRequestUser")
instance ToJSON IdentityVerificationRequestUser where
  toJSON = genericToJSON (removeFieldLabelPrefix False "identityVerificationRequestUser")

