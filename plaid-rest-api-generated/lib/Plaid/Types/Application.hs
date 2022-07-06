{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}

{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.Application ( Application (..)  ) where

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

-- | Metadata about the application
data Application = Application
  { applicationApplicationUnderscoreid :: Text -- ^ This field will map to the application ID that is returned from /item/applications/list, or provided to the institution in an oauth redirect.
  , applicationName :: Text -- ^ The name of the application
  , applicationDisplayUnderscorename :: Text -- ^ A human-readable name of the application for display purposes
  , applicationJoinUnderscoredate :: Day -- ^ The date this application was granted production access at Plaid in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) (YYYY-MM-DD) format in UTC.
  , applicationLogoUnderscoreurl :: Text -- ^ A URL that links to the application logo image.
  , applicationApplicationUnderscoreurl :: Text -- ^ The URL for the application's website
  , applicationReasonUnderscoreforUnderscoreaccess :: Text -- ^ A string provided by the connected app stating why they use their respective enabled products.
  , applicationUseUnderscorecase :: Text -- ^ A string representing client’s broad use case as assessed by Plaid.
  , applicationCompanyUnderscorelegalUnderscorename :: Text -- ^ A string representing the name of client’s legal entity.
  , applicationCity :: Text -- ^ A string representing the city of the client’s headquarters.
  , applicationRegion :: Text -- ^ A string representing the region of the client’s headquarters.
  , applicationPostalUnderscorecode :: Text -- ^ A string representing the postal code of the client’s headquarters.
  , applicationCountryUnderscorecode :: Text -- ^ A string representing the country code of the client’s headquarters.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON Application where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "application")
instance ToJSON Application where
  toJSON = genericToJSON (removeFieldLabelPrefix False "application")

