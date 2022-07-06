
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.EmployerIncomeSummaryFieldString ( EmployerIncomeSummaryFieldString (..)  ) where

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

-- | The name of the employer, as reported on the paystub.
data EmployerIncomeSummaryFieldString = EmployerIncomeSummaryFieldString
  { employerIncomeSummaryFieldStringValue :: Text -- ^ The value of the field.
  , employerIncomeSummaryFieldStringVerificationUnderscorestatus :: VerificationStatus -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON EmployerIncomeSummaryFieldString where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "employerIncomeSummaryFieldString")
instance ToJSON EmployerIncomeSummaryFieldString where
  toJSON = genericToJSON (removeFieldLabelPrefix False "employerIncomeSummaryFieldString")

