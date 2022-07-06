
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.WatchlistScreeningDocumentType ( WatchlistScreeningDocumentType (..)  ) where

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

-- | The kind of official document represented by this object.  &#x60;birth_certificate&#x60; - A certificate of birth  &#x60;drivers_license&#x60; - A license to operate a motor vehicle  &#x60;immigration_number&#x60; - Immigration or residence documents  &#x60;military_id&#x60; - Identification issued by a military group  &#x60;other&#x60; - Any document not covered by other categories  &#x60;passport&#x60; - An official passport issue by a government  &#x60;personal_identification&#x60; - Any generic personal identification that is not covered by other categories  &#x60;ration_card&#x60; - Identification that entitles the holder to rations  &#x60;ssn&#x60; - United States Social Security Number  &#x60;student_id&#x60; - Identification issued by an educational institution  &#x60;tax_id&#x60; - Identification issued for the purpose of collecting taxes  &#x60;travel_document&#x60; - Visas, entry permits, refugee documents, etc.  &#x60;voter_id&#x60; - Identification issued for the purpose of voting
data WatchlistScreeningDocumentType = WatchlistScreeningDocumentType
  {
  } deriving (Show, Eq, Generic, Data)

instance FromJSON WatchlistScreeningDocumentType where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "watchlistScreeningDocumentType")
instance ToJSON WatchlistScreeningDocumentType where
  toJSON = genericToJSON (removeFieldLabelPrefix False "watchlistScreeningDocumentType")

