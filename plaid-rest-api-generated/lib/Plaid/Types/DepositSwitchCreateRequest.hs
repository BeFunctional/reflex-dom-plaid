
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.DepositSwitchCreateRequest ( DepositSwitchCreateRequest (..)  ) where

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
import Plaid.Types.DepositSwitchCreateRequestOptions

-- | DepositSwitchCreateRequest defines the request schema for &#x60;/deposit_switch/create&#x60;
data DepositSwitchCreateRequest = DepositSwitchCreateRequest
  { depositSwitchCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , depositSwitchCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , depositSwitchCreateRequestTargetUnderscoreaccessUnderscoretoken :: Text -- ^ Access token for the target Item, typically provided in the Import Item response. 
  , depositSwitchCreateRequestTargetUnderscoreaccountUnderscoreid :: Text -- ^ Plaid Account ID that specifies the target bank account. This account will become the recipient for a user's direct deposit.
  , depositSwitchCreateRequestCountryUnderscorecode :: Maybe Text -- ^ ISO-3166-1 alpha-2 country code standard.
  , depositSwitchCreateRequestOptions :: Maybe DepositSwitchCreateRequestOptions -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON DepositSwitchCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "depositSwitchCreateRequest")
instance ToJSON DepositSwitchCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "depositSwitchCreateRequest")

