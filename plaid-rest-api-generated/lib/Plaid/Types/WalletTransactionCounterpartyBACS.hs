{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.WalletTransactionCounterpartyBACS ( WalletTransactionCounterpartyBACS (..)  ) where

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

-- | The account number and sort code of the counterparty&#39;s account
data WalletTransactionCounterpartyBACS = WalletTransactionCounterpartyBACS
  { walletTransactionCounterpartyBACSAccount :: Maybe Text -- ^ The account number of the account. Maximum of 10 characters.
  , walletTransactionCounterpartyBACSSortUnderscorecode :: Maybe Text -- ^ The 6-character sort code of the account.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON WalletTransactionCounterpartyBACS where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "walletTransactionCounterpartyBACS")
instance ToJSON WalletTransactionCounterpartyBACS where
  toJSON = genericToJSON (removeFieldLabelPrefix False "walletTransactionCounterpartyBACS")

