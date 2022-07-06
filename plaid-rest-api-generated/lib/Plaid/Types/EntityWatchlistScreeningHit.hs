{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.EntityWatchlistScreeningHit ( EntityWatchlistScreeningHit (..)  ) where

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
import Plaid.Types.WatchlistScreeningHitStatus
import Plaid.Types.EntityWatchlistCode
import Plaid.Types.EntityScreeningHitAnalysis
import Plaid.Types.EntityScreeningHitData

-- | Data from a government watchlist that has been attached to the screening.
data EntityWatchlistScreeningHit = EntityWatchlistScreeningHit
  { entityWatchlistScreeningHitId :: Text -- ^ ID of the associated entity screening hit.
  , entityWatchlistScreeningHitReviewUnderscorestatus :: WatchlistScreeningHitStatus -- ^ 
  , entityWatchlistScreeningHitFirstUnderscoreactive :: UTCTime -- ^ An ISO8601 formatted timestamp.
  , entityWatchlistScreeningHitInactiveUnderscoresince :: UTCTime -- ^ An ISO8601 formatted timestamp.
  , entityWatchlistScreeningHitHistoricalUnderscoresince :: UTCTime -- ^ An ISO8601 formatted timestamp.
  , entityWatchlistScreeningHitListUnderscorecode :: EntityWatchlistCode -- ^ 
  , entityWatchlistScreeningHitPlaidUnderscoreuid :: Text -- ^ A universal identifier for a watchlist individual that is stable across searches and updates.
  , entityWatchlistScreeningHitSourceUnderscoreuid :: Text -- ^ The identifier provided by the source sanction or watchlist. When one is not provided by the source, this is `null`.
  , entityWatchlistScreeningHitAnalysis :: Maybe EntityScreeningHitAnalysis -- ^ 
  , entityWatchlistScreeningHitData :: Maybe EntityScreeningHitData -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON EntityWatchlistScreeningHit where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "entityWatchlistScreeningHit")
instance ToJSON EntityWatchlistScreeningHit where
  toJSON = genericToJSON (removeFieldLabelPrefix False "entityWatchlistScreeningHit")

