{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}

{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.CreditPayStubVerification ( CreditPayStubVerification (..)  ) where

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

-- | An object containing details on the paystub&#39;s verification status. This object will only be populated if the [&#x60;income_verification.access_tokens&#x60;](/docs/api/tokens/#link-token-create-request-income-verification-access-tokens) parameter was provided during the &#x60;/link/token/create&#x60; call or if a problem was detected with the information supplied by the user; otherwise it will be &#x60;null&#x60;.
newtype CreditPayStubVerification = CreditPayStubVerification { unCreditPayStubVerification :: Map.Map Text Value }
  deriving stock (Show, Eq, Generic, Data)
  deriving newtype (ToJSON, FromJSON)


