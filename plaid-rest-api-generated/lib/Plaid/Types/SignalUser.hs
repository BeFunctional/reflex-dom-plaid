
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.SignalUser ( SignalUser (..)  ) where

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
import Plaid.Types.SignalPersonName
import Plaid.Types.SignalAddressData

-- | Details about the end user initiating the transaction (i.e., the account holder).
data SignalUser = SignalUser
  { signalUserName :: Maybe SignalPersonName -- ^ 
  , signalUserPhoneUnderscorenumber :: Maybe Text -- ^ The user's phone number, in E.164 format: +{countrycode}{number}. For example: \"+14151234567\"
  , signalUserEmailUnderscoreaddress :: Maybe Text -- ^ The user's email address.
  , signalUserAddress :: Maybe SignalAddressData -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SignalUser where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "signalUser")
instance ToJSON SignalUser where
  toJSON = genericToJSON (removeFieldLabelPrefix False "signalUser")

