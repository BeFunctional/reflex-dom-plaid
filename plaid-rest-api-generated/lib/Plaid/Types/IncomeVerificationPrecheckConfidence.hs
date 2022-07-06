
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.IncomeVerificationPrecheckConfidence ( IncomeVerificationPrecheckConfidence (..)  ) where

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

-- | The confidence that Plaid can support the user in the digital income verification flow instead of requiring a manual paystub upload. One of the following:  &#x60;\&quot;HIGH\&quot;&#x60;: It is very likely that this user can use the digital income verification flow.  \&quot;&#x60;LOW&#x60;\&quot;: It is unlikely that this user can use the digital income verification flow.  &#x60;\&quot;UNKNOWN\&quot;&#x60;: It was not possible to determine if the user is supportable with the information passed.
data IncomeVerificationPrecheckConfidence = IncomeVerificationPrecheckConfidence
  {
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IncomeVerificationPrecheckConfidence where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "incomeVerificationPrecheckConfidence")
instance ToJSON IncomeVerificationPrecheckConfidence where
  toJSON = genericToJSON (removeFieldLabelPrefix False "incomeVerificationPrecheckConfidence")

