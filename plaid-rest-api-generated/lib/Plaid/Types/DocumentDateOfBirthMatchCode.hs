{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.DocumentDateOfBirthMatchCode ( DocumentDateOfBirthMatchCode (..)  ) where

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

-- | A match summary describing the cross comparison between the subject&#39;s date of birth, extracted from the document image, and the date of birth they separately provided to the identity verification attempt.
data DocumentDateOfBirthMatchCode = DocumentDateOfBirthMatchCode
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON DocumentDateOfBirthMatchCode where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "documentDateOfBirthMatchCode")
instance ToJSON DocumentDateOfBirthMatchCode where
  toJSON = genericToJSON (removeFieldLabelPrefix False "documentDateOfBirthMatchCode")

