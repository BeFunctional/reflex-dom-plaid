
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.SignalPersonName ( SignalPersonName (..)  ) where

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

-- | The user&#39;s legal name
data SignalPersonName = SignalPersonName
  { signalPersonNamePrefix :: Maybe Text -- ^ The user's name prefix (e.g. \"Mr.\")
  , signalPersonNameGivenUnderscorename :: Maybe Text -- ^ The user's given name. If the user has a one-word name, it should be provided in this field.
  , signalPersonNameMiddleUnderscorename :: Maybe Text -- ^ The user's middle name
  , signalPersonNameFamilyUnderscorename :: Maybe Text -- ^ The user's family name / surname
  , signalPersonNameSuffix :: Maybe Text -- ^ The user's name suffix (e.g. \"II\")
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SignalPersonName where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "signalPersonName")
instance ToJSON SignalPersonName where
  toJSON = genericToJSON (removeFieldLabelPrefix False "signalPersonName")

