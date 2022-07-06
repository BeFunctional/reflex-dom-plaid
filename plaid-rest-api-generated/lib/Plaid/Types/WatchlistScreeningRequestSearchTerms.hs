{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.WatchlistScreeningRequestSearchTerms ( WatchlistScreeningRequestSearchTerms (..)  ) where

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

-- | Search inputs for creating a watchlist screening
data WatchlistScreeningRequestSearchTerms = WatchlistScreeningRequestSearchTerms
  { watchlistScreeningRequestSearchTermsWatchlistUnderscoreprogramUnderscoreid :: Text -- ^ ID of the associated program.
  , watchlistScreeningRequestSearchTermsLegalUnderscorename :: Text -- ^ The legal name of the individual being screened.
  , watchlistScreeningRequestSearchTermsDateUnderscoreofUnderscorebirth :: Maybe Day -- ^ 
  , watchlistScreeningRequestSearchTermsDocumentUnderscorenumber :: Maybe Text -- ^ 
  , watchlistScreeningRequestSearchTermsCountry :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON WatchlistScreeningRequestSearchTerms where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "watchlistScreeningRequestSearchTerms")
instance ToJSON WatchlistScreeningRequestSearchTerms where
  toJSON = genericToJSON (removeFieldLabelPrefix False "watchlistScreeningRequestSearchTerms")

