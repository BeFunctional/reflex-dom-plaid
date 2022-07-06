{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.KYCCheckDetails ( KYCCheckDetails (..)  ) where

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
import Plaid.Types.KYCCheckAddressSummary
import Plaid.Types.KYCCheckNameSummary
import Plaid.Types.KYCCheckDateOfBirthSummary
import Plaid.Types.KYCCheckIDNumberSummary
import Plaid.Types.KYCCheckPhoneSummary

-- | The outcome of the &#x60;kyc_check&#x60; step.
data KYCCheckDetails = KYCCheckDetails
  { kYCCheckDetailsStatus :: Text -- ^ The outcome status for the associated Identity Verification attempt's `kyc_check` step. This field will always have the same value as `steps.kyc_check`.
  , kYCCheckDetailsAddress :: KYCCheckAddressSummary -- ^ 
  , kYCCheckDetailsName :: KYCCheckNameSummary -- ^ 
  , kYCCheckDetailsDateUnderscoreofUnderscorebirth :: KYCCheckDateOfBirthSummary -- ^ 
  , kYCCheckDetailsIdUnderscorenumber :: KYCCheckIDNumberSummary -- ^ 
  , kYCCheckDetailsPhoneUnderscorenumber :: KYCCheckPhoneSummary -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON KYCCheckDetails where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kYCCheckDetails")
instance ToJSON KYCCheckDetails where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kYCCheckDetails")

