{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.SecurityOverride ( SecurityOverride (..)  ) where

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

-- | Specify the security associated with the holding or investment transaction. When inputting custom security data to the Sandbox, Plaid will perform post-data-retrieval normalization and enrichment. These processes may cause the data returned by the Sandbox to be slightly different from the data you input. An ISO-4217 currency code and a security identifier (&#x60;ticker_symbol&#x60;, &#x60;cusip&#x60;, &#x60;isin&#x60;, or &#x60;sedol&#x60;) are required.
data SecurityOverride = SecurityOverride
  { securityOverrideIsin :: Maybe Text -- ^ 12-character ISIN, a globally unique securities identifier.
  , securityOverrideCusip :: Maybe Text -- ^ 9-character CUSIP, an identifier assigned to North American securities.
  , securityOverrideSedol :: Maybe Text -- ^ 7-character SEDOL, an identifier assigned to securities in the UK.
  , securityOverrideName :: Maybe Text -- ^ A descriptive name for the security, suitable for display.
  , securityOverrideTickerUnderscoresymbol :: Maybe Text -- ^ The security’s trading symbol for publicly traded securities, and otherwise a short identifier if available.
  , securityOverrideCurrency :: Maybe Text -- ^ Either a valid `iso_currency_code` or `unofficial_currency_code`
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SecurityOverride where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "securityOverride")
instance ToJSON SecurityOverride where
  toJSON = genericToJSON (removeFieldLabelPrefix False "securityOverride")

