{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.DocType ( DocType (..)  ) where

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

-- | The type of document.  &#x60;DOCUMENT_TYPE_PAYSTUB&#x60;: A paystub.  &#x60;DOCUMENT_TYPE_BANK_STATEMENT&#x60;: A bank statement.  &#x60;DOCUMENT_TYPE_US_TAX_W2&#x60;: A W-2 wage and tax statement provided by a US employer reflecting wages earned by the employee.  &#x60;DOCUMENT_TYPE_US_MILITARY_ERAS&#x60;: An electronic Retirement Account Statement (eRAS) issued by the US military.  &#x60;DOCUMENT_TYPE_US_MILITARY_LES&#x60;: A Leave and Earnings Statement (LES) issued by the US military.  &#x60;DOCUMENT_TYPE_US_MILITARY_CLES&#x60;: A Civilian Leave and Earnings Statment (CLES) issued by the US military.  &#x60;DOCUMENT_TYPE_GIG&#x60;: Used to indicate that the income is related to gig work. Does not necessarily correspond to a specific document type.  &#x60;DOCUMENT_TYPE_NONE&#x60;: Used to indicate that there is no underlying document for the data.  &#x60;UNKNOWN&#x60;: Document type could not be determined.
data DocType = DocType
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON DocType where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "docType")
instance ToJSON DocType where
  toJSON = genericToJSON (removeFieldLabelPrefix False "docType")

