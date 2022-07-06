
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.TransferIntentAuthorizationDecision ( TransferIntentAuthorizationDecision (..)  ) where

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

-- |  A decision regarding the proposed transfer.  &#x60;APPROVED&#x60; – The proposed transfer has received the end user&#39;s consent and has been approved for processing by Plaid. The &#x60;decision_rationale&#x60; field is set if Plaid was unable to fetch the account information. You may proceed with the transfer, but further review is recommended (i.e., use Link in update to re-authenticate your user when &#x60;decision_rationale.code&#x60; is &#x60;LOGIN_REQUIRED&#x60;). Refer to the &#x60;code&#x60; field in the &#x60;decision_rationale&#x60; object for details.  &#x60;DECLINED&#x60; – Plaid reviewed the proposed transfer and declined processing. Refer to the &#x60;code&#x60; field in the &#x60;decision_rationale&#x60; object for details.
data TransferIntentAuthorizationDecision = TransferIntentAuthorizationDecision
  {
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferIntentAuthorizationDecision where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferIntentAuthorizationDecision")
instance ToJSON TransferIntentAuthorizationDecision where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferIntentAuthorizationDecision")

