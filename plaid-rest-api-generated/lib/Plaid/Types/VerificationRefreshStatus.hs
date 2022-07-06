
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.VerificationRefreshStatus ( VerificationRefreshStatus (..)  ) where

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

-- | The verification refresh status. One of the following:  &#x60;\&quot;VERIFICATION_REFRESH_STATUS_USER_PRESENCE_REQUIRED\&quot;&#x60; User presence is required to refresh an income verification. &#x60;\&quot;VERIFICATION_REFRESH_SUCCESSFUL\&quot;&#x60; The income verification refresh was successful. &#x60;\&quot;VERIFICATION_REFRESH_NOT_FOUND\&quot;&#x60; No new data was found after the income verification refresh.
data VerificationRefreshStatus = VerificationRefreshStatus
  {
  } deriving (Show, Eq, Generic, Data)

instance FromJSON VerificationRefreshStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "verificationRefreshStatus")
instance ToJSON VerificationRefreshStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "verificationRefreshStatus")

