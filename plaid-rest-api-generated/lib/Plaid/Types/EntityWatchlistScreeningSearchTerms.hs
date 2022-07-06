
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.EntityWatchlistScreeningSearchTerms ( EntityWatchlistScreeningSearchTerms (..)  ) where

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

-- | Search terms associated with an entity used for searching against watchlists
data EntityWatchlistScreeningSearchTerms = EntityWatchlistScreeningSearchTerms
  { entityWatchlistScreeningSearchTermsEntityUnderscorewatchlistUnderscoreprogramUnderscoreid :: Text -- ^ ID of the associated entity program.
  , entityWatchlistScreeningSearchTermsLegalUnderscorename :: Text -- ^ The name of the organization being screened.
  , entityWatchlistScreeningSearchTermsDocumentUnderscorenumber :: Text -- ^ 
  , entityWatchlistScreeningSearchTermsEmailUnderscoreaddress :: Text -- ^ 
  , entityWatchlistScreeningSearchTermsCountry :: Text -- ^ 
  , entityWatchlistScreeningSearchTermsPhoneUnderscorenumber :: Text -- ^ 
  , entityWatchlistScreeningSearchTermsUrl :: Text -- ^ 
  , entityWatchlistScreeningSearchTermsVersion :: Double -- ^ The current version of the search terms. Starts at `1` and increments with each edit to `search_terms`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON EntityWatchlistScreeningSearchTerms where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "entityWatchlistScreeningSearchTerms")
instance ToJSON EntityWatchlistScreeningSearchTerms where
  toJSON = genericToJSON (removeFieldLabelPrefix False "entityWatchlistScreeningSearchTerms")

