
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.DocumentaryVerification ( DocumentaryVerification (..)  ) where

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
import Plaid.Types.DocumentaryVerificationDocument

-- | data, images, analysis, and results from the &#x60;documentary_verification&#x60; step.
data DocumentaryVerification = DocumentaryVerification
  { documentaryVerificationStatus :: Text -- ^ The outcome status for the associated Identity Verification attempt's `documentary_verification` step. This field will always have the same value as `steps.documentary_verification`.
  , documentaryVerificationDocuments :: [DocumentaryVerificationDocument] -- ^ An array of documents submitted to the `documentary_verification` step. Each entry represents one user submission, where each submission will contain both a front and back image, or just a front image, depending on the document type.  Note: Plaid will automatically let a user submit a new set of document images up to three times if we detect that a previous attempt might have failed due to user error. For example, if the first set of document images are blurry or obscured by glare, the user will be asked to capture their documents again, resulting in at least two separate entries within `documents`. If the overall `documentary_verification` is `failed`, the user has exhausted their retry attempts.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON DocumentaryVerification where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "documentaryVerification")
instance ToJSON DocumentaryVerification where
  toJSON = genericToJSON (removeFieldLabelPrefix False "documentaryVerification")

