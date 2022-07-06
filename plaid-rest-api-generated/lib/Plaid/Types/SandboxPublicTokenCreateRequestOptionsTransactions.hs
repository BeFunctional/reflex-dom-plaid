{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.SandboxPublicTokenCreateRequestOptionsTransactions ( SandboxPublicTokenCreateRequestOptionsTransactions (..)  ) where

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

-- | An optional set of parameters corresponding to transactions options.
data SandboxPublicTokenCreateRequestOptionsTransactions = SandboxPublicTokenCreateRequestOptionsTransactions
  { sandboxPublicTokenCreateRequestOptionsTransactionsStartUnderscoredate :: Maybe Day -- ^ The earliest date for which to fetch transaction history. Dates should be formatted as YYYY-MM-DD.
  , sandboxPublicTokenCreateRequestOptionsTransactionsEndUnderscoredate :: Maybe Day -- ^ The most recent date for which to fetch transaction history. Dates should be formatted as YYYY-MM-DD.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SandboxPublicTokenCreateRequestOptionsTransactions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "sandboxPublicTokenCreateRequestOptionsTransactions")
instance ToJSON SandboxPublicTokenCreateRequestOptionsTransactions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "sandboxPublicTokenCreateRequestOptionsTransactions")

