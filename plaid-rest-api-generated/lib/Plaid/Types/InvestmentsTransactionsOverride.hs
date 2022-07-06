
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.InvestmentsTransactionsOverride ( InvestmentsTransactionsOverride (..)  ) where

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

-- | Specify the list of investments transactions on the account.
data InvestmentsTransactionsOverride = InvestmentsTransactionsOverride
  { investmentsTransactionsOverrideDate :: Day -- ^ Posting date for the transaction. Must be formatted as an [ISO 8601](https://wikipedia.org/wiki/ISO_8601) date.
  , investmentsTransactionsOverrideName :: Text -- ^ The institution's description of the transaction.
  , investmentsTransactionsOverrideQuantity :: Double -- ^ The number of units of the security involved in this transaction. Must be positive if the type is a buy and negative if the type is a sell.
  , investmentsTransactionsOverridePrice :: Double -- ^ The price of the security at which this transaction occurred.
  , investmentsTransactionsOverrideFees :: Maybe Double -- ^ The combined value of all fees applied to this transaction.
  , investmentsTransactionsOverrideType :: Text -- ^ The type of the investment transaction. Possible values are: `buy`: Buying an investment `sell`: Selling an investment `cash`: Activity that modifies a cash position `fee`: A fee on the account `transfer`: Activity that modifies a position, but not through buy/sell activity e.g. options exercise, portfolio transfer
  , investmentsTransactionsOverrideCurrency :: Text -- ^ Either a valid `iso_currency_code` or `unofficial_currency_code`
  , investmentsTransactionsOverrideSecurity :: Maybe SecurityOverride -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON InvestmentsTransactionsOverride where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "investmentsTransactionsOverride")
instance ToJSON InvestmentsTransactionsOverride where
  toJSON = genericToJSON (removeFieldLabelPrefix False "investmentsTransactionsOverride")

