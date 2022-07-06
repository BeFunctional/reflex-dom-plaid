{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.DepositSwitchCreateRequestOptions ( DepositSwitchCreateRequestOptions (..)  ) where

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

-- | Options to configure the &#x60;/deposit_switch/create&#x60; request. If provided, cannot be &#x60;null&#x60;.
data DepositSwitchCreateRequestOptions = DepositSwitchCreateRequestOptions
  { depositSwitchCreateRequestOptionsWebhook :: Maybe Text -- ^ The URL registered to receive webhooks when the status of a deposit switch request has changed. 
  , depositSwitchCreateRequestOptionsTransactionUnderscoreitemUnderscoreaccessUnderscoretokens :: Maybe [Text] -- ^ An array of access tokens corresponding to transaction items to use when attempting to match the user to their Payroll Provider. These tokens must be created by the same client id as the one creating the switch, and have access to the transactions product.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON DepositSwitchCreateRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "depositSwitchCreateRequestOptions")
instance ToJSON DepositSwitchCreateRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "depositSwitchCreateRequestOptions")

