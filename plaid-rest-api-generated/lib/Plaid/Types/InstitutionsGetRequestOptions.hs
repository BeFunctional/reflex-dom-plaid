{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.InstitutionsGetRequestOptions ( InstitutionsGetRequestOptions (..)  ) where

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
import Plaid.Types.Products

-- | An optional object to filter &#x60;/institutions/get&#x60; results.
data InstitutionsGetRequestOptions = InstitutionsGetRequestOptions
  { institutionsGetRequestOptionsProducts :: Maybe [Products] -- ^ Filter the Institutions based on which products they support. 
  , institutionsGetRequestOptionsRoutingUnderscorenumbers :: Maybe [Text] -- ^ Specify an array of routing numbers to filter institutions. The response will only return institutions that match all of the routing numbers in the array. Routing number records used for this matching are not comprehensive; failure to match a given routing number to an institution does not mean that the institution is unsupported by Plaid.
  , institutionsGetRequestOptionsOauth :: Maybe Bool -- ^ Limit results to institutions with or without OAuth login flows.
  , institutionsGetRequestOptionsIncludeUnderscoreoptionalUnderscoremetadata :: Maybe Bool -- ^ When `true`, return the institution's homepage URL, logo and primary brand color.  Note that Plaid does not own any of the logos shared by the API, and that by accessing or using these logos, you agree that you are doing so at your own risk and will, if necessary, obtain all required permissions from the appropriate rights holders and adhere to any applicable usage guidelines. Plaid disclaims all express or implied warranties with respect to the logos.
  , institutionsGetRequestOptionsIncludeUnderscoreauthUnderscoremetadata :: Maybe Bool -- ^ When `true`, returns metadata related to the Auth product indicating which auth methods are supported.
  , institutionsGetRequestOptionsIncludeUnderscorepaymentUnderscoreinitiationUnderscoremetadata :: Maybe Bool -- ^ When `true`, returns metadata related to the Payment Initiation product indicating which payment configurations are supported.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON InstitutionsGetRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "institutionsGetRequestOptions")
instance ToJSON InstitutionsGetRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "institutionsGetRequestOptions")

