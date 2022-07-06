{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.CreditBankIncomeAccount ( CreditBankIncomeAccount (..)  ) where

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
import Plaid.Types.DepositoryAccountSubtype
import Plaid.Types.CreditBankIncomeAccountType
import Plaid.Types.Owner

-- | The Item&#39;s accounts that have Bank Income data.
data CreditBankIncomeAccount = CreditBankIncomeAccount
  { creditBankIncomeAccountAccountUnderscoreid :: Maybe Text -- ^ Plaid's unique identifier for the account.
  , creditBankIncomeAccountMask :: Maybe Text -- ^ The last 2-4 alphanumeric characters of an account's official account number. Note that the mask may be non-unique between an Item's accounts, and it may also not match the mask that the bank displays to the user.
  , creditBankIncomeAccountName :: Maybe Text -- ^ The name of the bank account.
  , creditBankIncomeAccountOfficialUnderscorename :: Maybe Text -- ^ The official name of the bank account.
  , creditBankIncomeAccountSubtype :: Maybe DepositoryAccountSubtype -- ^ 
  , creditBankIncomeAccountType :: Maybe CreditBankIncomeAccountType -- ^ 
  , creditBankIncomeAccountOwners :: Maybe [Owner] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditBankIncomeAccount where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditBankIncomeAccount")
instance ToJSON CreditBankIncomeAccount where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditBankIncomeAccount")

