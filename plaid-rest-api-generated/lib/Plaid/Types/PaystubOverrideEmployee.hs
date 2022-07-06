
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.PaystubOverrideEmployee ( PaystubOverrideEmployee (..)  ) where

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
import Plaid.Types.PaystubOverrideEmployeeAddress

-- | The employee on the paystub.
data PaystubOverrideEmployee = PaystubOverrideEmployee
  { paystubOverrideEmployeeName :: Maybe Text -- ^ The name of the employee.
  , paystubOverrideEmployeeAddress :: Maybe PaystubOverrideEmployeeAddress -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaystubOverrideEmployee where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paystubOverrideEmployee")
instance ToJSON PaystubOverrideEmployee where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paystubOverrideEmployee")

