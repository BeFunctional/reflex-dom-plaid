{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}

{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.LinkTokenCreateRequest ( LinkTokenCreateRequest (..)  ) where

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
import Plaid.Types.CountryCode
import Plaid.Types.LinkTokenCreateRequestUser
import Plaid.Types.Products
import Plaid.Types.LinkTokenCreateInstitutionData
import Plaid.Types.LinkTokenAccountFilters
import Plaid.Types.LinkTokenEUConfig
import Plaid.Types.LinkTokenCreateRequestPaymentInitiation
import Plaid.Types.LinkTokenCreateRequestDepositSwitch
import Plaid.Types.LinkTokenCreateRequestIncomeVerification
import Plaid.Types.LinkTokenCreateRequestAuth
import Plaid.Types.LinkTokenCreateRequestTransfer
import Plaid.Types.LinkTokenCreateRequestUpdate

-- | LinkTokenCreateRequest defines the request schema for &#x60;/link/token/create&#x60;
data LinkTokenCreateRequest = LinkTokenCreateRequest
  { linkTokenCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , linkTokenCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , linkTokenCreateRequestClientUnderscorename :: Text -- ^ The name of your application, as it should be displayed in Link. Maximum length of 30 characters. If a value longer than 30 characters is provided, Link will display \"This Application\" instead.
  , linkTokenCreateRequestLanguage :: Text -- ^ The language that Link should be displayed in.  Supported languages are: - English (`'en'`) - French (`'fr'`) - Spanish (`'es'`) - Dutch (`'nl'`) - German(`'de'`)  When using a Link customization, the language configured here must match the setting in the customization, or the customization will not be applied.
  , linkTokenCreateRequestCountryUnderscorecodes :: [CountryCode] -- ^ Specify an array of Plaid-supported country codes using the ISO-3166-1 alpha-2 country code standard. Institutions from all listed countries will be shown.  Supported country codes are: `US`, `CA`, `DE`, `ES`, `FR`, `GB`, `IE`, `IT`, `NL`. For a complete mapping of supported products by country, see https://plaid.com/global/.  If Link is launched with multiple country codes, only products that you are enabled for in all countries will be used by Link. Note that while all countries are enabled by default in Sandbox and Development, in Production only US and Canada are enabled by default. To gain access to European institutions in the Production environment, [file a product access Support ticket](https://dashboard.plaid.com/support/new/product-and-development/product-troubleshooting/request-product-access) via the Plaid dashboard. If you initialize with a European country code, your users will see the European consent panel during the Link flow.  If using a Link customization, make sure the country codes in the customization match those specified in `country_codes`. If both `country_codes` and a Link customization are used, the value in `country_codes` may override the value in the customization.  If using the Auth features Instant Match, Same-day Micro-deposits, or Automated Micro-deposits, `country_codes` must be set to `['US']`.
  , linkTokenCreateRequestUser :: LinkTokenCreateRequestUser -- ^ 
  , linkTokenCreateRequestProducts :: Maybe [Products] -- ^ List of Plaid product(s) you wish to use. If launching Link in update mode, should be omitted; required otherwise.  `balance` is *not* a valid value, the Balance product does not require explicit initialization and will automatically be initialized when any other product is initialized.  Only institutions that support *all* requested products will be shown in Link; to maximize the number of institutions listed, it is recommended to initialize Link with the minimal product set required for your use case. Additional products can be added after Link initialization by calling the relevant endpoints. For details and exceptions, see [Choosing when to initialize products](https://plaid.com/docs/link/best-practices/#choosing-when-to-initialize-products).  Note that, unless you have opted to disable Instant Match support, institutions that support Instant Match will also be shown in Link if `auth` is specified as a product, even though these institutions do not contain `auth` in their product array.  In Production, you will be billed for each product that you specify when initializing Link. Note that a product cannot be removed from an Item once the Item has been initialized with that product. To stop billing on an Item for subscription-based products, such as Liabilities, Investments, and Transactions, remove the Item via `/item/remove`.
  , linkTokenCreateRequestAdditionalUnderscoreconsentedUnderscoreproducts :: Maybe [Products] -- ^ (Beta) This field has no effect unless you are participating in the Product Scope Transparency beta program. List of additional Plaid product(s) you wish to collect consent for. These products will not be billed until you start using them by calling the relevant endpoints.  `balance` is *not* a valid value, the Balance product does not require explicit initialization and will automatically have consent collected.  Institutions that do not support these products will still be shown in Link
  , linkTokenCreateRequestWebhook :: Maybe Text -- ^ The destination URL to which any webhooks should be sent.
  , linkTokenCreateRequestAccessUnderscoretoken :: Maybe Text -- ^ The `access_token` associated with the Item to update, used when updating or modifying an existing `access_token`. Used when launching Link in update mode, when completing the Same-day (manual) Micro-deposit flow, or (optionally) when initializing Link as part of the Payment Initiation (UK and Europe) flow.
  , linkTokenCreateRequestLinkUnderscorecustomizationUnderscorename :: Maybe Text -- ^ The name of the Link customization from the Plaid Dashboard to be applied to Link. If not specified, the `default` customization will be used. When using a Link customization, the language in the customization must match the language selected via the `language` parameter, and the countries in the customization should match the country codes selected via `country_codes`.
  , linkTokenCreateRequestRedirectUnderscoreuri :: Maybe Text -- ^ A URI indicating the destination where a user should be forwarded after completing the Link flow; used to support OAuth authentication flows when launching Link in the browser or via a webview. The `redirect_uri` should not contain any query parameters. When used in Production or Development, must be an https URI. To specify any subdomain, use `*` as a wildcard character, e.g. `https://*.example.com/oauth.html`. If `android_package_name` is specified, this field should be left blank.  Note that any redirect URI must also be added to the Allowed redirect URIs list in the [developer dashboard](https://dashboard.plaid.com/team/api).
  , linkTokenCreateRequestAndroidUnderscorepackageUnderscorename :: Maybe Text -- ^ The name of your app's Android package. Required if using the `link_token` to initialize Link on Android. When creating a `link_token` for initializing Link on other platforms, this field must be left blank. Any package name specified here must also be added to the Allowed Android package names setting on the [developer dashboard](https://dashboard.plaid.com/team/api). 
  , linkTokenCreateRequestInstitutionUnderscoredata :: Maybe LinkTokenCreateInstitutionData -- ^ 
  , linkTokenCreateRequestAccountUnderscorefilters :: Maybe LinkTokenAccountFilters -- ^ 
  , linkTokenCreateRequestEuUnderscoreconfig :: Maybe LinkTokenEUConfig -- ^ 
  , linkTokenCreateRequestInstitutionUnderscoreid :: Maybe Text -- ^ Used for certain Europe-only configurations, as well as certain legacy use cases in other regions.
  , linkTokenCreateRequestPaymentUnderscoreinitiation :: Maybe LinkTokenCreateRequestPaymentInitiation -- ^ 
  , linkTokenCreateRequestDepositUnderscoreswitch :: Maybe LinkTokenCreateRequestDepositSwitch -- ^ 
  , linkTokenCreateRequestIncomeUnderscoreverification :: Maybe LinkTokenCreateRequestIncomeVerification -- ^ 
  , linkTokenCreateRequestAuth :: Maybe LinkTokenCreateRequestAuth -- ^ 
  , linkTokenCreateRequestTransfer :: Maybe LinkTokenCreateRequestTransfer -- ^ 
  , linkTokenCreateRequestUpdate :: Maybe LinkTokenCreateRequestUpdate -- ^ 
  , linkTokenCreateRequestUserUnderscoretoken :: Maybe Text -- ^ A user token generated using /user/create. Any item created during the link session will be associated with the user.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON LinkTokenCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "linkTokenCreateRequest")
instance ToJSON LinkTokenCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "linkTokenCreateRequest")

