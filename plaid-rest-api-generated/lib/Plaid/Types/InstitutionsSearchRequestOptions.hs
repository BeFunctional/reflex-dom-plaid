{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.InstitutionsSearchRequestOptions ( InstitutionsSearchRequestOptions (..)  ) where

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
import Plaid.Types.InstitutionsSearchPaymentInitiationOptions

-- | An optional object to filter &#x60;/institutions/search&#x60; results.
data InstitutionsSearchRequestOptions = InstitutionsSearchRequestOptions
  { institutionsSearchRequestOptionsOauth :: Maybe Bool -- ^ Limit results to institutions with or without OAuth login flows.
  , institutionsSearchRequestOptionsIncludeUnderscoreoptionalUnderscoremetadata :: Maybe Bool -- ^ When true, return the institution's homepage URL, logo and primary brand color.
  , institutionsSearchRequestOptionsIncludeUnderscoreauthUnderscoremetadata :: Maybe Bool -- ^ When `true`, returns metadata related to the Auth product indicating which auth methods are supported.
  , institutionsSearchRequestOptionsIncludeUnderscorepaymentUnderscoreinitiationUnderscoremetadata :: Maybe Bool -- ^ When `true`, returns metadata related to the Payment Initiation product indicating which payment configurations are supported.
  , institutionsSearchRequestOptionsPaymentUnderscoreinitiation :: Maybe InstitutionsSearchPaymentInitiationOptions -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON InstitutionsSearchRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "institutionsSearchRequestOptions")
instance ToJSON InstitutionsSearchRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "institutionsSearchRequestOptions")

