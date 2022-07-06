
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.WatchlistScreeningDocument ( WatchlistScreeningDocument (..)  ) where

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
import Plaid.Types.WatchlistScreeningDocumentType

-- | An official document, usually issued by a governing body or institution, with an associated identifier.
data WatchlistScreeningDocument = WatchlistScreeningDocument
  { watchlistScreeningDocumentType :: WatchlistScreeningDocumentType -- ^ 
  , watchlistScreeningDocumentNumber :: Text -- ^ The numeric or alphanumeric identifier associated with this document.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON WatchlistScreeningDocument where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "watchlistScreeningDocument")
instance ToJSON WatchlistScreeningDocument where
  toJSON = genericToJSON (removeFieldLabelPrefix False "watchlistScreeningDocument")

