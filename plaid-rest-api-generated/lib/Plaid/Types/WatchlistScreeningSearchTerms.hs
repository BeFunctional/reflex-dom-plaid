{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.WatchlistScreeningSearchTerms ( WatchlistScreeningSearchTerms (..)  ) where

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

-- | Search terms for creating an individual watchlist screening
data WatchlistScreeningSearchTerms = WatchlistScreeningSearchTerms
  { watchlistScreeningSearchTermsWatchlistUnderscoreprogramUnderscoreid :: Text -- ^ ID of the associated program.
  , watchlistScreeningSearchTermsLegalUnderscorename :: Text -- ^ The legal name of the individual being screened.
  , watchlistScreeningSearchTermsDateUnderscoreofUnderscorebirth :: Day -- ^ 
  , watchlistScreeningSearchTermsDocumentUnderscorenumber :: Text -- ^ 
  , watchlistScreeningSearchTermsCountry :: Text -- ^ 
  , watchlistScreeningSearchTermsVersion :: Double -- ^ The current version of the search terms. Starts at `1` and increments with each edit to `search_terms`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON WatchlistScreeningSearchTerms where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "watchlistScreeningSearchTerms")
instance ToJSON WatchlistScreeningSearchTerms where
  toJSON = genericToJSON (removeFieldLabelPrefix False "watchlistScreeningSearchTerms")

