{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.BankTransferNetwork ( BankTransferNetwork (..)  ) where

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

-- | The network or rails used for the transfer. Valid options are &#x60;ach&#x60;, &#x60;same-day-ach&#x60;, or &#x60;wire&#x60;.
data BankTransferNetwork = BankTransferNetwork
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON BankTransferNetwork where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "bankTransferNetwork")
instance ToJSON BankTransferNetwork where
  toJSON = genericToJSON (removeFieldLabelPrefix False "bankTransferNetwork")

