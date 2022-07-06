
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.TransactionStreamStatus ( TransactionStreamStatus (..)  ) where

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

-- | The current status of the transaction stream.  &#x60;MATURE&#x60;: A &#x60;MATURE&#x60; recurring stream should have at least 3 transactions and happen on a regular cadence.  &#x60;EARLY_DETECTION&#x60;: When a recurring transaction first appears in the transaction history and before it fulfills the requirement of a mature stream, the status will be &#x60;EARLY_DETECTION&#x60;.  &#x60;TOMBSTONED&#x60;: A stream that was previously in the &#x60;EARLY_DETECTION&#x60; status will move to the &#x60;TOMBSTONED&#x60; status when no further transactions were found at the next expected date.  &#x60;UNKNOWN&#x60;: A stream is assigned an &#x60;UNKNOWN&#x60; status when none of the other statuses are applicable.
data TransactionStreamStatus = TransactionStreamStatus
  {
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransactionStreamStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transactionStreamStatus")
instance ToJSON TransactionStreamStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transactionStreamStatus")

