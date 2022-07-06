
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.CustomerInitiatedReturnRisk ( CustomerInitiatedReturnRisk (..)  ) where

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

-- | The object contains a risk score and a risk tier that evaluate the transaction return risk of an unauthorized debit. Common return codes in this category include: \&quot;R05\&quot;, \&quot;R07\&quot;, \&quot;R10\&quot;, \&quot;R11\&quot;, \&quot;R29\&quot;. These returns typically have a return time frame of up to 60 calendar days. During this period, the customer of financial institutions can dispute a transaction as unauthorized.
data CustomerInitiatedReturnRisk = CustomerInitiatedReturnRisk
  { customerInitiatedReturnRiskScore :: Int -- ^ A score from 0-99 that indicates the transaction return risk: a higher risk score suggests a higher return likelihood.
  , customerInitiatedReturnRiskRiskUnderscoretier :: Int -- ^ A tier corresponding to the projected likelihood that the transaction, if initiated, will be subject to a return.  In the `customer_initiated_return_risk` object, there are five risk tiers corresponding to the scores:   1: Predicted customer-initiated return incidence rate between 0.00% - 0.02%   2: Predicted customer-initiated return incidence rate between 0.02% - 0.05%   3: Predicted customer-initiated return incidence rate between 0.05% - 0.1%   4: Predicted customer-initiated return incidence rate between 0.1% - 0.5%   5: Predicted customer-initiated return incidence rate greater than 0.5% 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CustomerInitiatedReturnRisk where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "customerInitiatedReturnRisk")
instance ToJSON CustomerInitiatedReturnRisk where
  toJSON = genericToJSON (removeFieldLabelPrefix False "customerInitiatedReturnRisk")

