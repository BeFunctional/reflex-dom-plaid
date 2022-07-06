{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.LinkTokenCreateRequestUser ( LinkTokenCreateRequestUser (..)  ) where

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

-- | An object specifying information about the end user who will be linking their account.
data LinkTokenCreateRequestUser = LinkTokenCreateRequestUser
  { linkTokenCreateRequestUserClientUnderscoreuserUnderscoreid :: Text -- ^ A unique ID representing the end user. Typically this will be a user ID number from your application. Personally identifiable information, such as an email address or phone number, should not be used in the `client_user_id`. It is currently used as a means of searching logs for the given user in the Plaid Dashboard.
  , linkTokenCreateRequestUserLegalUnderscorename :: Maybe Text -- ^ The user's full legal name. This is an optional field used in the [returning user experience](https://plaid.com/docs/link/returning-user) to associate Items to the user.
  , linkTokenCreateRequestUserPhoneUnderscorenumber :: Maybe Text -- ^ The user's phone number in [E.164](https://en.wikipedia.org/wiki/E.164) format. This field is optional, but required to enable the [returning user experience](https://plaid.com/docs/link/returning-user).
  , linkTokenCreateRequestUserPhoneUnderscorenumberUnderscoreverifiedUnderscoretime :: Maybe UTCTime -- ^ The date and time the phone number was verified in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format (`YYYY-MM-DDThh:mm:ssZ`). This field is optional, but required to enable any [returning user experience](https://plaid.com/docs/link/returning-user).   Only pass a verification time for a phone number that you have verified. If you have performed verification but don’t have the time, you may supply a signal value of the start of the UNIX epoch.   Example: `2020-01-01T00:00:00Z` 
  , linkTokenCreateRequestUserEmailUnderscoreaddress :: Maybe Text -- ^ The user's email address. This field is optional, but required to enable the [pre-authenticated returning user flow](https://plaid.com/docs/link/returning-user/#enabling-the-returning-user-experience).
  , linkTokenCreateRequestUserEmailUnderscoreaddressUnderscoreverifiedUnderscoretime :: Maybe UTCTime -- ^ The date and time the email address was verified in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format (`YYYY-MM-DDThh:mm:ssZ`). This is an optional field used in the [returning user experience](https://plaid.com/docs/link/returning-user).   Only pass a verification time for an email address that you have verified. If you have performed verification but don’t have the time, you may supply a signal value of the start of the UNIX epoch.   Example: `2020-01-01T00:00:00Z`
  , linkTokenCreateRequestUserSsn :: Maybe Text -- ^ To be provided in the format \"ddd-dd-dddd\". This field is optional and will support not-yet-implemented functionality for new products.
  , linkTokenCreateRequestUserDateUnderscoreofUnderscorebirth :: Maybe Day -- ^ To be provided in the format \"yyyy-mm-dd\". This field is optional and will support not-yet-implemented functionality for new products.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON LinkTokenCreateRequestUser where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "linkTokenCreateRequestUser")
instance ToJSON LinkTokenCreateRequestUser where
  toJSON = genericToJSON (removeFieldLabelPrefix False "linkTokenCreateRequestUser")

