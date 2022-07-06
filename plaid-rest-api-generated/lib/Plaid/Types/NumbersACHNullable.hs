
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.NumbersACHNullable ( NumbersACHNullable (..)  ) where

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

-- | Identifying information for transferring money to or from a US account via ACH or wire transfer.
data NumbersACHNullable = NumbersACHNullable
  { numbersACHNullableAccountUnderscoreid :: Text -- ^ The Plaid account ID associated with the account numbers
  , numbersACHNullableAccount :: Text -- ^ The ACH account number for the account.  Note that when using OAuth with Chase Bank (`ins_56`), Chase will issue \"tokenized\" routing and account numbers, which are not the user's actual account and routing numbers. These tokenized numbers should work identically to normal account and routing numbers. The digits returned in the `mask` field will continue to reflect the actual account number, rather than the tokenized account number; for this reason, when displaying account numbers to the user to help them identify their account in your UI, always use the `mask` rather than truncating the `account` number. If a user revokes their permissions to your app, the tokenized numbers will continue to work for ACH deposits, but not withdrawals.
  , numbersACHNullableRouting :: Text -- ^ The ACH routing number for the account. If the institution is `ins_56`, this may be a tokenized routing number. For more information, see the description of the `account` field.
  , numbersACHNullableWireUnderscorerouting :: Text -- ^ The wire transfer routing number for the account, if available
  } deriving (Show, Eq, Generic, Data)

instance FromJSON NumbersACHNullable where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "numbersACHNullable")
instance ToJSON NumbersACHNullable where
  toJSON = genericToJSON (removeFieldLabelPrefix False "numbersACHNullable")

