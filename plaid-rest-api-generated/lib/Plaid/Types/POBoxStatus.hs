{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}

{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.POBoxStatus ( POBoxStatus (..)  ) where

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

-- | Field describing whether the associated address is a post office box. Will be &#x60;yes&#x60; when a P.O. box is detected, &#x60;no&#x60; when Plaid confirmed the address is not a P.O. box, and &#x60;no_data&#x60; when Plaid was not able to determine if the address is a P.O. box.
data POBoxStatus = POBoxStatus
  {
  } deriving (Show, Eq, Generic, Data)

instance FromJSON POBoxStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pOBoxStatus")
instance ToJSON POBoxStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pOBoxStatus")

