
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.IdentityVerificationTemplateReference ( IdentityVerificationTemplateReference (..)  ) where

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

-- | The resource ID and version number of the template configuring the behavior of a given identity verification.
data IdentityVerificationTemplateReference = IdentityVerificationTemplateReference
  { identityVerificationTemplateReferenceId :: Text -- ^ ID of the associated Identity Verification template.
  , identityVerificationTemplateReferenceVersion :: Double -- ^ Version of the associated Identity Verification template.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IdentityVerificationTemplateReference where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "identityVerificationTemplateReference")
instance ToJSON IdentityVerificationTemplateReference where
  toJSON = genericToJSON (removeFieldLabelPrefix False "identityVerificationTemplateReference")

