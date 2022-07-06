{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}

{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.HoldingsOverride ( HoldingsOverride (..)  ) where

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
import Plaid.Types.SecurityOverride

-- | Specify the holdings on the account.
data HoldingsOverride = HoldingsOverride
  { holdingsOverrideInstitutionUnderscoreprice :: Double -- ^ The last price given by the institution for this security
  , holdingsOverrideInstitutionUnderscorepriceUnderscoreasUnderscoreof :: Maybe Day -- ^ The date at which `institution_price` was current. Must be formatted as an [ISO 8601](https://wikipedia.org/wiki/ISO_8601) date.
  , holdingsOverrideCostUnderscorebasis :: Maybe Double -- ^ The average original value of the holding. Multiple cost basis values for the same security purchased at different prices are not supported.
  , holdingsOverrideQuantity :: Double -- ^ The total quantity of the asset held, as reported by the financial institution.
  , holdingsOverrideCurrency :: Text -- ^ Either a valid `iso_currency_code` or `unofficial_currency_code`
  , holdingsOverrideSecurity :: SecurityOverride -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON HoldingsOverride where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "holdingsOverride")
instance ToJSON HoldingsOverride where
  toJSON = genericToJSON (removeFieldLabelPrefix False "holdingsOverride")

