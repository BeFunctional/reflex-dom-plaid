{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.PhysicalDocumentCategory ( PhysicalDocumentCategory (..)  ) where

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

-- | The type of identity document detected in the images provided. Will always be one of the following values:    &#x60;drivers_license&#x60; - A driver&#39;s license for the associated country    &#x60;id_card&#x60; - A general national identification card, distinct from driver&#39;s licenses    &#x60;passport&#x60; - A passport for the associated country    &#x60;residence_permit_card&#x60; - An identity document permitting a foreign citizen to &lt;em&gt;temporarily&lt;/em&gt; reside in the associated country    &#x60;resident_card&#x60; - An identity document permitting a foreign citizen to &lt;em&gt;permanently&lt;/em&gt; reside in the associated country  Note: This value may be different from the ID type that the user selects within Link. For example, if they select \&quot;Driver&#39;s License\&quot; but then submit a picture of a passport, this field will say &#x60;passport&#x60;
data PhysicalDocumentCategory = PhysicalDocumentCategory
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PhysicalDocumentCategory where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "physicalDocumentCategory")
instance ToJSON PhysicalDocumentCategory where
  toJSON = genericToJSON (removeFieldLabelPrefix False "physicalDocumentCategory")

