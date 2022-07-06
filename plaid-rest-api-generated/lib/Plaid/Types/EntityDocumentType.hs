
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.EntityDocumentType ( EntityDocumentType (..)  ) where

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

-- | The kind of official document represented by this object.  &#x60;bik&#x60; - Russian bank code  &#x60;business_number&#x60; - A number that uniquely identifies the business within a category of businesses  &#x60;imo&#x60; - Number assigned to the entity by the International Maritime Organization  &#x60;other&#x60; - Any document not covered by other categories  &#x60;swift&#x60; - Number identifying a bank and branch.  &#x60;tax_id&#x60; - Identification issued for the purpose of collecting taxes
data EntityDocumentType = EntityDocumentType
  {
  } deriving (Show, Eq, Generic, Data)

instance FromJSON EntityDocumentType where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "entityDocumentType")
instance ToJSON EntityDocumentType where
  toJSON = genericToJSON (removeFieldLabelPrefix False "entityDocumentType")

