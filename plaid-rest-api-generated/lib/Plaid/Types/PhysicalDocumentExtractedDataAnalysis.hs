{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.PhysicalDocumentExtractedDataAnalysis ( PhysicalDocumentExtractedDataAnalysis (..)  ) where

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
import Plaid.Types.DocumentNameMatchCode
import Plaid.Types.DocumentDateOfBirthMatchCode
import Plaid.Types.ExpirationDate
import Plaid.Types.IssuingCountry

-- | Analysis of the data extracted from the submitted document.
data PhysicalDocumentExtractedDataAnalysis = PhysicalDocumentExtractedDataAnalysis
  { physicalDocumentExtractedDataAnalysisName :: DocumentNameMatchCode -- ^ 
  , physicalDocumentExtractedDataAnalysisDateUnderscoreofUnderscorebirth :: DocumentDateOfBirthMatchCode -- ^ 
  , physicalDocumentExtractedDataAnalysisExpirationUnderscoredate :: ExpirationDate -- ^ 
  , physicalDocumentExtractedDataAnalysisIssuingUnderscorecountry :: IssuingCountry -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PhysicalDocumentExtractedDataAnalysis where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "physicalDocumentExtractedDataAnalysis")
instance ToJSON PhysicalDocumentExtractedDataAnalysis where
  toJSON = genericToJSON (removeFieldLabelPrefix False "physicalDocumentExtractedDataAnalysis")

