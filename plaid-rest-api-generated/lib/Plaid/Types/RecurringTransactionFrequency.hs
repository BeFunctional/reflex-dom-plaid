
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.RecurringTransactionFrequency ( RecurringTransactionFrequency (..)  ) where

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

-- | Describes the frequency of the transaction stream.  &#x60;WEEKLY&#x60;: Assigned to a transaction stream that occurs approximately every week.  &#x60;BIWEEKLY&#x60;: Assigned to a transaction stream that occurs approximately every 2 weeks.  &#x60;SEMI_MONTHLY&#x60;: Assigned to a transaction stream that occurs approximately twice per month. This frequency is typically seen for inflow transaction streams.  &#x60;MONTHLY&#x60;: Assigned to a transaction stream that occurs approximately every month.  &#x60;UNKNOWN&#x60;: Assigned to a transaction stream that does not fit any of the pre-defined frequencies.
data RecurringTransactionFrequency = RecurringTransactionFrequency
  {
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RecurringTransactionFrequency where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "recurringTransactionFrequency")
instance ToJSON RecurringTransactionFrequency where
  toJSON = genericToJSON (removeFieldLabelPrefix False "recurringTransactionFrequency")

