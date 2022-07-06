
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.LinkTokenCreateRequestAuth ( LinkTokenCreateRequestAuth (..)  ) where

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

-- | Specifies options for initializing Link for use with the Auth product. This field can be used to enable or disable extended Auth flows for the resulting Link session. Omitting any field will result in a default that can be configured by your account manager.
data LinkTokenCreateRequestAuth = LinkTokenCreateRequestAuth
  { linkTokenCreateRequestAuthAuthUnderscoretypeUnderscoreselectUnderscoreenabled :: Maybe Bool -- ^ Specifies whether Auth Type Select is enabled for the Link session, allowing the end user to choose between linking instantly or manually prior to selecting their financial institution. Note that this can only be true if `same_day_microdeposits_enabled` is set to true.
  , linkTokenCreateRequestAuthAutomatedUnderscoremicrodepositsUnderscoreenabled :: Maybe Bool -- ^ Specifies whether the Link session is enabled for the Automated Micro-deposits flow.
  , linkTokenCreateRequestAuthInstantUnderscorematchUnderscoreenabled :: Maybe Bool -- ^ Specifies whether the Link session is enabled for the Instant Match flow.
  , linkTokenCreateRequestAuthSameUnderscoredayUnderscoremicrodepositsUnderscoreenabled :: Maybe Bool -- ^ Specifies whether the Link session is enabled for the Same Day Micro-deposits flow.
  , linkTokenCreateRequestAuthFlowUnderscoretype :: Maybe Text -- ^ This field has been deprecated in favor of `auth_type_select_enabled`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON LinkTokenCreateRequestAuth where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "linkTokenCreateRequestAuth")
instance ToJSON LinkTokenCreateRequestAuth where
  toJSON = genericToJSON (removeFieldLabelPrefix False "linkTokenCreateRequestAuth")

