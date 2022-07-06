{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.DashboardUser ( DashboardUser (..)  ) where

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
import Plaid.Types.DashboardUserStatus

-- | Account information associated with a team member with access to the Plaid dashboard.
data DashboardUser = DashboardUser
  { dashboardUserId :: Text -- ^ ID of the associated user.
  , dashboardUserCreatedUnderscoreat :: UTCTime -- ^ An ISO8601 formatted timestamp.
  , dashboardUserEmailUnderscoreaddress :: Text -- ^ A valid email address.
  , dashboardUserStatus :: DashboardUserStatus -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON DashboardUser where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "dashboardUser")
instance ToJSON DashboardUser where
  toJSON = genericToJSON (removeFieldLabelPrefix False "dashboardUser")

