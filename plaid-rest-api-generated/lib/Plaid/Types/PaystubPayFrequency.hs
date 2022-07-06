
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.PaystubPayFrequency ( PaystubPayFrequency (..)  ) where

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

-- | The frequency at which the employee is paid. Possible values: &#x60;MONTHLY&#x60;, &#x60;BI-WEEKLY&#x60;, &#x60;WEEKLY&#x60;, &#x60;SEMI-MONTHLY&#x60;.
data PaystubPayFrequency = PaystubPayFrequency
  {
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaystubPayFrequency where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paystubPayFrequency")
instance ToJSON PaystubPayFrequency where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paystubPayFrequency")

