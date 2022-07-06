{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.ConnectedApplication ( ConnectedApplication (..)  ) where

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
import Plaid.Types.ScopesNullable

-- | Describes the connected application for a particular end user.
data ConnectedApplication = ConnectedApplication
  { connectedApplicationApplicationUnderscoreid :: Text -- ^ This field will map to the application ID that is returned from /item/applications/list, or provided to the institution in an oauth redirect.
  , connectedApplicationName :: Text -- ^ The name of the application
  , connectedApplicationDisplayUnderscorename :: Maybe Text -- ^ A human-readable name of the application for display purposes
  , connectedApplicationLogoUnderscoreurl :: Maybe Text -- ^ A URL that links to the application logo image.
  , connectedApplicationApplicationUnderscoreurl :: Maybe Text -- ^ The URL for the application's website
  , connectedApplicationReasonUnderscoreforUnderscoreaccess :: Maybe Text -- ^ A string provided by the connected app stating why they use their respective enabled products.
  , connectedApplicationCreatedUnderscoreat :: Day -- ^ The date this application was linked in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) (YYYY-MM-DD) format in UTC.
  , connectedApplicationScopes :: Maybe ScopesNullable -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ConnectedApplication where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "connectedApplication")
instance ToJSON ConnectedApplication where
  toJSON = genericToJSON (removeFieldLabelPrefix False "connectedApplication")

