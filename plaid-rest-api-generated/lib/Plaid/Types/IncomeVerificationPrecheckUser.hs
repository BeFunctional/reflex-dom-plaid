{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.IncomeVerificationPrecheckUser ( IncomeVerificationPrecheckUser (..)  ) where

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
import Plaid.Types.SignalAddressData

-- | Information about the user whose eligibility is being evaluated.
data IncomeVerificationPrecheckUser = IncomeVerificationPrecheckUser
  { incomeVerificationPrecheckUserFirstUnderscorename :: Maybe Text -- ^ The user's first name
  , incomeVerificationPrecheckUserLastUnderscorename :: Maybe Text -- ^ The user's last name
  , incomeVerificationPrecheckUserEmailUnderscoreaddress :: Maybe Text -- ^ The user's email address
  , incomeVerificationPrecheckUserHomeUnderscoreaddress :: Maybe SignalAddressData -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IncomeVerificationPrecheckUser where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "incomeVerificationPrecheckUser")
instance ToJSON IncomeVerificationPrecheckUser where
  toJSON = genericToJSON (removeFieldLabelPrefix False "incomeVerificationPrecheckUser")

