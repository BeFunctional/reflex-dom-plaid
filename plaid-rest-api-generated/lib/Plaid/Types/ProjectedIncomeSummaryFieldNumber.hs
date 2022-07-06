{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.ProjectedIncomeSummaryFieldNumber ( ProjectedIncomeSummaryFieldNumber (..)  ) where

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

-- | The employee&#39;s estimated annual salary, as derived from information reported on the paystub.
data ProjectedIncomeSummaryFieldNumber = ProjectedIncomeSummaryFieldNumber
  { projectedIncomeSummaryFieldNumberValue :: Double -- ^ The value of the field.
  , projectedIncomeSummaryFieldNumberVerificationUnderscorestatus :: VerificationStatus -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ProjectedIncomeSummaryFieldNumber where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "projectedIncomeSummaryFieldNumber")
instance ToJSON ProjectedIncomeSummaryFieldNumber where
  toJSON = genericToJSON (removeFieldLabelPrefix False "projectedIncomeSummaryFieldNumber")

