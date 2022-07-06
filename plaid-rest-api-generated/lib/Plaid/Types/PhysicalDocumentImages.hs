{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.PhysicalDocumentImages ( PhysicalDocumentImages (..)  ) where

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

-- | URLs for downloading original and cropped images for this document submission. The URLs are designed to only allow downloading, not hot linking, so the URL will only serve the document image for 60 seconds before expiring. The expiration time is 60 seconds after the &#x60;GET&#x60; request for the associated Identity Verification attempt. A new expiring URL is generated with each request, so you can always rerequest the Identity Verification attempt if one of your URLs expires.
data PhysicalDocumentImages = PhysicalDocumentImages
  { physicalDocumentImagesOriginalUnderscorefront :: Text -- ^ Temporary URL that expires after 60 seconds for downloading the uncropped original image of the front of the document.
  , physicalDocumentImagesOriginalUnderscoreback :: Text -- ^ Temporary URL that expires after 60 seconds for downloading the original image of the back of the document. Might be null if the back of the document was not collected.
  , physicalDocumentImagesCroppedUnderscorefront :: Text -- ^ Temporary URL that expires after 60 seconds for downloading a cropped image containing just the front of the document.
  , physicalDocumentImagesCroppedUnderscoreback :: Text -- ^ Temporary URL that expires after 60 seconds for downloading a cropped image containing just the back of the document. Might be null if the back of the document was not collected.
  , physicalDocumentImagesFace :: Text -- ^ Temporary URL that expires after 60 seconds for downloading a crop of just the user's face from the document image. Might be null if the document does not contain a face photo.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PhysicalDocumentImages where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "physicalDocumentImages")
instance ToJSON PhysicalDocumentImages where
  toJSON = genericToJSON (removeFieldLabelPrefix False "physicalDocumentImages")

