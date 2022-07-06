{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.WatchlistScreeningHit ( WatchlistScreeningHit (..)  ) where

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
import Plaid.Types.IndividualWatchlistCode
import Plaid.Types.ScreeningHitAnalysis
import Plaid.Types.ScreeningHitData

-- | Data from a government watchlist or PEP list that has been attached to the screening.
data WatchlistScreeningHit = WatchlistScreeningHit
  { watchlistScreeningHitId :: Text -- ^ ID of the associated screening hit.
  , watchlistScreeningHitReviewUnderscorestatus :: WatchlistScreeningHitStatus -- ^ 
  , watchlistScreeningHitFirstUnderscoreactive :: UTCTime -- ^ An ISO8601 formatted timestamp.
  , watchlistScreeningHitInactiveUnderscoresince :: UTCTime -- ^ An ISO8601 formatted timestamp.
  , watchlistScreeningHitHistoricalUnderscoresince :: UTCTime -- ^ An ISO8601 formatted timestamp.
  , watchlistScreeningHitListUnderscorecode :: IndividualWatchlistCode -- ^ 
  , watchlistScreeningHitPlaidUnderscoreuid :: Text -- ^ A universal identifier for a watchlist individual that is stable across searches and updates.
  , watchlistScreeningHitSourceUnderscoreuid :: Text -- ^ The identifier provided by the source sanction or watchlist. When one is not provided by the source, this is `null`.
  , watchlistScreeningHitAnalysis :: Maybe ScreeningHitAnalysis -- ^ 
  , watchlistScreeningHitData :: Maybe ScreeningHitData -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON WatchlistScreeningHit where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "watchlistScreeningHit")
instance ToJSON WatchlistScreeningHit where
  toJSON = genericToJSON (removeFieldLabelPrefix False "watchlistScreeningHit")

