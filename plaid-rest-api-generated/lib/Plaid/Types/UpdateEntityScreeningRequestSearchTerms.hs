{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.UpdateEntityScreeningRequestSearchTerms ( UpdateEntityScreeningRequestSearchTerms (..)  ) where

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

-- | Search terms for editing an entity watchlist screening
data UpdateEntityScreeningRequestSearchTerms = UpdateEntityScreeningRequestSearchTerms
  { updateEntityScreeningRequestSearchTermsEntityUnderscorewatchlistUnderscoreprogramUnderscoreid :: Text -- ^ ID of the associated entity program.
  , updateEntityScreeningRequestSearchTermsLegalUnderscorename :: Maybe Text -- ^ 
  , updateEntityScreeningRequestSearchTermsDocumentUnderscorenumber :: Maybe Text -- ^ 
  , updateEntityScreeningRequestSearchTermsEmailUnderscoreaddress :: Maybe Text -- ^ 
  , updateEntityScreeningRequestSearchTermsCountry :: Maybe Text -- ^ 
  , updateEntityScreeningRequestSearchTermsPhoneUnderscorenumber :: Maybe Text -- ^ 
  , updateEntityScreeningRequestSearchTermsUrl :: Maybe Text -- ^ 
  , updateEntityScreeningRequestSearchTermsClientUnderscoreid :: Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , updateEntityScreeningRequestSearchTermsSecret :: Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON UpdateEntityScreeningRequestSearchTerms where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "updateEntityScreeningRequestSearchTerms")
instance ToJSON UpdateEntityScreeningRequestSearchTerms where
  toJSON = genericToJSON (removeFieldLabelPrefix False "updateEntityScreeningRequestSearchTerms")

