{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}

{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.TransferSweep ( TransferSweep (..)  ) where

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

-- | Describes a sweep of funds to / from the sweep account.  A sweep is associated with many sweep events (events of type &#x60;swept&#x60; or &#x60;return_swept&#x60;) which can be retrieved by invoking the &#x60;/transfer/event/list&#x60; endpoint with the corresponding &#x60;sweep_id&#x60;.  &#x60;swept&#x60; events occur when the transfer amount is credited or debited from your sweep account, depending on the &#x60;type&#x60; of the transfer. &#x60;return_swept&#x60; events occur when a transfer is returned and Plaid undoes the credit or debit.  The total sum of the &#x60;swept&#x60; and &#x60;return_swept&#x60; events is equal to the &#x60;amount&#x60; of the sweep Plaid creates and matches the amount of the entry on your sweep account ledger.
newtype TransferSweep = TransferSweep { unTransferSweep :: Map.Map Text Value }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)


