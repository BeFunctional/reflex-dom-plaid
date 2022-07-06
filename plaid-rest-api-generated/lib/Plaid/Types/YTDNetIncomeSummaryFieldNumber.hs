{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.YTDNetIncomeSummaryFieldNumber ( YTDNetIncomeSummaryFieldNumber (..)  ) where

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
import Plaid.Types.VerificationStatus

-- | Year-to-date earnings after any tax withholdings, benefit payments or deductions, as reported on the paystub.
data YTDNetIncomeSummaryFieldNumber = YTDNetIncomeSummaryFieldNumber
  { yTDNetIncomeSummaryFieldNumberValue :: Double -- ^ The value of the field.
  , yTDNetIncomeSummaryFieldNumberVerificationUnderscorestatus :: VerificationStatus -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON YTDNetIncomeSummaryFieldNumber where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "yTDNetIncomeSummaryFieldNumber")
instance ToJSON YTDNetIncomeSummaryFieldNumber where
  toJSON = genericToJSON (removeFieldLabelPrefix False "yTDNetIncomeSummaryFieldNumber")

