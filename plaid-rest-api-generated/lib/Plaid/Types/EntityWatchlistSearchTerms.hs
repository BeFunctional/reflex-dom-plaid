
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.EntityWatchlistSearchTerms ( EntityWatchlistSearchTerms (..)  ) where

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

-- | Search inputs for creating an entity watchlist screening
data EntityWatchlistSearchTerms = EntityWatchlistSearchTerms
  { entityWatchlistSearchTermsEntityUnderscorewatchlistUnderscoreprogramUnderscoreid :: Text -- ^ ID of the associated entity program.
  , entityWatchlistSearchTermsLegalUnderscorename :: Text -- ^ The name of the organization being screened.
  , entityWatchlistSearchTermsDocumentUnderscorenumber :: Maybe Text -- ^ 
  , entityWatchlistSearchTermsEmailUnderscoreaddress :: Maybe Text -- ^ 
  , entityWatchlistSearchTermsCountry :: Maybe Text -- ^ 
  , entityWatchlistSearchTermsPhoneUnderscorenumber :: Maybe Text -- ^ 
  , entityWatchlistSearchTermsUrl :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON EntityWatchlistSearchTerms where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "entityWatchlistSearchTerms")
instance ToJSON EntityWatchlistSearchTerms where
  toJSON = genericToJSON (removeFieldLabelPrefix False "entityWatchlistSearchTerms")

