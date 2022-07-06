
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.WalletTransactionStatus ( WalletTransactionStatus (..)  ) where

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

-- | The status of the transaction.  &#x60;INITIATED&#x60;: This is the initial state of all transactions. It indicates that the transaction has been initiated and is currently being processed.  &#x60;EXECUTED&#x60;: The transaction has been successfully executed.  &#x60;FAILED&#x60;: The transaction failed to process successfully. This is a terminal status.  &#x60;BLOCKED&#x60;: The transaction has been blocked for violating compliance rules. This is a terminal status.
data WalletTransactionStatus = WalletTransactionStatus
  {
  } deriving (Show, Eq, Generic, Data)

instance FromJSON WalletTransactionStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "walletTransactionStatus")
instance ToJSON WalletTransactionStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "walletTransactionStatus")

