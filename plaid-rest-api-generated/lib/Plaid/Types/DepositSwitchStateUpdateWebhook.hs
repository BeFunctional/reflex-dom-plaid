{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.DepositSwitchStateUpdateWebhook ( DepositSwitchStateUpdateWebhook (..)  ) where

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

-- | Fired when the status of a deposit switch request has changed.
data DepositSwitchStateUpdateWebhook = DepositSwitchStateUpdateWebhook
  { depositSwitchStateUpdateWebhookWebhookUnderscoretype :: Maybe Text -- ^ `\"DEPOSIT_SWITCH\"`
  , depositSwitchStateUpdateWebhookWebhookUnderscorecode :: Maybe Text -- ^ `\"SWITCH_STATE_UPDATE\"`
  , depositSwitchStateUpdateWebhookState :: Maybe Text -- ^  The state, or status, of the deposit switch.  `initialized`: The deposit switch has been initialized with the user entering the information required to submit the deposit switch request.  `processing`: The deposit switch request has been submitted and is being processed.  `completed`: The user's employer has fulfilled and completed the deposit switch request.  `error`: There was an error processing the deposit switch request.  For more information, see the [Deposit Switch API reference](/docs/deposit-switch/reference#deposit_switchget).
  , depositSwitchStateUpdateWebhookDepositUnderscoreswitchUnderscoreid :: Maybe Text -- ^ The ID of the deposit switch.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON DepositSwitchStateUpdateWebhook where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "depositSwitchStateUpdateWebhook")
instance ToJSON DepositSwitchStateUpdateWebhook where
  toJSON = genericToJSON (removeFieldLabelPrefix False "depositSwitchStateUpdateWebhook")

