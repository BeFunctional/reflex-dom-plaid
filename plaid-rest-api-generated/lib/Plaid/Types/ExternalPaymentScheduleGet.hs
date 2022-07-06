
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.ExternalPaymentScheduleGet ( ExternalPaymentScheduleGet (..)  ) where

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
import Plaid.Types.PaymentScheduleInterval

-- | The schedule that the payment will be executed on. If a schedule is provided, the payment is automatically set up as a standing order. If no schedule is specified, the payment will be executed only once.
data ExternalPaymentScheduleGet = ExternalPaymentScheduleGet
  { externalPaymentScheduleGetInterval :: PaymentScheduleInterval -- ^ 
  , externalPaymentScheduleGetIntervalUnderscoreexecutionUnderscoreday :: Int -- ^ The day of the interval on which to schedule the payment.  If the payment interval is weekly, `interval_execution_day` should be an integer from 1 (Monday) to 7 (Sunday).  If the payment interval is monthly, `interval_execution_day` should be an integer indicating which day of the month to make the payment on. Integers from 1 to 28 can be used to make a payment on that day of the month. Negative integers from -1 to -5 can be used to make a payment relative to the end of the month. To make a payment on the last day of the month, use -1; to make the payment on the second-to-last day, use -2, and so on.
  , externalPaymentScheduleGetStartUnderscoredate :: Day -- ^ A date in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format (YYYY-MM-DD). Standing order payments will begin on the first `interval_execution_day` on or after the `start_date`.  If the first `interval_execution_day` on or after the start date is also the same day that `/payment_initiation/payment/create` was called, the bank *may* make the first payment on that day, but it is not guaranteed to do so.
  , externalPaymentScheduleGetEndUnderscoredate :: Day -- ^ A date in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format (YYYY-MM-DD). Standing order payments will end on the last `interval_execution_day` on or before the `end_date`. If the only `interval_execution_day` between the start date and the end date (inclusive) is also the same day that `/payment_initiation/payment/create` was called, the bank *may* make a payment on that day, but it is not guaranteed to do so.
  , externalPaymentScheduleGetAdjustedUnderscorestartUnderscoredate :: Day -- ^ The start date sent to the bank after adjusting for holidays or weekends.  Will be provided in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format (YYYY-MM-DD). If the start date did not require adjustment, this field will be `null`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ExternalPaymentScheduleGet where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "externalPaymentScheduleGet")
instance ToJSON ExternalPaymentScheduleGet where
  toJSON = genericToJSON (removeFieldLabelPrefix False "externalPaymentScheduleGet")

