
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.InstitutionsGetByIdRequestOptions ( InstitutionsGetByIdRequestOptions (..)  ) where

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

-- | Specifies optional parameters for &#x60;/institutions/get_by_id&#x60;. If provided, must not be &#x60;null&#x60;.
data InstitutionsGetByIdRequestOptions = InstitutionsGetByIdRequestOptions
  { institutionsGetByIdRequestOptionsIncludeUnderscoreoptionalUnderscoremetadata :: Maybe Bool -- ^ When `true`, return an institution's logo, brand color, and URL. When available, the bank's logo is returned as a base64 encoded 152x152 PNG, the brand color is in hexadecimal format. The default value is `false`.  Note that Plaid does not own any of the logos shared by the API and that by accessing or using these logos, you agree that you are doing so at your own risk and will, if necessary, obtain all required permissions from the appropriate rights holders and adhere to any applicable usage guidelines. Plaid disclaims all express or implied warranties with respect to the logos.
  , institutionsGetByIdRequestOptionsIncludeUnderscorestatus :: Maybe Bool -- ^ If `true`, the response will include status information about the institution. Default value is `false`.
  , institutionsGetByIdRequestOptionsIncludeUnderscoreauthUnderscoremetadata :: Maybe Bool -- ^ When `true`, returns metadata related to the Auth product indicating which auth methods are supported.
  , institutionsGetByIdRequestOptionsIncludeUnderscorepaymentUnderscoreinitiationUnderscoremetadata :: Maybe Bool -- ^ When `true`, returns metadata related to the Payment Initiation product indicating which payment configurations are supported.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON InstitutionsGetByIdRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "institutionsGetByIdRequestOptions")
instance ToJSON InstitutionsGetByIdRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "institutionsGetByIdRequestOptions")

