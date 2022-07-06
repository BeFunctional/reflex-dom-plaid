
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.TransferAuthorizationDecisionRationaleCode ( TransferAuthorizationDecisionRationaleCode (..)  ) where

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

-- | A code representing the rationale for approving or declining the proposed transfer. Possible values are:  &#x60;MANUALLY_VERIFIED_ITEM&#x60; – Item created via same-day micro deposits, limited information available. Plaid will offer &#x60;approved&#x60; as a transaction decision.  &#x60;LOGIN_REQUIRED&#x60; – Unable to collect the account information due to Item staleness. Can be rectified using Link in update mode. Plaid will offer &#x60;approved&#x60; as a transaction decision.  &#x60;ERROR&#x60; – Unable to collect the account information due to an error. Plaid will offer &#x60;approved&#x60; as a transaction decision.  &#x60;NSF&#x60; – Transaction likely to result in a return due to insufficient funds. Plaid will offer &#x60;declined&#x60; as a transaction decision.  &#x60;RISK&#x60; - Transaction is high-risk. Plaid will offer &#x60;declined&#x60; as a transaction decision.
data TransferAuthorizationDecisionRationaleCode = TransferAuthorizationDecisionRationaleCode
  {
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferAuthorizationDecisionRationaleCode where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferAuthorizationDecisionRationaleCode")
instance ToJSON TransferAuthorizationDecisionRationaleCode where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferAuthorizationDecisionRationaleCode")

