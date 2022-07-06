{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.BankTransferMigrateAccountRequest ( BankTransferMigrateAccountRequest (..)  ) where

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

-- | Defines the request schema for &#x60;/bank_transfer/migrate_account&#x60;
data BankTransferMigrateAccountRequest = BankTransferMigrateAccountRequest
  { bankTransferMigrateAccountRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , bankTransferMigrateAccountRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , bankTransferMigrateAccountRequestAccountUnderscorenumber :: Text -- ^ The user's account number.
  , bankTransferMigrateAccountRequestRoutingUnderscorenumber :: Text -- ^ The user's routing number.
  , bankTransferMigrateAccountRequestWireUnderscoreroutingUnderscorenumber :: Maybe Text -- ^ The user's wire transfer routing number. This is the ABA number; for some institutions, this may differ from the ACH number used in `routing_number`.
  , bankTransferMigrateAccountRequestAccountUnderscoretype :: Text -- ^ The type of the bank account (`checking` or `savings`).
  } deriving (Show, Eq, Generic, Data)

instance FromJSON BankTransferMigrateAccountRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "bankTransferMigrateAccountRequest")
instance ToJSON BankTransferMigrateAccountRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "bankTransferMigrateAccountRequest")

