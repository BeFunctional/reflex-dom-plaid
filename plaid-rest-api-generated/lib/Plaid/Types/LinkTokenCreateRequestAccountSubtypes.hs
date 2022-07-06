
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}


{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.LinkTokenCreateRequestAccountSubtypes ( LinkTokenCreateRequestAccountSubtypes (..)  ) where

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
import Plaid.Types.LinkTokenCreateDepositoryFilter
import Plaid.Types.LinkTokenCreateCreditFilter
import Plaid.Types.LinkTokenCreateLoanFilter
import Plaid.Types.LinkTokenCreateInvestmentFilter

-- | By default, Link will only display account types that are compatible with all products supplied in the &#x60;products&#x60; parameter of &#x60;/link/token/create&#x60;. You can further limit the accounts shown in Link by using &#x60;account_filters&#x60; to specify the account subtypes to be shown in Link. Only the specified subtypes will be shown. This filtering applies to both the Account Select view (if enabled) and the Institution Select view. Institutions that do not support the selected subtypes will be omitted from Link. To indicate that all subtypes should be shown, use the value &#x60;\&quot;all\&quot;&#x60;. If the &#x60;account_filters&#x60; filter is used, any account type for which a filter is not specified will be entirely omitted from Link.  For a full list of valid types and subtypes, see the [Account schema](https://plaid.com/docs/api/accounts#account-type-schema).  For institutions using OAuth, the filter will not affect the list of institutions or accounts shown by the bank in the OAuth window. 
data LinkTokenCreateRequestAccountSubtypes = LinkTokenCreateRequestAccountSubtypes
  { linkTokenCreateRequestAccountSubtypesDepository :: Maybe LinkTokenCreateDepositoryFilter -- ^ 
  , linkTokenCreateRequestAccountSubtypesCredit :: Maybe LinkTokenCreateCreditFilter -- ^ 
  , linkTokenCreateRequestAccountSubtypesLoan :: Maybe LinkTokenCreateLoanFilter -- ^ 
  , linkTokenCreateRequestAccountSubtypesInvestment :: Maybe LinkTokenCreateInvestmentFilter -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON LinkTokenCreateRequestAccountSubtypes where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "linkTokenCreateRequestAccountSubtypes")
instance ToJSON LinkTokenCreateRequestAccountSubtypes where
  toJSON = genericToJSON (removeFieldLabelPrefix False "linkTokenCreateRequestAccountSubtypes")

