
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.KYCCheckAddressSummary ( KYCCheckAddressSummary (..)  ) where

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
import Plaid.Types.MatchSummaryCode
import Plaid.Types.POBoxStatus
import Plaid.Types.AddressPurposeLabel

-- | Result summary object specifying how the &#x60;address&#x60; field matched.
data KYCCheckAddressSummary = KYCCheckAddressSummary
  { kYCCheckAddressSummarySummary :: MatchSummaryCode -- ^ 
  , kYCCheckAddressSummaryPoUnderscorebox :: POBoxStatus -- ^ 
  , kYCCheckAddressSummaryType :: AddressPurposeLabel -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON KYCCheckAddressSummary where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kYCCheckAddressSummary")
instance ToJSON KYCCheckAddressSummary where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kYCCheckAddressSummary")

