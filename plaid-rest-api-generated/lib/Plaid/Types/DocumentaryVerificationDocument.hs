
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.DocumentaryVerificationDocument ( DocumentaryVerificationDocument (..)  ) where

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
import Plaid.Types.DocumentStatus
import Plaid.Types.PhysicalDocumentImages
import Plaid.Types.PhysicalDocumentExtractedData
import Plaid.Types.DocumentAnalysis

-- | Images, extracted data, and analysis from a user&#39;s identity document
data DocumentaryVerificationDocument = DocumentaryVerificationDocument
  { documentaryVerificationDocumentStatus :: DocumentStatus -- ^ 
  , documentaryVerificationDocumentAttempt :: Double -- ^ The `attempt` field begins with 1 and increments with each subsequent document upload.
  , documentaryVerificationDocumentImages :: PhysicalDocumentImages -- ^ 
  , documentaryVerificationDocumentExtractedUnderscoredata :: PhysicalDocumentExtractedData -- ^ 
  , documentaryVerificationDocumentAnalysis :: DocumentAnalysis -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON DocumentaryVerificationDocument where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "documentaryVerificationDocument")
instance ToJSON DocumentaryVerificationDocument where
  toJSON = genericToJSON (removeFieldLabelPrefix False "documentaryVerificationDocument")

