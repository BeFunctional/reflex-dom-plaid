{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.EntityScreeningHitEmails ( EntityScreeningHitEmails (..)  ) where

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

-- | Email address information for the associated entity watchlist hit
data EntityScreeningHitEmails = EntityScreeningHitEmails
  { entityScreeningHitEmailsEmailUnderscoreaddress :: Text -- ^ A valid email address.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON EntityScreeningHitEmails where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "entityScreeningHitEmails")
instance ToJSON EntityScreeningHitEmails where
  toJSON = genericToJSON (removeFieldLabelPrefix False "entityScreeningHitEmails")
