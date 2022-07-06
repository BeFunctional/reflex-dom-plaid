{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.IdentityVerificationUserData ( IdentityVerificationUserData (..)  ) where

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
import Plaid.Types.IdentityVerificationUserAddress
import Plaid.Types.UserIDNumber

-- | The identity data that was either collected from the user or provided via API in order to perform an identity verification.
data IdentityVerificationUserData = IdentityVerificationUserData
  { identityVerificationUserDataPhoneUnderscorenumber :: Text -- ^ A phone number in E.164 format.
  , identityVerificationUserDataDateUnderscoreofUnderscorebirth :: Day -- ^ A date in the format YYYY-MM-DD (RFC 3339 Section 5.6).
  , identityVerificationUserDataIpUnderscoreaddress :: Text -- ^ An IPv4 or IPV6 address.
  , identityVerificationUserDataEmailUnderscoreaddress :: Text -- ^ 
  , identityVerificationUserDataName :: UserName -- ^ 
  , identityVerificationUserDataAddress :: IdentityVerificationUserAddress -- ^ 
  , identityVerificationUserDataIdUnderscorenumber :: UserIDNumber -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IdentityVerificationUserData where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "identityVerificationUserData")
instance ToJSON IdentityVerificationUserData where
  toJSON = genericToJSON (removeFieldLabelPrefix False "identityVerificationUserData")

