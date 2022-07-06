{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.LinkTokenCreateRequestDepositSwitch ( LinkTokenCreateRequestDepositSwitch (..)  ) where

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

-- | Specifies options for initializing Link for use with the Deposit Switch (beta) product. This field is required if &#x60;deposit_switch&#x60; is included in the &#x60;products&#x60; array.
data LinkTokenCreateRequestDepositSwitch = LinkTokenCreateRequestDepositSwitch
  { linkTokenCreateRequestDepositSwitchDepositUnderscoreswitchUnderscoreid :: Text -- ^ The `deposit_switch_id` provided by the `/deposit_switch/create` endpoint.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON LinkTokenCreateRequestDepositSwitch where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "linkTokenCreateRequestDepositSwitch")
instance ToJSON LinkTokenCreateRequestDepositSwitch where
  toJSON = genericToJSON (removeFieldLabelPrefix False "linkTokenCreateRequestDepositSwitch")

