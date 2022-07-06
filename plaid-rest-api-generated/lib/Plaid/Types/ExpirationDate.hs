
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.ExpirationDate ( ExpirationDate (..)  ) where

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

-- | A description of whether the associated document was expired when the verification was performed.  Note: In the case where an expiration date is not present on the document or failed to be extracted, this value will be &#x60;no_data&#x60;.
data ExpirationDate = ExpirationDate
  {
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ExpirationDate where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "expirationDate")
instance ToJSON ExpirationDate where
  toJSON = genericToJSON (removeFieldLabelPrefix False "expirationDate")

