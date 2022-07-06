{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.PaymentInitiationConsentScope ( PaymentInitiationConsentScope (..)  ) where

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

-- | Payment consent scope. Defines possible directions for payments made with the given consent.  &#x60;ME_TO_ME&#x60;: Allows moving money between accounts owned by the same user.  &#x60;EXTERNAL&#x60;: Allows initiating payments from the user&#39;s account to third parties.
data PaymentInitiationConsentScope = PaymentInitiationConsentScope
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentInitiationConsentScope where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentInitiationConsentScope")
instance ToJSON PaymentInitiationConsentScope where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentInitiationConsentScope")

