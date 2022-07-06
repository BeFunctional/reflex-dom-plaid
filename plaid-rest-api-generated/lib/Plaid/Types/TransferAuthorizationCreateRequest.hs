{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.TransferAuthorizationCreateRequest ( TransferAuthorizationCreateRequest (..)  ) where

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
import Plaid.Types.TransferType
import Plaid.Types.TransferNetwork
import Plaid.Types.ACHClass
import Plaid.Types.TransferUserInRequest
import Plaid.Types.TransferAuthorizationDevice

-- | Defines the request schema for &#x60;/transfer/authorization/create&#x60;
data TransferAuthorizationCreateRequest = TransferAuthorizationCreateRequest
  { transferAuthorizationCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , transferAuthorizationCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , transferAuthorizationCreateRequestAccessUnderscoretoken :: Text -- ^ The Plaid `access_token` for the account that will be debited or credited.
  , transferAuthorizationCreateRequestAccountUnderscoreid :: Text -- ^ The Plaid `account_id` for the account that will be debited or credited.
  , transferAuthorizationCreateRequestType :: TransferType -- ^ 
  , transferAuthorizationCreateRequestNetwork :: TransferNetwork -- ^ 
  , transferAuthorizationCreateRequestAmount :: Text -- ^ The amount of the transfer (decimal string with two digits of precision e.g. \"10.00\").
  , transferAuthorizationCreateRequestAchUnderscoreclass :: ACHClass -- ^ 
  , transferAuthorizationCreateRequestUser :: TransferUserInRequest -- ^ 
  , transferAuthorizationCreateRequestDevice :: Maybe TransferAuthorizationDevice -- ^ 
  , transferAuthorizationCreateRequestOriginationUnderscoreaccountUnderscoreid :: Maybe Text -- ^ Plaid's unique identifier for the origination account for this authorization. If not specified, the default account will be used.
  , transferAuthorizationCreateRequestIsoUnderscorecurrencyUnderscorecode :: Maybe Text -- ^ The currency of the transfer amount. The default value is \"USD\".
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferAuthorizationCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferAuthorizationCreateRequest")
instance ToJSON TransferAuthorizationCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferAuthorizationCreateRequest")

