{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.IncomeVerificationPrecheckMilitaryInfo ( IncomeVerificationPrecheckMilitaryInfo (..)  ) where

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

-- | Data about military info in the income verification precheck.
data IncomeVerificationPrecheckMilitaryInfo = IncomeVerificationPrecheckMilitaryInfo
  { incomeVerificationPrecheckMilitaryInfoIsUnderscoreactiveUnderscoreduty :: Maybe Bool -- ^ Is the user currently active duty in the US military
  , incomeVerificationPrecheckMilitaryInfoBranch :: Maybe Text -- ^ If the user is currently serving in the US military, the branch of the military in which they are serving Valid values: 'AIR FORCE', 'ARMY', 'COAST GUARD', 'MARINES', 'NAVY', 'UNKNOWN'
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IncomeVerificationPrecheckMilitaryInfo where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "incomeVerificationPrecheckMilitaryInfo")
instance ToJSON IncomeVerificationPrecheckMilitaryInfo where
  toJSON = genericToJSON (removeFieldLabelPrefix False "incomeVerificationPrecheckMilitaryInfo")

