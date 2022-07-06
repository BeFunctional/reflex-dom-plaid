{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.ProgramNameSensitivity ( ProgramNameSensitivity (..)  ) where

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

-- | The valid name matching sensitivity configurations for a screening program. Note that while certain matching techniques may be more prevalent on less strict settings, all matching algorithms are enabled for every sensitivity.  &#x60;coarse&#x60; - See more potential matches. This sensitivity will see more broad phonetic matches across alphabets that make missing a potential hit very unlikely. This setting is noisier and will require more manual review.  &#x60;balanced&#x60; - A good default for most companies. This sensitivity is balanced to show high quality hits with reduced noise.  &#x60;strict&#x60; - Aggressive false positive reduction. This sensitivity will require names to be more similar than &#x60;coarse&#x60; and &#x60;balanced&#x60; settings, relying less on phonetics, while still accounting for character transpositions, missing tokens, and other common permutations.  &#x60;exact&#x60; - Matches must be nearly exact. This sensitivity will only show hits with exact or nearly exact name matches with only basic correction such as extraneous symbols and capitalization. This setting is generally not recommended unless you have a very specific use case.
data ProgramNameSensitivity = ProgramNameSensitivity
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ProgramNameSensitivity where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "programNameSensitivity")
instance ToJSON ProgramNameSensitivity where
  toJSON = genericToJSON (removeFieldLabelPrefix False "programNameSensitivity")

