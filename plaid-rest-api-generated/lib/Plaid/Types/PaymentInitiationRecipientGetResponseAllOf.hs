{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.PaymentInitiationRecipientGetResponseAllOf ( PaymentInitiationRecipientGetResponseAllOf (..)  ) where

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

-- | 
data PaymentInitiationRecipientGetResponseAllOf = PaymentInitiationRecipientGetResponseAllOf
  { paymentInitiationRecipientGetResponseAllOfRequestUnderscoreid :: Maybe Text -- ^ A unique identifier for the request, which can be used for troubleshooting. This identifier, like all Plaid identifiers, is case sensitive.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentInitiationRecipientGetResponseAllOf where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentInitiationRecipientGetResponseAllOf")
instance ToJSON PaymentInitiationRecipientGetResponseAllOf where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentInitiationRecipientGetResponseAllOf")

