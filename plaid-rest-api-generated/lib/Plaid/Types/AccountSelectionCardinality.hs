
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.AccountSelectionCardinality ( AccountSelectionCardinality (..)  ) where

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

-- | The application requires that accounts be limited to a specific cardinality. &#x60;MULTI_SELECT&#x60;: indicates that the user should be allowed to pick multiple accounts. &#x60;SINGLE_SELECT&#x60;: indicates that the user should be allowed to pick only a single account. &#x60;ALL&#x60;: indicates that the user must share all of their accounts and should not be given the opportunity to de-select
data AccountSelectionCardinality = AccountSelectionCardinality
  {
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AccountSelectionCardinality where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "accountSelectionCardinality")
instance ToJSON AccountSelectionCardinality where
  toJSON = genericToJSON (removeFieldLabelPrefix False "accountSelectionCardinality")

