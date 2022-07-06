
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.PlaidError ( PlaidError (..)  ) where

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

-- | We use standard HTTP response codes for success and failure notifications, and our errors are further classified by &#x60;error_type&#x60;. In general, 200 HTTP codes correspond to success, 40X codes are for developer- or user-related failures, and 50X codes are for Plaid-related issues.  Error fields will be &#x60;null&#x60; if no error has occurred.
data PlaidError = PlaidError
  { plaidErrorErrorUnderscoretype :: Text -- ^ A broad categorization of the error. Safe for programmatic use.
  , plaidErrorErrorUnderscorecode :: Text -- ^ The particular error code. Safe for programmatic use.
  , plaidErrorErrorUnderscoremessage :: Text -- ^ A developer-friendly representation of the error code. This may change over time and is not safe for programmatic use.
  , plaidErrorDisplayUnderscoremessage :: Text -- ^ A user-friendly representation of the error code. `null` if the error is not related to user action.  This may change over time and is not safe for programmatic use.
  , plaidErrorRequestUnderscoreid :: Maybe Text -- ^ A unique ID identifying the request, to be used for troubleshooting purposes. This field will be omitted in errors provided by webhooks.
  , plaidErrorCauses :: Maybe [Value] -- ^ In the Assets product, a request can pertain to more than one Item. If an error is returned for such a request, `causes` will return an array of errors containing a breakdown of these errors on the individual Item level, if any can be identified.  `causes` will only be provided for the `error_type` `ASSET_REPORT_ERROR`. `causes` will also not be populated inside an error nested within a `warning` object.
  , plaidErrorStatus :: Maybe Double -- ^ The HTTP status code associated with the error. This will only be returned in the response body when the error information is provided via a webhook.
  , plaidErrorDocumentationUnderscoreurl :: Maybe Text -- ^ The URL of a Plaid documentation page with more information about the error
  , plaidErrorSuggestedUnderscoreaction :: Maybe Text -- ^ Suggested steps for resolving the error
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PlaidError where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "plaidError")
instance ToJSON PlaidError where
  toJSON = genericToJSON (removeFieldLabelPrefix False "plaidError")

