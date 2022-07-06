{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.EntityScreeningHitData ( EntityScreeningHitData (..)  ) where

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
import Plaid.Types.EntityScreeningHitDocumentsItems
import Plaid.Types.EntityScreeningHitEmailsItems
import Plaid.Types.GenericScreeningHitLocationItems
import Plaid.Types.EntityScreeningHitNamesItems
import Plaid.Types.EntityScreeningHitsPhoneNumberItems
import Plaid.Types.EntityScreeningHitUrlsItems

-- | Information associated with the entity watchlist hit
data EntityScreeningHitData = EntityScreeningHitData
  { entityScreeningHitDataDocuments :: Maybe [EntityScreeningHitDocumentsItems] -- ^ Documents associated with the watchlist hit
  , entityScreeningHitDataEmailUnderscoreaddresses :: Maybe [EntityScreeningHitEmailsItems] -- ^ Email addresses associated with the watchlist hit
  , entityScreeningHitDataLocations :: Maybe [GenericScreeningHitLocationItems] -- ^ Locations associated with the watchlist hit
  , entityScreeningHitDataNames :: Maybe [EntityScreeningHitNamesItems] -- ^ Names associated with the watchlist hit
  , entityScreeningHitDataPhoneUnderscorenumbers :: Maybe [EntityScreeningHitsPhoneNumberItems] -- ^ Phone numbers associated with the watchlist hit
  , entityScreeningHitDataUrls :: Maybe [EntityScreeningHitUrlsItems] -- ^ URLs associated with the watchlist hit
  } deriving (Show, Eq, Generic, Data)

instance FromJSON EntityScreeningHitData where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "entityScreeningHitData")
instance ToJSON EntityScreeningHitData where
  toJSON = genericToJSON (removeFieldLabelPrefix False "entityScreeningHitData")

