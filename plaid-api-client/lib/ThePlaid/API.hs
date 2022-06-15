{-# LANGUAGE DataKinds                  #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DeriveTraversable          #-}
{-# LANGUAGE FlexibleContexts           #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE RecordWildCards            #-}
{-# LANGUAGE TypeFamilies               #-}
{-# LANGUAGE TypeOperators              #-}
{-# LANGUAGE ViewPatterns               #-}
{-# OPTIONS_GHC
-fno-warn-unused-binds -fno-warn-unused-imports -freduction-depth=328 #-}

module ThePlaid.API
  ( -- * Client and Server
    Config(..)
  , ThePlaidBackend(..)
  , createThePlaidClient
  , runThePlaidServer
  , runThePlaidMiddlewareServer
  , runThePlaidClient
  , runThePlaidClientWithManager
  , callThePlaid
  , ThePlaidClient
  , ThePlaidClientError(..)
  -- ** Servant
  , ThePlaidAPI
  -- ** Plain WAI Application
  , serverWaiApplicationThePlaid
  ) where

import           ThePlaid.Types

import           Control.Monad.Catch                (Exception, MonadThrow, throwM)
import           Control.Monad.Except               (ExceptT, runExceptT)
import           Control.Monad.IO.Class
import           Control.Monad.Trans.Reader         (ReaderT (..))
import           Data.Aeson                         (Value)
import           Data.Coerce                        (coerce)
import           Data.Data                          (Data)
import           Data.Function                      ((&))
import qualified Data.Map                           as Map
import           Data.Monoid                        ((<>))
import           Data.Proxy                         (Proxy (..))
import           Data.Set                           (Set)
import           Data.Text                          (Text)
import qualified Data.Text                          as T
import           Data.Time
import           Data.UUID                          (UUID)
import           GHC.Exts                           (IsString (..))
import           GHC.Generics                       (Generic)
import           Network.HTTP.Client                (Manager, newManager)
import           Network.HTTP.Client.TLS            (tlsManagerSettings)
import           Network.HTTP.Types.Method          (methodOptions)
import           Network.Wai                        (Middleware)
import qualified Network.Wai                        as NW (Application) 
import qualified Network.Wai.Handler.Warp           as Warp
import           Servant                            (ServerError, serve)
import           Servant.API
import           Servant.API.Verbs                  (StdMethod (..), Verb)
import           Servant.Client                     (ClientEnv, Scheme (Http), ClientError, client,
                                                     mkClientEnv, parseBaseUrl)
import           Servant.Client.Core                (baseUrlPort, baseUrlHost)
import           Servant.Client.Internal.HttpClient (ClientM (..))
import           Servant.Server                     (Handler (..), Application)
import           Servant.Server.StaticFiles         (serveDirectoryFileServer)
import           Web.FormUrlEncoded
import           Web.HttpApiData




-- | List of elements parsed from a query.
newtype QueryList (p :: CollectionFormat) a = QueryList
  { fromQueryList :: [a]
  } deriving (Functor, Applicative, Monad, Foldable, Traversable)

-- | Formats in which a list can be encoded into a HTTP path.
data CollectionFormat
  = CommaSeparated -- ^ CSV format for multiple parameters.
  | SpaceSeparated -- ^ Also called "SSV"
  | TabSeparated -- ^ Also called "TSV"
  | PipeSeparated -- ^ `value1|value2|value2`
  | MultiParamArray -- ^ Using multiple GET parameters, e.g. `foo=bar&foo=baz`. Only for GET params.

instance FromHttpApiData a => FromHttpApiData (QueryList 'CommaSeparated a) where
  parseQueryParam = parseSeparatedQueryList ','

instance FromHttpApiData a => FromHttpApiData (QueryList 'TabSeparated a) where
  parseQueryParam = parseSeparatedQueryList '\t'

instance FromHttpApiData a => FromHttpApiData (QueryList 'SpaceSeparated a) where
  parseQueryParam = parseSeparatedQueryList ' '

instance FromHttpApiData a => FromHttpApiData (QueryList 'PipeSeparated a) where
  parseQueryParam = parseSeparatedQueryList '|'

instance FromHttpApiData a => FromHttpApiData (QueryList 'MultiParamArray a) where
  parseQueryParam = error "unimplemented FromHttpApiData for MultiParamArray collection format"

parseSeparatedQueryList :: FromHttpApiData a => Char -> Text -> Either Text (QueryList p a)
parseSeparatedQueryList char = fmap QueryList . mapM parseQueryParam . T.split (== char)

instance ToHttpApiData a => ToHttpApiData (QueryList 'CommaSeparated a) where
  toQueryParam = formatSeparatedQueryList ','

instance ToHttpApiData a => ToHttpApiData (QueryList 'TabSeparated a) where
  toQueryParam = formatSeparatedQueryList '\t'

instance ToHttpApiData a => ToHttpApiData (QueryList 'SpaceSeparated a) where
  toQueryParam = formatSeparatedQueryList ' '

instance ToHttpApiData a => ToHttpApiData (QueryList 'PipeSeparated a) where
  toQueryParam = formatSeparatedQueryList '|'

instance ToHttpApiData a => ToHttpApiData (QueryList 'MultiParamArray a) where
  toQueryParam = error "unimplemented ToHttpApiData for MultiParamArray collection format"

formatSeparatedQueryList :: ToHttpApiData a => Char ->  QueryList p a -> Text
formatSeparatedQueryList char = T.intercalate (T.singleton char) . map toQueryParam . fromQueryList


-- | Servant type-level API, generated from the OpenAPI spec for ThePlaid.
type ThePlaidAPI
    =    "accounts" :> "balance" :> "get" :> ReqBody '[JSON] AccountsBalanceGetRequest :> Verb 'POST 200 '[JSON] AccountsGetResponse -- 'accountsBalanceGet' route
    :<|> "accounts" :> "get" :> ReqBody '[JSON] AccountsGetRequest :> Verb 'POST 200 '[JSON] AccountsGetResponse -- 'accountsGet' route
    :<|> "application" :> "get" :> ReqBody '[JSON] ApplicationGetRequest :> Verb 'POST 200 '[JSON] ApplicationGetResponse -- 'applicationGet' route
    :<|> "asset_report" :> "audit_copy" :> "create" :> ReqBody '[JSON] AssetReportAuditCopyCreateRequest :> Verb 'POST 200 '[JSON] AssetReportAuditCopyCreateResponse -- 'assetReportAuditCopyCreate' route
    :<|> "asset_report" :> "audit_copy" :> "get" :> ReqBody '[JSON] AssetReportAuditCopyGetRequest :> Verb 'POST 200 '[JSON] AssetReportGetResponse -- 'assetReportAuditCopyGet' route
    :<|> "asset_report" :> "audit_copy" :> "remove" :> ReqBody '[JSON] AssetReportAuditCopyRemoveRequest :> Verb 'POST 200 '[JSON] AssetReportAuditCopyRemoveResponse -- 'assetReportAuditCopyRemove' route
    :<|> "asset_report" :> "create" :> ReqBody '[JSON] AssetReportCreateRequest :> Verb 'POST 200 '[JSON] AssetReportCreateResponse -- 'assetReportCreate' route
    :<|> "asset_report" :> "filter" :> ReqBody '[JSON] AssetReportFilterRequest :> Verb 'POST 200 '[JSON] AssetReportFilterResponse -- 'assetReportFilter' route
    :<|> "asset_report" :> "get" :> ReqBody '[JSON] AssetReportGetRequest :> Verb 'POST 200 '[JSON] AssetReportGetResponse -- 'assetReportGet' route
    :<|> "asset_report" :> "pdf" :> "get" :> ReqBody '[JSON] AssetReportPDFGetRequest :> Verb 'POST 200 '[JSON] FilePath -- 'assetReportPdfGet' route
    :<|> "asset_report" :> "refresh" :> ReqBody '[JSON] AssetReportRefreshRequest :> Verb 'POST 200 '[JSON] AssetReportRefreshResponse -- 'assetReportRefresh' route
    :<|> "asset_report" :> "relay" :> "create" :> ReqBody '[JSON] AssetReportRelayCreateRequest :> Verb 'POST 200 '[JSON] AssetReportRelayCreateResponse -- 'assetReportRelayCreate' route
    :<|> "asset_report" :> "relay" :> "get" :> ReqBody '[JSON] AssetReportRelayGetRequest :> Verb 'POST 200 '[JSON] AssetReportGetResponse -- 'assetReportRelayGet' route
    :<|> "asset_report" :> "relay" :> "refresh" :> ReqBody '[JSON] AssetReportRelayRefreshRequest :> Verb 'POST 200 '[JSON] AssetReportRelayRefreshResponse -- 'assetReportRelayRefresh' route
    :<|> "asset_report" :> "relay" :> "remove" :> ReqBody '[JSON] AssetReportRelayRemoveRequest :> Verb 'POST 200 '[JSON] AssetReportRelayRemoveResponse -- 'assetReportRelayRemove' route
    :<|> "asset_report" :> "remove" :> ReqBody '[JSON] AssetReportRemoveRequest :> Verb 'POST 200 '[JSON] AssetReportRemoveResponse -- 'assetReportRemove' route
    :<|> "auth" :> "get" :> ReqBody '[JSON] AuthGetRequest :> Verb 'POST 200 '[JSON] AuthGetResponse -- 'authGet' route
    :<|> "bank_transfer" :> "balance" :> "get" :> ReqBody '[JSON] BankTransferBalanceGetRequest :> Verb 'POST 200 '[JSON] BankTransferBalanceGetResponse -- 'bankTransferBalanceGet' route
    :<|> "bank_transfer" :> "cancel" :> ReqBody '[JSON] BankTransferCancelRequest :> Verb 'POST 200 '[JSON] BankTransferCancelResponse -- 'bankTransferCancel' route
    :<|> "bank_transfer" :> "create" :> ReqBody '[JSON] BankTransferCreateRequest :> Verb 'POST 200 '[JSON] BankTransferCreateResponse -- 'bankTransferCreate' route
    :<|> "bank_transfer" :> "event" :> "list" :> ReqBody '[JSON] BankTransferEventListRequest :> Verb 'POST 200 '[JSON] BankTransferEventListResponse -- 'bankTransferEventList' route
    :<|> "bank_transfer" :> "event" :> "sync" :> ReqBody '[JSON] BankTransferEventSyncRequest :> Verb 'POST 200 '[JSON] BankTransferEventSyncResponse -- 'bankTransferEventSync' route
    :<|> "bank_transfer" :> "get" :> ReqBody '[JSON] BankTransferGetRequest :> Verb 'POST 200 '[JSON] BankTransferGetResponse -- 'bankTransferGet' route
    :<|> "bank_transfer" :> "list" :> ReqBody '[JSON] BankTransferListRequest :> Verb 'POST 200 '[JSON] BankTransferListResponse -- 'bankTransferList' route
    :<|> "bank_transfer" :> "migrate_account" :> ReqBody '[JSON] BankTransferMigrateAccountRequest :> Verb 'POST 200 '[JSON] BankTransferMigrateAccountResponse -- 'bankTransferMigrateAccount' route
    :<|> "bank_transfer" :> "sweep" :> "get" :> ReqBody '[JSON] BankTransferSweepGetRequest :> Verb 'POST 200 '[JSON] BankTransferSweepGetResponse -- 'bankTransferSweepGet' route
    :<|> "bank_transfer" :> "sweep" :> "list" :> ReqBody '[JSON] BankTransferSweepListRequest :> Verb 'POST 200 '[JSON] BankTransferSweepListResponse -- 'bankTransferSweepList' route
    :<|> "categories" :> "get" :> ReqBody '[JSON] Value :> Verb 'POST 200 '[JSON] CategoriesGetResponse -- 'categoriesGet' route
    :<|> "payment_initiation" :> "payment" :> "token" :> "create" :> ReqBody '[JSON] PaymentInitiationPaymentTokenCreateRequest :> Verb 'POST 200 '[JSON] PaymentInitiationPaymentTokenCreateResponse -- 'createPaymentToken' route
    :<|> "credit" :> "audit_copy_token" :> "create" :> ReqBody '[JSON] CreditAuditCopyTokenCreateRequest :> Verb 'POST 200 '[JSON] CreditAuditCopyTokenCreateResponse -- 'creditAuditCopyTokenCreate' route
    :<|> "credit" :> "bank_income" :> "get" :> ReqBody '[JSON] CreditBankIncomeGetRequest :> Verb 'POST 200 '[JSON] CreditBankIncomeGetResponse -- 'creditBankIncomeGet' route
    :<|> "credit" :> "bank_income" :> "refresh" :> ReqBody '[JSON] CreditBankIncomeRefreshRequest :> Verb 'POST 200 '[JSON] CreditBankIncomeRefreshResponse -- 'creditBankIncomeRefresh' route
    :<|> "credit" :> "employment" :> "get" :> ReqBody '[JSON] CreditEmploymentGetRequest :> Verb 'POST 200 '[JSON] CreditEmploymentGetResponse -- 'creditEmploymentGet' route
    :<|> "credit" :> "payroll_income" :> "get" :> ReqBody '[JSON] CreditPayrollIncomeGetRequest :> Verb 'POST 200 '[JSON] CreditPayrollIncomeGetResponse -- 'creditPayrollIncomeGet' route
    :<|> "credit" :> "payroll_income" :> "precheck" :> ReqBody '[JSON] CreditPayrollIncomePrecheckRequest :> Verb 'POST 200 '[JSON] CreditPayrollIncomePrecheckResponse -- 'creditPayrollIncomePrecheck' route
    :<|> "credit" :> "payroll_income" :> "refresh" :> ReqBody '[JSON] CreditPayrollIncomeRefreshRequest :> Verb 'POST 200 '[JSON] CreditPayrollIncomeRefreshResponse -- 'creditPayrollIncomeRefresh' route
    :<|> "credit" :> "relay" :> "create" :> ReqBody '[JSON] CreditRelayCreateRequest :> Verb 'POST 200 '[JSON] CreditRelayCreateResponse -- 'creditRelayCreate' route
    :<|> "dashboard_user" :> "list" :> ReqBody '[JSON] ListDashboardUserRequest :> Verb 'POST 200 '[JSON] PaginatedDashboardUserListResponse -- 'dashboardUserList' route
    :<|> "dashboard_user" :> "get" :> ReqBody '[JSON] GetDashboardUserRequest :> Verb 'POST 200 '[JSON] DashboardUserResponse -- 'dashobardUserGet' route
    :<|> "deposit_switch" :> "alt" :> "create" :> ReqBody '[JSON] DepositSwitchAltCreateRequest :> Verb 'POST 200 '[JSON] DepositSwitchAltCreateResponse -- 'depositSwitchAltCreate' route
    :<|> "deposit_switch" :> "create" :> ReqBody '[JSON] DepositSwitchCreateRequest :> Verb 'POST 200 '[JSON] DepositSwitchCreateResponse -- 'depositSwitchCreate' route
    :<|> "deposit_switch" :> "get" :> ReqBody '[JSON] DepositSwitchGetRequest :> Verb 'POST 200 '[JSON] DepositSwitchGetResponse -- 'depositSwitchGet' route
    :<|> "deposit_switch" :> "token" :> "create" :> ReqBody '[JSON] DepositSwitchTokenCreateRequest :> Verb 'POST 200 '[JSON] DepositSwitchTokenCreateResponse -- 'depositSwitchTokenCreate' route
    :<|> "employers" :> "search" :> ReqBody '[JSON] EmployersSearchRequest :> Verb 'POST 200 '[JSON] EmployersSearchResponse -- 'employersSearch' route
    :<|> "employment" :> "verification" :> "get" :> ReqBody '[JSON] EmploymentVerificationGetRequest :> Verb 'POST 200 '[JSON] EmploymentVerificationGetResponse -- 'employmentVerificationGet' route
    :<|> "identity" :> "get" :> ReqBody '[JSON] IdentityGetRequest :> Verb 'POST 200 '[JSON] IdentityGetResponse -- 'identityGet' route
    :<|> "identity_verification" :> "create" :> ReqBody '[JSON] IdentityVerificationCreateRequest :> Verb 'POST 200 '[JSON] IdentityVerificationResponse -- 'identityVerificationCreate' route
    :<|> "identity_verification" :> "get" :> ReqBody '[JSON] GetIdentityVerificationRequest :> Verb 'POST 200 '[JSON] IdentityVerificationResponse -- 'identityVerificationGet' route
    :<|> "identity_verification" :> "list" :> ReqBody '[JSON] ListIdentityVerificationRequest :> Verb 'POST 200 '[JSON] PaginatedIdentityVerificationListResponse -- 'identityVerificationList' route
    :<|> "identity_verification" :> "retry" :> ReqBody '[JSON] IdentityVerificationRetryRequest :> Verb 'POST 200 '[JSON] IdentityVerificationResponse -- 'identityVerificationRetry' route
    :<|> "income" :> "verification" :> "create" :> ReqBody '[JSON] IncomeVerificationCreateRequest :> Verb 'POST 200 '[JSON] IncomeVerificationCreateResponse -- 'incomeVerificationCreate' route
    :<|> "income" :> "verification" :> "documents" :> "download" :> ReqBody '[JSON] IncomeVerificationDocumentsDownloadRequest :> Verb 'POST 200 '[JSON] FilePath -- 'incomeVerificationDocumentsDownload' route
    :<|> "income" :> "verification" :> "paystubs" :> "get" :> ReqBody '[JSON] IncomeVerificationPaystubsGetRequest :> Verb 'POST 200 '[JSON] IncomeVerificationPaystubsGetResponse -- 'incomeVerificationPaystubsGet' route
    :<|> "income" :> "verification" :> "precheck" :> ReqBody '[JSON] IncomeVerificationPrecheckRequest :> Verb 'POST 200 '[JSON] IncomeVerificationPrecheckResponse -- 'incomeVerificationPrecheck' route
    :<|> "income" :> "verification" :> "refresh" :> ReqBody '[JSON] IncomeVerificationRefreshRequest :> Verb 'POST 200 '[JSON] IncomeVerificationRefreshResponse -- 'incomeVerificationRefresh' route
    :<|> "income" :> "verification" :> "taxforms" :> "get" :> ReqBody '[JSON] (Map.Map String Value) :> Verb 'POST 200 '[JSON] IncomeVerificationTaxformsGetResponse -- 'incomeVerificationTaxformsGet' route
    :<|> "institutions" :> "get" :> ReqBody '[JSON] InstitutionsGetRequest :> Verb 'POST 200 '[JSON] InstitutionsGetResponse -- 'institutionsGet' route
    :<|> "institutions" :> "get_by_id" :> ReqBody '[JSON] InstitutionsGetByIdRequest :> Verb 'POST 200 '[JSON] InstitutionsGetByIdResponse -- 'institutionsGetById' route
    :<|> "institutions" :> "search" :> ReqBody '[JSON] InstitutionsSearchRequest :> Verb 'POST 200 '[JSON] InstitutionsSearchResponse -- 'institutionsSearch' route
    :<|> "investments" :> "holdings" :> "get" :> ReqBody '[JSON] InvestmentsHoldingsGetRequest :> Verb 'POST 200 '[JSON] InvestmentsHoldingsGetResponse -- 'investmentsHoldingsGet' route
    :<|> "investments" :> "transactions" :> "get" :> ReqBody '[JSON] InvestmentsTransactionsGetRequest :> Verb 'POST 200 '[JSON] InvestmentsTransactionsGetResponse -- 'investmentsTransactionsGet' route
    :<|> "item" :> "access_token" :> "invalidate" :> ReqBody '[JSON] ItemAccessTokenInvalidateRequest :> Verb 'POST 200 '[JSON] ItemAccessTokenInvalidateResponse -- 'itemAccessTokenInvalidate' route
    :<|> "item" :> "application" :> "list" :> ReqBody '[JSON] ItemApplicationListRequest :> Verb 'POST 200 '[JSON] ItemApplicationListResponse -- 'itemApplicationList' route
    :<|> "item" :> "application" :> "scopes" :> "update" :> ReqBody '[JSON] ItemApplicationScopesUpdateRequest :> Verb 'POST 200 '[JSON] ItemApplicationScopesUpdateResponse -- 'itemApplicationScopesUpdate' route
    :<|> "item" :> "public_token" :> "create" :> ReqBody '[JSON] ItemPublicTokenCreateRequest :> Verb 'POST 200 '[JSON] ItemPublicTokenCreateResponse -- 'itemCreatePublicToken' route
    :<|> "item" :> "get" :> ReqBody '[JSON] ItemGetRequest :> Verb 'POST 200 '[JSON] ItemGetResponse -- 'itemGet' route
    :<|> "item" :> "import" :> ReqBody '[JSON] ItemImportRequest :> Verb 'POST 200 '[JSON] ItemImportResponse -- 'itemImport' route
    :<|> "item" :> "public_token" :> "exchange" :> ReqBody '[JSON] ItemPublicTokenExchangeRequest :> Verb 'POST 200 '[JSON] ItemPublicTokenExchangeResponse -- 'itemPublicTokenExchange' route
    :<|> "item" :> "remove" :> ReqBody '[JSON] ItemRemoveRequest :> Verb 'POST 200 '[JSON] ItemRemoveResponse -- 'itemRemove' route
    :<|> "item" :> "webhook" :> "update" :> ReqBody '[JSON] ItemWebhookUpdateRequest :> Verb 'POST 200 '[JSON] ItemWebhookUpdateResponse -- 'itemWebhookUpdate' route
    :<|> "liabilities" :> "get" :> ReqBody '[JSON] LiabilitiesGetRequest :> Verb 'POST 200 '[JSON] LiabilitiesGetResponse -- 'liabilitiesGet' route
    :<|> "link" :> "token" :> "create" :> ReqBody '[JSON] LinkTokenCreateRequest :> Verb 'POST 200 '[JSON] LinkTokenCreateResponse -- 'linkTokenCreate' route
    :<|> "link" :> "token" :> "get" :> ReqBody '[JSON] LinkTokenGetRequest :> Verb 'POST 200 '[JSON] LinkTokenGetResponse -- 'linkTokenGet' route
    :<|> "payment_initiation" :> "consent" :> "create" :> ReqBody '[JSON] PaymentInitiationConsentCreateRequest :> Verb 'POST 200 '[JSON] PaymentInitiationConsentCreateResponse -- 'paymentInitiationConsentCreate' route
    :<|> "payment_initiation" :> "consent" :> "get" :> ReqBody '[JSON] PaymentInitiationConsentGetRequest :> Verb 'POST 200 '[JSON] PaymentInitiationConsentGetResponse -- 'paymentInitiationConsentGet' route
    :<|> "payment_initiation" :> "consent" :> "payment" :> "execute" :> ReqBody '[JSON] PaymentInitiationConsentPaymentExecuteRequest :> Verb 'POST 200 '[JSON] PaymentInitiationConsentPaymentExecuteResponse -- 'paymentInitiationConsentPaymentExecute' route
    :<|> "payment_initiation" :> "consent" :> "revoke" :> ReqBody '[JSON] PaymentInitiationConsentRevokeRequest :> Verb 'POST 200 '[JSON] PaymentInitiationConsentRevokeResponse -- 'paymentInitiationConsentRevoke' route
    :<|> "payment_initiation" :> "payment" :> "create" :> ReqBody '[JSON] PaymentInitiationPaymentCreateRequest :> Verb 'POST 200 '[JSON] PaymentInitiationPaymentCreateResponse -- 'paymentInitiationPaymentCreate' route
    :<|> "payment_initiation" :> "payment" :> "get" :> ReqBody '[JSON] PaymentInitiationPaymentGetRequest :> Verb 'POST 200 '[JSON] PaymentInitiationPaymentGetResponse -- 'paymentInitiationPaymentGet' route
    :<|> "payment_initiation" :> "payment" :> "list" :> ReqBody '[JSON] PaymentInitiationPaymentListRequest :> Verb 'POST 200 '[JSON] PaymentInitiationPaymentListResponse -- 'paymentInitiationPaymentList' route
    :<|> "payment_initiation" :> "payment" :> "reverse" :> ReqBody '[JSON] PaymentInitiationPaymentReverseRequest :> Verb 'POST 200 '[JSON] PaymentInitiationPaymentReverseResponse -- 'paymentInitiationPaymentReverse' route
    :<|> "payment_initiation" :> "recipient" :> "create" :> ReqBody '[JSON] PaymentInitiationRecipientCreateRequest :> Verb 'POST 200 '[JSON] PaymentInitiationRecipientCreateResponse -- 'paymentInitiationRecipientCreate' route
    :<|> "payment_initiation" :> "recipient" :> "get" :> ReqBody '[JSON] PaymentInitiationRecipientGetRequest :> Verb 'POST 200 '[JSON] PaymentInitiationRecipientGetResponse -- 'paymentInitiationRecipientGet' route
    :<|> "payment_initiation" :> "recipient" :> "list" :> ReqBody '[JSON] PaymentInitiationRecipientListRequest :> Verb 'POST 200 '[JSON] PaymentInitiationRecipientListResponse -- 'paymentInitiationRecipientList' route
    :<|> "processor" :> "apex" :> "processor_token" :> "create" :> ReqBody '[JSON] ProcessorApexProcessorTokenCreateRequest :> Verb 'POST 200 '[JSON] ProcessorTokenCreateResponse -- 'processorApexProcessorTokenCreate' route
    :<|> "processor" :> "auth" :> "get" :> ReqBody '[JSON] ProcessorAuthGetRequest :> Verb 'POST 200 '[JSON] ProcessorAuthGetResponse -- 'processorAuthGet' route
    :<|> "processor" :> "balance" :> "get" :> ReqBody '[JSON] ProcessorBalanceGetRequest :> Verb 'POST 200 '[JSON] ProcessorBalanceGetResponse -- 'processorBalanceGet' route
    :<|> "processor" :> "bank_transfer" :> "create" :> ReqBody '[JSON] ProcessorBankTransferCreateRequest :> Verb 'POST 200 '[JSON] ProcessorBankTransferCreateResponse -- 'processorBankTransferCreate' route
    :<|> "processor" :> "identity" :> "get" :> ReqBody '[JSON] ProcessorIdentityGetRequest :> Verb 'POST 200 '[JSON] ProcessorIdentityGetResponse -- 'processorIdentityGet' route
    :<|> "processor" :> "stripe" :> "bank_account_token" :> "create" :> ReqBody '[JSON] ProcessorStripeBankAccountTokenCreateRequest :> Verb 'POST 200 '[JSON] ProcessorStripeBankAccountTokenCreateResponse -- 'processorStripeBankAccountTokenCreate' route
    :<|> "processor" :> "token" :> "create" :> ReqBody '[JSON] ProcessorTokenCreateRequest :> Verb 'POST 200 '[JSON] ProcessorTokenCreateResponse -- 'processorTokenCreate' route
    :<|> "sandbox" :> "bank_transfer" :> "fire_webhook" :> ReqBody '[JSON] SandboxBankTransferFireWebhookRequest :> Verb 'POST 200 '[JSON] SandboxBankTransferFireWebhookResponse -- 'sandboxBankTransferFireWebhook' route
    :<|> "sandbox" :> "bank_transfer" :> "simulate" :> ReqBody '[JSON] SandboxBankTransferSimulateRequest :> Verb 'POST 200 '[JSON] SandboxBankTransferSimulateResponse -- 'sandboxBankTransferSimulate' route
    :<|> "sandbox" :> "income" :> "fire_webhook" :> ReqBody '[JSON] SandboxIncomeFireWebhookRequest :> Verb 'POST 200 '[JSON] SandboxIncomeFireWebhookResponse -- 'sandboxIncomeFireWebhook' route
    :<|> "sandbox" :> "item" :> "fire_webhook" :> ReqBody '[JSON] SandboxItemFireWebhookRequest :> Verb 'POST 200 '[JSON] SandboxItemFireWebhookResponse -- 'sandboxItemFireWebhook' route
    :<|> "sandbox" :> "item" :> "reset_login" :> ReqBody '[JSON] SandboxItemResetLoginRequest :> Verb 'POST 200 '[JSON] SandboxItemResetLoginResponse -- 'sandboxItemResetLogin' route
    :<|> "sandbox" :> "item" :> "set_verification_status" :> ReqBody '[JSON] SandboxItemSetVerificationStatusRequest :> Verb 'POST 200 '[JSON] SandboxItemSetVerificationStatusResponse -- 'sandboxItemSetVerificationStatus' route
    :<|> "sandbox" :> "oauth" :> "select_accounts" :> ReqBody '[JSON] SandboxOauthSelectAccountsRequest :> Verb 'POST 200 '[JSON] ((Map.Map String Value)) -- 'sandboxOauthSelectAccounts' route
    :<|> "sandbox" :> "processor_token" :> "create" :> ReqBody '[JSON] SandboxProcessorTokenCreateRequest :> Verb 'POST 200 '[JSON] SandboxProcessorTokenCreateResponse -- 'sandboxProcessorTokenCreate' route
    :<|> "sandbox" :> "public_token" :> "create" :> ReqBody '[JSON] SandboxPublicTokenCreateRequest :> Verb 'POST 200 '[JSON] SandboxPublicTokenCreateResponse -- 'sandboxPublicTokenCreate' route
    :<|> "sandbox" :> "transfer" :> "fire_webhook" :> ReqBody '[JSON] SandboxTransferFireWebhookRequest :> Verb 'POST 200 '[JSON] SandboxTransferFireWebhookResponse -- 'sandboxTransferFireWebhook' route
    :<|> "sandbox" :> "transfer" :> "repayment" :> "simulate" :> ReqBody '[JSON] SandboxTransferRepaymentSimulateRequest :> Verb 'POST 200 '[JSON] SandboxTransferRepaymentSimulateResponse -- 'sandboxTransferRepaymentSimulate' route
    :<|> "sandbox" :> "transfer" :> "simulate" :> ReqBody '[JSON] SandboxTransferSimulateRequest :> Verb 'POST 200 '[JSON] SandboxTransferSimulateResponse -- 'sandboxTransferSimulate' route
    :<|> "sandbox" :> "transfer" :> "sweep" :> "simulate" :> ReqBody '[JSON] SandboxTransferSweepSimulateRequest :> Verb 'POST 200 '[JSON] SandboxTransferSweepSimulateResponse -- 'sandboxTransferSweepSimulate' route
    :<|> "signal" :> "decision" :> "report" :> ReqBody '[JSON] SignalDecisionReportRequest :> Verb 'POST 200 '[JSON] SignalDecisionReportResponse -- 'signalDecisionReport' route
    :<|> "signal" :> "evaluate" :> ReqBody '[JSON] SignalEvaluateRequest :> Verb 'POST 200 '[JSON] SignalEvaluateResponse -- 'signalEvaluate' route
    :<|> "signal" :> "prepare" :> ReqBody '[JSON] SignalPrepareRequest :> Verb 'POST 200 '[JSON] SignalPrepareResponse -- 'signalPrepare' route
    :<|> "signal" :> "return" :> "report" :> ReqBody '[JSON] SignalReturnReportRequest :> Verb 'POST 200 '[JSON] SignalReturnReportResponse -- 'signalReturnReport' route
    :<|> "beta" :> "transactions" :> "v1" :> "enhance" :> ReqBody '[JSON] TransactionsEnhanceGetRequest :> Verb 'POST 200 '[JSON] TransactionsEnhanceGetResponse -- 'transactionsEnhance' route
    :<|> "transactions" :> "get" :> ReqBody '[JSON] TransactionsGetRequest :> Verb 'POST 200 '[JSON] TransactionsGetResponse -- 'transactionsGet' route
    :<|> "transactions" :> "recurring" :> "get" :> ReqBody '[JSON] TransactionsRecurringGetRequest :> Verb 'POST 200 '[JSON] TransactionsRecurringGetResponse -- 'transactionsRecurringGet' route
    :<|> "transactions" :> "refresh" :> ReqBody '[JSON] TransactionsRefreshRequest :> Verb 'POST 200 '[JSON] TransactionsRefreshResponse -- 'transactionsRefresh' route
    :<|> "beta" :> "transactions" :> "rules" :> "v1" :> "create" :> ReqBody '[JSON] TransactionsRulesCreateRequest :> Verb 'POST 200 '[JSON] TransactionsRulesCreateResponse -- 'transactionsRulesCreate' route
    :<|> "beta" :> "transactions" :> "rules" :> "v1" :> "list" :> ReqBody '[JSON] TransactionsRulesListRequest :> Verb 'POST 200 '[JSON] TransactionsRulesListResponse -- 'transactionsRulesList' route
    :<|> "beta" :> "transactions" :> "rules" :> "v1" :> "remove" :> ReqBody '[JSON] TransactionsRulesRemoveRequest :> Verb 'POST 200 '[JSON] TransactionsRulesRemoveResponse -- 'transactionsRulesRemove' route
    :<|> "transactions" :> "sync" :> ReqBody '[JSON] TransactionsSyncRequest :> Verb 'POST 200 '[JSON] TransactionsSyncResponse -- 'transactionsSync' route
    :<|> "transfer" :> "authorization" :> "create" :> ReqBody '[JSON] TransferAuthorizationCreateRequest :> Verb 'POST 200 '[JSON] TransferAuthorizationCreateResponse -- 'transferAuthorizationCreate' route
    :<|> "transfer" :> "cancel" :> ReqBody '[JSON] TransferCancelRequest :> Verb 'POST 200 '[JSON] TransferCancelResponse -- 'transferCancel' route
    :<|> "transfer" :> "create" :> ReqBody '[JSON] TransferCreateRequest :> Verb 'POST 200 '[JSON] TransferCreateResponse -- 'transferCreate' route
    :<|> "transfer" :> "event" :> "list" :> ReqBody '[JSON] TransferEventListRequest :> Verb 'POST 200 '[JSON] TransferEventListResponse -- 'transferEventList' route
    :<|> "transfer" :> "event" :> "sync" :> ReqBody '[JSON] TransferEventSyncRequest :> Verb 'POST 200 '[JSON] TransferEventSyncResponse -- 'transferEventSync' route
    :<|> "transfer" :> "get" :> ReqBody '[JSON] TransferGetRequest :> Verb 'POST 200 '[JSON] TransferGetResponse -- 'transferGet' route
    :<|> "transfer" :> "intent" :> "create" :> ReqBody '[JSON] TransferIntentCreateRequest :> Verb 'POST 200 '[JSON] TransferIntentCreateResponse -- 'transferIntentCreate' route
    :<|> "transfer" :> "intent" :> "get" :> ReqBody '[JSON] (Map.Map String Value) :> Verb 'POST 200 '[JSON] TransferIntentGetResponse -- 'transferIntentGet' route
    :<|> "transfer" :> "list" :> ReqBody '[JSON] TransferListRequest :> Verb 'POST 200 '[JSON] TransferListResponse -- 'transferList' route
    :<|> "transfer" :> "migrate_account" :> ReqBody '[JSON] TransferMigrateAccountRequest :> Verb 'POST 200 '[JSON] TransferMigrateAccountResponse -- 'transferMigrateAccount' route
    :<|> "transfer" :> "repayment" :> "list" :> ReqBody '[JSON] TransferRepaymentListRequest :> Verb 'POST 200 '[JSON] TransferRepaymentListResponse -- 'transferRepaymentList' route
    :<|> "transfer" :> "repayment" :> "return" :> "list" :> ReqBody '[JSON] TransferRepaymentReturnListRequest :> Verb 'POST 200 '[JSON] TransferRepaymentReturnListResponse -- 'transferRepaymentReturnList' route
    :<|> "transfer" :> "sweep" :> "get" :> ReqBody '[JSON] TransferSweepGetRequest :> Verb 'POST 200 '[JSON] TransferSweepGetResponse -- 'transferSweepGet' route
    :<|> "transfer" :> "sweep" :> "list" :> ReqBody '[JSON] TransferSweepListRequest :> Verb 'POST 200 '[JSON] TransferSweepListResponse -- 'transferSweepList' route
    :<|> "user" :> "create" :> ReqBody '[JSON] UserCreateRequest :> Verb 'POST 200 '[JSON] UserCreateResponse -- 'userCreate' route
    :<|> "wallet" :> "create" :> ReqBody '[JSON] WalletCreateRequest :> Verb 'POST 200 '[JSON] WalletCreateResponse -- 'walletCreate' route
    :<|> "wallet" :> "get" :> ReqBody '[JSON] WalletGetRequest :> Verb 'POST 200 '[JSON] WalletGetResponse -- 'walletGet' route
    :<|> "wallet" :> "list" :> ReqBody '[JSON] WalletListRequest :> Verb 'POST 200 '[JSON] WalletListResponse -- 'walletList' route
    :<|> "wallet" :> "transaction" :> "execute" :> ReqBody '[JSON] WalletTransactionExecuteRequest :> Verb 'POST 200 '[JSON] WalletTransactionExecuteResponse -- 'walletTransactionExecute' route
    :<|> "wallet" :> "transaction" :> "get" :> ReqBody '[JSON] WalletTransactionGetRequest :> Verb 'POST 200 '[JSON] WalletTransactionGetResponse -- 'walletTransactionGet' route
    :<|> "wallet" :> "transactions" :> "list" :> ReqBody '[JSON] WalletTransactionsListRequest :> Verb 'POST 200 '[JSON] WalletTransactionsListResponse -- 'walletTransactionsList' route
    :<|> "watchlist_screening" :> "entity" :> "create" :> ReqBody '[JSON] CreateEntityScreeningRequest :> Verb 'POST 200 '[JSON] EntityWatchlistScreeningResponse -- 'watchlistScreeningEntityCreate' route
    :<|> "watchlist_screening" :> "entity" :> "get" :> ReqBody '[JSON] GetEntityWatchlistScreeningRequest :> Verb 'POST 200 '[JSON] EntityWatchlistScreeningResponse -- 'watchlistScreeningEntityGet' route
    :<|> "watchlist_screening" :> "entity" :> "history" :> "list" :> ReqBody '[JSON] ListWatchlistScreeningEntityHistoryRequest :> Verb 'POST 200 '[JSON] PaginatedEntityWatchlistScreeningListResponse -- 'watchlistScreeningEntityHistoryList' route
    :<|> "watchlist_screening" :> "entity" :> "hit" :> "list" :> ReqBody '[JSON] ListWatchlistScreeningEntityHitRequest :> Verb 'POST 200 '[JSON] PaginatedEntityWatchlistScreeningHitListResponse -- 'watchlistScreeningEntityHitsList' route
    :<|> "watchlist_screening" :> "entity" :> "list" :> ReqBody '[JSON] ListEntityWatchlistScreeningRequest :> Verb 'POST 200 '[JSON] PaginatedEntityWatchlistScreeningListResponse -- 'watchlistScreeningEntityList' route
    :<|> "watchlist_screening" :> "entity" :> "program" :> "get" :> ReqBody '[JSON] GetWatchlistScreeningEntityProgramRequest :> Verb 'POST 200 '[JSON] EntityWatchlistProgramResponse -- 'watchlistScreeningEntityProgramGet' route
    :<|> "watchlist_screening" :> "entity" :> "program" :> "list" :> ReqBody '[JSON] ListWatchlistScreeningEntityProgramsRequest :> Verb 'POST 200 '[JSON] PaginatedEntityWatchlistProgramListResponse -- 'watchlistScreeningEntityProgramList' route
    :<|> "watchlist_screening" :> "entity" :> "review" :> "create" :> ReqBody '[JSON] CreateEntityWatchlistScreeningReviewRequest :> Verb 'POST 200 '[JSON] EntityWatchlistScreeningReviewResponse -- 'watchlistScreeningEntityReviewCreate' route
    :<|> "watchlist_screening" :> "entity" :> "review" :> "list" :> ReqBody '[JSON] ListWatchlistScreeningEntityReviewsRequest :> Verb 'POST 200 '[JSON] PaginatedEntityWatchlistScreeningReviewListResponse -- 'watchlistScreeningEntityReviewList' route
    :<|> "watchlist_screening" :> "entity" :> "update" :> ReqBody '[JSON] UpdateEntityScreeningRequest :> Verb 'POST 200 '[JSON] EntityWatchlistScreeningResponse -- 'watchlistScreeningEntityUpdate' route
    :<|> "watchlist_screening" :> "individual" :> "create" :> ReqBody '[JSON] WatchlistScreeningCreateRequest :> Verb 'POST 200 '[JSON] WatchlistScreeningIndividualResponse -- 'watchlistScreeningIndividualCreate' route
    :<|> "watchlist_screening" :> "individual" :> "get" :> ReqBody '[JSON] GetIndividualWatchlistScreeningRequest :> Verb 'POST 200 '[JSON] WatchlistScreeningIndividualResponse -- 'watchlistScreeningIndividualGet' route
    :<|> "watchlist_screening" :> "individual" :> "history" :> "list" :> ReqBody '[JSON] ListWatchlistScreeningIndividualHistoryRequest :> Verb 'POST 200 '[JSON] PaginatedIndividualWatchlistScreeningListResponse -- 'watchlistScreeningIndividualHistoryList' route
    :<|> "watchlist_screening" :> "individual" :> "hit" :> "list" :> ReqBody '[JSON] ListWatchlistScreeningIndividualHitRequest :> Verb 'POST 200 '[JSON] PaginatedIndividualWatchlistScreeningHitListResponse -- 'watchlistScreeningIndividualHitList' route
    :<|> "watchlist_screening" :> "individual" :> "list" :> ReqBody '[JSON] ListIndividualWatchlistScreeningRequest :> Verb 'POST 200 '[JSON] PaginatedIndividualWatchlistScreeningListResponse -- 'watchlistScreeningIndividualList' route
    :<|> "watchlist_screening" :> "individual" :> "program" :> "get" :> ReqBody '[JSON] GetWatchlistScreeningIndividualProgramRequest :> Verb 'POST 200 '[JSON] IndividualWatchlistProgramResponse -- 'watchlistScreeningIndividualProgramGet' route
    :<|> "watchlist_screening" :> "individual" :> "program" :> "list" :> ReqBody '[JSON] ListWatchlistScreeningIndividualProgramsRequest :> Verb 'POST 200 '[JSON] PaginatedIndividualWatchlistProgramListResponse -- 'watchlistScreeningIndividualProgramList' route
    :<|> "watchlist_screening" :> "individual" :> "review" :> "create" :> ReqBody '[JSON] CreateIndividualWatchlistScreeningReviewRequest :> Verb 'POST 200 '[JSON] WatchlistScreeningReviewResponse -- 'watchlistScreeningIndividualReviewCreate' route
    :<|> "watchlist_screening" :> "individual" :> "review" :> "list" :> ReqBody '[JSON] ListWatchlistScreeningIndividualReviewsRequest :> Verb 'POST 200 '[JSON] PaginatedIndividualWatchlistScreeningReviewListResponse -- 'watchlistScreeningIndividualReviewsList' route
    :<|> "watchlist_screening" :> "individual" :> "update" :> ReqBody '[JSON] UpdateIndividualScreeningRequest :> Verb 'POST 200 '[JSON] WatchlistScreeningIndividualResponse -- 'watchlistScreeningIndividualUpdate' route
    :<|> "webhook_verification_key" :> "get" :> ReqBody '[JSON] WebhookVerificationKeyGetRequest :> Verb 'POST 200 '[JSON] WebhookVerificationKeyGetResponse -- 'webhookVerificationKeyGet' route
    :<|> Raw 


-- | Server or client configuration, specifying the host and port to query or serve on.
data Config = Config
  { configUrl :: String  -- ^ scheme://hostname:port/path, e.g. "http://localhost:8080/"
  } deriving (Eq, Ord, Show, Read)


-- | Custom exception type for our errors.
newtype ThePlaidClientError = ThePlaidClientError ClientError
  deriving (Show, Exception)
-- | Configuration, specifying the full url of the service.


-- | Backend for ThePlaid.
-- The backend can be used both for the client and the server. The client generated from the ThePlaid OpenAPI spec
-- is a backend that executes actions by sending HTTP requests (see @createThePlaidClient@). Alternatively, provided
-- a backend, the API can be served using @runThePlaidMiddlewareServer@.
data ThePlaidBackend m = ThePlaidBackend
  { accountsBalanceGet :: AccountsBalanceGetRequest -> m AccountsGetResponse{- ^ The `/accounts/balance/get` endpoint returns the real-time balance for each of an Item's accounts. While other endpoints may return a balance object, only `/accounts/balance/get` forces the available and current balance fields to be refreshed rather than cached. This endpoint can be used for existing Items that were added via any of Plaid’s other products. This endpoint can be used as long as Link has been initialized with any other product, `balance` itself is not a product that can be used to initialize Link. -}
  , accountsGet :: AccountsGetRequest -> m AccountsGetResponse{- ^ The `/accounts/get` endpoint can be used to retrieve a list of accounts associated with any linked Item. Plaid will only return active bank accounts — that is, accounts that are not closed and are capable of carrying a balance. For items that went through the updated account selection pane, this endpoint only returns accounts that were permissioned by the user when they initially created the Item. If a user creates a new account after the initial link, you can capture this event through the [`NEW_ACCOUNTS_AVAILABLE`](https://plaid.com/docs/api/items/#new_accounts_available) webhook and then use Link's [update mode](https://plaid.com/docs/link/update-mode/) to request that the user share this new account with you.  This endpoint retrieves cached information, rather than extracting fresh information from the institution. As a result, balances returned may not be up-to-date; for realtime balance information, use `/accounts/balance/get` instead. Note that some information is nullable. -}
  , applicationGet :: ApplicationGetRequest -> m ApplicationGetResponse{- ^ Allows financial institutions to retrieve information about Plaid clients for the purpose of building control-tower experiences -}
  , assetReportAuditCopyCreate :: AssetReportAuditCopyCreateRequest -> m AssetReportAuditCopyCreateResponse{- ^ Plaid can provide an Audit Copy of any Asset Report directly to a participating third party on your behalf. For example, Plaid can supply an Audit Copy directly to Fannie Mae on your behalf if you participate in the Day 1 Certainty™ program. An Audit Copy contains the same underlying data as the Asset Report.  To grant access to an Audit Copy, use the `/asset_report/audit_copy/create` endpoint to create an `audit_copy_token` and then pass that token to the third party who needs access. Each third party has its own `auditor_id`, for example `fannie_mae`. You’ll need to create a separate Audit Copy for each third party to whom you want to grant access to the Report. -}
  , assetReportAuditCopyGet :: AssetReportAuditCopyGetRequest -> m AssetReportGetResponse{- ^ `/asset_report/audit_copy/get` allows auditors to get a copy of an Asset Report that was previously shared via the `/asset_report/audit_copy/create` endpoint.  The caller of `/asset_report/audit_copy/create` must provide the `audit_copy_token` to the auditor.  This token can then be used to call `/asset_report/audit_copy/create`. -}
  , assetReportAuditCopyRemove :: AssetReportAuditCopyRemoveRequest -> m AssetReportAuditCopyRemoveResponse{- ^ The `/asset_report/audit_copy/remove` endpoint allows you to remove an Audit Copy. Removing an Audit Copy invalidates the `audit_copy_token` associated with it, meaning both you and any third parties holding the token will no longer be able to use it to access Report data. Items associated with the Asset Report, the Asset Report itself and other Audit Copies of it are not affected and will remain accessible after removing the given Audit Copy. -}
  , assetReportCreate :: AssetReportCreateRequest -> m AssetReportCreateResponse{- ^ The `/asset_report/create` endpoint initiates the process of creating an Asset Report, which can then be retrieved by passing the `asset_report_token` return value to the `/asset_report/get` or `/asset_report/pdf/get` endpoints.  The Asset Report takes some time to be created and is not available immediately after calling `/asset_report/create`. When the Asset Report is ready to be retrieved using `/asset_report/get` or `/asset_report/pdf/get`, Plaid will fire a `PRODUCT_READY` webhook. For full details of the webhook schema, see [Asset Report webhooks](https://plaid.com/docs/api/products/assets/#webhooks).  The `/asset_report/create` endpoint creates an Asset Report at a moment in time. Asset Reports are immutable. To get an updated Asset Report, use the `/asset_report/refresh` endpoint. -}
  , assetReportFilter :: AssetReportFilterRequest -> m AssetReportFilterResponse{- ^ By default, an Asset Report will contain all of the accounts on a given Item. In some cases, you may not want the Asset Report to contain all accounts. For example, you might have the end user choose which accounts are relevant in Link using the Account Select view, which you can enable in the dashboard. Or, you might always exclude certain account types or subtypes, which you can identify by using the `/accounts/get` endpoint. To narrow an Asset Report to only a subset of accounts, use the `/asset_report/filter` endpoint.  To exclude certain Accounts from an Asset Report, first use the `/asset_report/create` endpoint to create the report, then send the `asset_report_token` along with a list of `account_ids` to exclude to the `/asset_report/filter` endpoint, to create a new Asset Report which contains only a subset of the original Asset Report's data.  Because Asset Reports are immutable, calling `/asset_report/filter` does not alter the original Asset Report in any way; rather, `/asset_report/filter` creates a new Asset Report with a new token and id. Asset Reports created via `/asset_report/filter` do not contain new Asset data, and are not billed.  Plaid will fire a [`PRODUCT_READY`](https://plaid.com/docs/api/products/assets/#product_ready) webhook once generation of the filtered Asset Report has completed. -}
  , assetReportGet :: AssetReportGetRequest -> m AssetReportGetResponse{- ^ The `/asset_report/get` endpoint retrieves the Asset Report in JSON format. Before calling `/asset_report/get`, you must first create the Asset Report using `/asset_report/create` (or filter an Asset Report using `/asset_report/filter`) and then wait for the [`PRODUCT_READY`](https://plaid.com/docs/api/products/assets/#product_ready) webhook to fire, indicating that the Report is ready to be retrieved.  By default, an Asset Report includes transaction descriptions as returned by the bank, as opposed to parsed and categorized by Plaid. You can also receive cleaned and categorized transactions, as well as additional insights like merchant name or location information. We call this an Asset Report with Insights. An Asset Report with Insights provides transaction category, location, and merchant information in addition to the transaction strings provided in a standard Asset Report.  To retrieve an Asset Report with Insights, call the `/asset_report/get` endpoint with `include_insights` set to `true`. -}
  , assetReportPdfGet :: AssetReportPDFGetRequest -> m FilePath{- ^ The `/asset_report/pdf/get` endpoint retrieves the Asset Report in PDF format. Before calling `/asset_report/pdf/get`, you must first create the Asset Report using `/asset_report/create` (or filter an Asset Report using `/asset_report/filter`) and then wait for the [`PRODUCT_READY`](https://plaid.com/docs/api/products/assets/#product_ready) webhook to fire, indicating that the Report is ready to be retrieved.  The response to `/asset_report/pdf/get` is the PDF binary data. The `request_id`  is returned in the `Plaid-Request-ID` header.  [View a sample PDF Asset Report](https://plaid.com/documents/sample-asset-report.pdf). -}
  , assetReportRefresh :: AssetReportRefreshRequest -> m AssetReportRefreshResponse{- ^ An Asset Report is an immutable snapshot of a user's assets. In order to \"refresh\" an Asset Report you created previously, you can use the `/asset_report/refresh` endpoint to create a new Asset Report based on the old one, but with the most recent data available.  The new Asset Report will contain the same Items as the original Report, as well as the same filters applied by any call to `/asset_report/filter`. By default, the new Asset Report will also use the same parameters you submitted with your original `/asset_report/create` request, but the original `days_requested` value and the values of any parameters in the `options` object can be overridden with new values. To change these arguments, simply supply new values for them in your request to `/asset_report/refresh`. Submit an empty string (\"\") for any previously-populated fields you would like set as empty. -}
  , assetReportRelayCreate :: AssetReportRelayCreateRequest -> m AssetReportRelayCreateResponse{- ^ Plaid can share an Asset Report directly with a participating third party on your behalf. The shared Asset Report is the exact same Asset Report originally created in `/asset_report/create`.  To grant access to an Asset Report to a third party, use the `/asset_report/relay/create` endpoint to create an `asset_relay_token` and then pass that token to the third party who needs access. Each third party has its own `secondary_client_id`, for example `ce5bd328dcd34123456`. You'll need to create a separate `asset_relay_token` for each third party to whom you want to grant access to the Report. -}
  , assetReportRelayGet :: AssetReportRelayGetRequest -> m AssetReportGetResponse{- ^ `/asset_report/relay/get` allows third parties to get an Asset Report that was shared with them, using an `asset_relay_token` that was created by the report owner. -}
  , assetReportRelayRefresh :: AssetReportRelayRefreshRequest -> m AssetReportRelayRefreshResponse{- ^ The `/asset_report/relay/refresh` endpoint allows third parties to refresh an Asset Report that was relayed to them, using an `asset_relay_token` that was created by the report owner. A new Asset Report will be created based on the old one, but with the most recent data available. -}
  , assetReportRelayRemove :: AssetReportRelayRemoveRequest -> m AssetReportRelayRemoveResponse{- ^ The `/asset_report/relay/remove` endpoint allows you to invalidate an `asset_relay_token`, meaning the third party holding the token will no longer be able to use it to access the Asset Report to which the `asset_relay_token` gives access to. The Asset Report, Items associated with it, and other Asset Relay Tokens that provide access to the same Asset Report are not affected and will remain accessible after removing the given `asset_relay_token. -}
  , assetReportRemove :: AssetReportRemoveRequest -> m AssetReportRemoveResponse{- ^ The `/item/remove` endpoint allows you to invalidate an `access_token`, meaning you will not be able to create new Asset Reports with it. Removing an Item does not affect any Asset Reports or Audit Copies you have already created, which will remain accessible until you remove them specifically.  The `/asset_report/remove` endpoint allows you to remove an Asset Report. Removing an Asset Report invalidates its `asset_report_token`, meaning you will no longer be able to use it to access Report data or create new Audit Copies. Removing an Asset Report does not affect the underlying Items, but does invalidate any `audit_copy_tokens` associated with the Asset Report. -}
  , authGet :: AuthGetRequest -> m AuthGetResponse{- ^ The `/auth/get` endpoint returns the bank account and bank identification numbers (such as routing numbers, for US accounts) associated with an Item's checking and savings accounts, along with high-level account data and balances when available.  Note: This request may take some time to complete if `auth` was not specified as an initial product when creating the Item. This is because Plaid must communicate directly with the institution to retrieve the data.  Also note that `/auth/get` will not return data for any new accounts opened after the Item was created. To obtain data for new accounts, create a new Item.  Versioning note: In API version 2017-03-08, the schema of the `numbers` object returned by this endpoint is substantially different. For details, see [Plaid API versioning](https://plaid.com/docs/api/versioning/#version-2018-05-22). -}
  , bankTransferBalanceGet :: BankTransferBalanceGetRequest -> m BankTransferBalanceGetResponse{- ^ Use the `/bank_transfer/balance/get` endpoint to see the available balance in your bank transfer account. Debit transfers increase this balance once their status is posted. Credit transfers decrease this balance when they are created.  The transactable balance shows the amount in your account that you are able to use for transfers, and is essentially your available balance minus your minimum balance.  Note that this endpoint can only be used with FBO accounts, when using Bank Transfers in the Full Service configuration. It cannot be used on your own account when using Bank Transfers in the BTS Platform configuration. -}
  , bankTransferCancel :: BankTransferCancelRequest -> m BankTransferCancelResponse{- ^ Use the `/bank_transfer/cancel` endpoint to cancel a bank transfer.  A transfer is eligible for cancelation if the `cancellable` property returned by `/bank_transfer/get` is `true`. -}
  , bankTransferCreate :: BankTransferCreateRequest -> m BankTransferCreateResponse{- ^ Use the `/bank_transfer/create` endpoint to initiate a new bank transfer. -}
  , bankTransferEventList :: BankTransferEventListRequest -> m BankTransferEventListResponse{- ^ Use the `/bank_transfer/event/list` endpoint to get a list of bank transfer events based on specified filter criteria. -}
  , bankTransferEventSync :: BankTransferEventSyncRequest -> m BankTransferEventSyncResponse{- ^ `/bank_transfer/event/sync` allows you to request up to the next 25 bank transfer events that happened after a specific `event_id`. Use the `/bank_transfer/event/sync` endpoint to guarantee you have seen all bank transfer events. -}
  , bankTransferGet :: BankTransferGetRequest -> m BankTransferGetResponse{- ^ The `/bank_transfer/get` fetches information about the bank transfer corresponding to the given `bank_transfer_id`. -}
  , bankTransferList :: BankTransferListRequest -> m BankTransferListResponse{- ^ Use the `/bank_transfer/list` endpoint to see a list of all your bank transfers and their statuses. Results are paginated; use the `count` and `offset` query parameters to retrieve the desired bank transfers.  -}
  , bankTransferMigrateAccount :: BankTransferMigrateAccountRequest -> m BankTransferMigrateAccountResponse{- ^ As an alternative to adding Items via Link, you can also use the `/bank_transfer/migrate_account` endpoint to migrate known account and routing numbers to Plaid Items.  Note that Items created in this way are not compatible with endpoints for other products, such as `/accounts/balance/get`, and can only be used with Bank Transfer endpoints.  If you require access to other endpoints, create the Item through Link instead.  Access to `/bank_transfer/migrate_account` is not enabled by default; to obtain access, contact your Plaid Account Manager. -}
  , bankTransferSweepGet :: BankTransferSweepGetRequest -> m BankTransferSweepGetResponse{- ^ The `/bank_transfer/sweep/get` endpoint fetches information about the sweep corresponding to the given `sweep_id`. -}
  , bankTransferSweepList :: BankTransferSweepListRequest -> m BankTransferSweepListResponse{- ^ The `/bank_transfer/sweep/list` endpoint fetches information about the sweeps matching the given filters. -}
  , categoriesGet :: Value -> m CategoriesGetResponse{- ^ Send a request to the `/categories/get` endpoint to get detailed information on categories returned by Plaid. This endpoint does not require authentication. -}
  , createPaymentToken :: PaymentInitiationPaymentTokenCreateRequest -> m PaymentInitiationPaymentTokenCreateResponse{- ^ The `/payment_initiation/payment/token/create` endpoint has been deprecated. New Plaid customers will be unable to use this endpoint, and existing customers are encouraged to migrate to the newer, `link_token`-based flow. The recommended flow is to provide the `payment_id` to `/link/token/create`, which returns a `link_token` used to initialize Link.  The `/payment_initiation/payment/token/create` is used to create a `payment_token`, which can then be used in Link initialization to enter a payment initiation flow. You can only use a `payment_token` once. If this attempt fails, the end user aborts the flow, or the token expires, you will need to create a new payment token. Creating a new payment token does not require end user input. -}
  , creditAuditCopyTokenCreate :: CreditAuditCopyTokenCreateRequest -> m CreditAuditCopyTokenCreateResponse{- ^ Plaid can provide an Audit Copy token of an Asset Report and/or Income Report directly to a participating third party on your behalf. For example, Plaid can supply an Audit Copy token directly to Fannie Mae on your behalf if you participate in the Day 1 Certainty™ program. An Audit Copy token contains the same underlying data as the Asset Report and/or Income Report (result of /credit/payroll_income/get).  To grant access to an Audit Copy token, use the `/credit/audit_copy_token/create` endpoint to create an `audit_copy_token` and then pass that token to the third party who needs access. Each third party has its own `auditor_id`, for example `fannie_mae`. You’ll need to create a separate Audit Copy for each third party to whom you want to grant access to the Report. -}
  , creditBankIncomeGet :: CreditBankIncomeGetRequest -> m CreditBankIncomeGetResponse{- ^ `/credit/bank_income/get` returns the bank income report(s) for a specified user. -}
  , creditBankIncomeRefresh :: CreditBankIncomeRefreshRequest -> m CreditBankIncomeRefreshResponse{- ^ `/credit/bank_income/refresh` refreshes the bank income report data for a specific user. -}
  , creditEmploymentGet :: CreditEmploymentGetRequest -> m CreditEmploymentGetResponse{- ^ `/credit/employment/get` returns a list of items with employment information from a user's payroll provider that was verified by an end user. -}
  , creditPayrollIncomeGet :: CreditPayrollIncomeGetRequest -> m CreditPayrollIncomeGetResponse{- ^ This endpoint gets payroll income information for a specific user, either as a result of the user connecting to their payroll provider or uploading a pay related document. -}
  , creditPayrollIncomePrecheck :: CreditPayrollIncomePrecheckRequest -> m CreditPayrollIncomePrecheckResponse{- ^ `/credit/payroll_income/precheck` is an optional endpoint that can be called before initializing a Link session for income verification. It evaluates whether a given user is supportable by digital income verification. If the user is eligible for digital verification, that information will be associated with the user token, and in this way will generate a Link UI optimized for the end user and their specific employer. If the user cannot be confirmed as eligible, the user can still use the income verification flow, but they may be required to manually upload a paystub to verify their income.  While all request fields are optional, providing `employer` data will increase the chance of receiving a useful result. -}
  , creditPayrollIncomeRefresh :: CreditPayrollIncomeRefreshRequest -> m CreditPayrollIncomeRefreshResponse{- ^ `/credit/payroll_income/refresh` refreshes a given digital payroll income verification. -}
  , creditRelayCreate :: CreditRelayCreateRequest -> m CreditRelayCreateResponse{- ^ Plaid can share an Asset Report directly with a participating third party on your behalf. The shared Asset Report is the exact same Asset Report originally created in `/asset_report/create`.  To grant access to an Asset Report to a third party, use the `/credit/relay/create` endpoint to create a `relay_token` and then pass that token to the third party who needs access. Each third party has its own `secondary_client_id`, for example `ce5bd328dcd34123456`. You'll need to create a separate `relay_token` for each third party to whom you want to grant access to the Report. -}
  , dashboardUserList :: ListDashboardUserRequest -> m PaginatedDashboardUserListResponse{- ^ List all dashboard users associated with your account. -}
  , dashobardUserGet :: GetDashboardUserRequest -> m DashboardUserResponse{- ^ Retrieve information about a dashboard user. -}
  , depositSwitchAltCreate :: DepositSwitchAltCreateRequest -> m DepositSwitchAltCreateResponse{- ^ This endpoint provides an alternative to `/deposit_switch/create` for customers who have not yet fully integrated with Plaid Exchange. Like `/deposit_switch/create`, it creates a deposit switch entity that will be persisted throughout the lifecycle of the switch. -}
  , depositSwitchCreate :: DepositSwitchCreateRequest -> m DepositSwitchCreateResponse{- ^ This endpoint creates a deposit switch entity that will be persisted throughout the lifecycle of the switch. -}
  , depositSwitchGet :: DepositSwitchGetRequest -> m DepositSwitchGetResponse{- ^ This endpoint returns information related to how the user has configured their payroll allocation and the state of the switch. You can use this information to build logic related to the user's direct deposit allocation preferences. -}
  , depositSwitchTokenCreate :: DepositSwitchTokenCreateRequest -> m DepositSwitchTokenCreateResponse{- ^ In order for the end user to take action, you will need to create a public token representing the deposit switch. This token is used to initialize Link. It can be used one time and expires after 30 minutes.  -}
  , employersSearch :: EmployersSearchRequest -> m EmployersSearchResponse{- ^ `/employers/search` allows you the ability to search Plaid’s database of known employers, for use with Deposit Switch. You can use this endpoint to look up a user's employer in order to confirm that they are supported. Users with non-supported employers can then be routed out of the Deposit Switch flow.  The data in the employer database is currently limited. As the Deposit Switch and Income products progress through their respective beta periods, more employers are being regularly added. Because the employer database is frequently updated, we recommend that you do not cache or store data from this endpoint for more than a day. -}
  , employmentVerificationGet :: EmploymentVerificationGetRequest -> m EmploymentVerificationGetResponse{- ^ `/employment/verification/get` returns a list of employments through a user payroll that was verified by an end user.  This endpoint has been deprecated; new integrations should use `/credit/employment/get` instead. -}
  , identityGet :: IdentityGetRequest -> m IdentityGetResponse{- ^ The `/identity/get` endpoint allows you to retrieve various account holder information on file with the financial institution, including names, emails, phone numbers, and addresses. Only name data is guaranteed to be returned; other fields will be empty arrays if not provided by the institution.  This request may take some time to complete if identity was not specified as an initial product when creating the Item. This is because Plaid must communicate directly with the institution to retrieve the data.  Note: In API versions 2018-05-22 and earlier, the `owners` object is not returned, and instead identity information is returned in the top level `identity` object. For more details, see [Plaid API versioning](https://plaid.com/docs/api/versioning/#version-2019-05-29). -}
  , identityVerificationCreate :: IdentityVerificationCreateRequest -> m IdentityVerificationResponse{- ^ Create a new Identity Verification for the user specified by the `client_user_id` field. The requirements and behavior of the verification are determined by the `template_id` provided. If you don't know whether the associated user already has an active Identity Verification, you can specify `\"is_idempotent\": true` in the request body. With idempotency enabled, a new Identity Verification will only be created if one does not already exist for the associated `client_user_id` and `template_id`. If an Identity Verification is found, it will be returned unmodified with an `200 OK` HTTP status code.  -}
  , identityVerificationGet :: GetIdentityVerificationRequest -> m IdentityVerificationResponse{- ^ Retrieve a previously created identity verification -}
  , identityVerificationList :: ListIdentityVerificationRequest -> m PaginatedIdentityVerificationListResponse{- ^ Filter and list Identity Verifications created by your account -}
  , identityVerificationRetry :: IdentityVerificationRetryRequest -> m IdentityVerificationResponse{- ^ Allow a customer to retry their identity verification -}
  , incomeVerificationCreate :: IncomeVerificationCreateRequest -> m IncomeVerificationCreateResponse{- ^ `/income/verification/create` begins the income verification process by returning an `income_verification_id`. You can then provide the `income_verification_id` to `/link/token/create` under the `income_verification` parameter in order to create a Link instance that will prompt the user to go through the income verification flow. Plaid will fire an `INCOME` webhook once the user completes the Payroll Income flow, or when the uploaded documents in the Document Income flow have finished processing.  -}
  , incomeVerificationDocumentsDownload :: IncomeVerificationDocumentsDownloadRequest -> m FilePath{- ^ `/income/verification/documents/download` provides the ability to download the source documents associated with the verification.  If Document Income was used, the documents will be those the user provided in Link. For Payroll Income, the most recent files available for download from the payroll provider will be available from this endpoint.  The response to `/income/verification/documents/download` is a ZIP file in binary data. If a `document_id` is passed, a single document will be contained in this file. If not, the response will contain all documents associated with the verification.  The `request_id` is returned in the `Plaid-Request-ID` header. -}
  , incomeVerificationPaystubsGet :: IncomeVerificationPaystubsGetRequest -> m IncomeVerificationPaystubsGetResponse{- ^ `/income/verification/paystubs/get` returns the information collected from the paystubs that were used to verify an end user''s income. It can be called once the status of the verification has been set to `VERIFICATION_STATUS_PROCESSING_COMPLETE`, as reported by the `INCOME: verification_status` webhook. Attempting to call the endpoint before verification has been completed will result in an error.  This endpoint has been deprecated; new integrations should use `/credit/payroll_income/get` instead. -}
  , incomeVerificationPrecheck :: IncomeVerificationPrecheckRequest -> m IncomeVerificationPrecheckResponse{- ^ `/income/verification/precheck` is an optional endpoint that can be called before initializing a Link session for income verification. It evaluates whether a given user is supportable by digital income verification and returns a `precheck_id` that can be provided to `/link/token/create`. If the user is eligible for digital verification, providing the `precheck_id` in this way will generate a Link UI optimized for the end user and their specific employer. If the user cannot be confirmed as eligible, the `precheck_id` can still be provided to `/link/token/create` and the user can still use the income verification flow, but they may be required to manually upload a paystub to verify their income.  While all request fields are optional, providing either `employer` or `transactions_access_tokens` data will increase the chance of receiving a useful result.  This endpoint has been deprecated; new integrations should use `/credit/payroll_income/precheck` instead. -}
  , incomeVerificationRefresh :: IncomeVerificationRefreshRequest -> m IncomeVerificationRefreshResponse{- ^ `/income/verification/refresh` refreshes a given income verification. -}
  , incomeVerificationTaxformsGet :: (Map.Map String Value) -> m IncomeVerificationTaxformsGetResponse{- ^ `/income/verification/taxforms/get` returns the information collected from forms that were used to verify an end user''s income. It can be called once the status of the verification has been set to `VERIFICATION_STATUS_PROCESSING_COMPLETE`, as reported by the `INCOME: verification_status` webhook. Attempting to call the endpoint before verification has been completed will result in an error.  This endpoint has been deprecated; new integrations should use `/credit/payroll_income/get` instead. -}
  , institutionsGet :: InstitutionsGetRequest -> m InstitutionsGetResponse{- ^ Returns a JSON response containing details on all financial institutions currently supported by Plaid. Because Plaid supports thousands of institutions, results are paginated.  If there is no overlap between an institution’s enabled products and a client’s enabled products, then the institution will be filtered out from the response. As a result, the number of institutions returned may not match the count specified in the call. -}
  , institutionsGetById :: InstitutionsGetByIdRequest -> m InstitutionsGetByIdResponse{- ^ Returns a JSON response containing details on a specified financial institution currently supported by Plaid.  Versioning note: API versions 2019-05-29 and earlier allow use of the `public_key` parameter instead of the `client_id` and `secret` to authenticate to this endpoint. The `public_key` has been deprecated; all customers are encouraged to use `client_id` and `secret` instead.  -}
  , institutionsSearch :: InstitutionsSearchRequest -> m InstitutionsSearchResponse{- ^ Returns a JSON response containing details for institutions that match the query parameters, up to a maximum of ten institutions per query.  Versioning note: API versions 2019-05-29 and earlier allow use of the `public_key` parameter instead of the `client_id` and `secret` parameters to authenticate to this endpoint. The `public_key` parameter has since been deprecated; all customers are encouraged to use `client_id` and `secret` instead.  -}
  , investmentsHoldingsGet :: InvestmentsHoldingsGetRequest -> m InvestmentsHoldingsGetResponse{- ^ The `/investments/holdings/get` endpoint allows developers to receive user-authorized stock position data for `investment`-type accounts. -}
  , investmentsTransactionsGet :: InvestmentsTransactionsGetRequest -> m InvestmentsTransactionsGetResponse{- ^ The `/investments/transactions/get` endpoint allows developers to retrieve user-authorized transaction data for investment accounts.  Transactions are returned in reverse-chronological order, and the sequence of transaction ordering is stable and will not shift.  Due to the potentially large number of investment transactions associated with an Item, results are paginated. Manipulate the count and offset parameters in conjunction with the `total_investment_transactions` response body field to fetch all available investment transactions. -}
  , itemAccessTokenInvalidate :: ItemAccessTokenInvalidateRequest -> m ItemAccessTokenInvalidateResponse{- ^ By default, the `access_token` associated with an Item does not expire and should be stored in a persistent, secure manner.  You can use the `/item/access_token/invalidate` endpoint to rotate the `access_token` associated with an Item. The endpoint returns a new `access_token` and immediately invalidates the previous `access_token`.  -}
  , itemApplicationList :: ItemApplicationListRequest -> m ItemApplicationListResponse{- ^ List a user’s connected applications -}
  , itemApplicationScopesUpdate :: ItemApplicationScopesUpdateRequest -> m ItemApplicationScopesUpdateResponse{- ^ Enable consumers to update product access on selected accounts for an application. -}
  , itemCreatePublicToken :: ItemPublicTokenCreateRequest -> m ItemPublicTokenCreateResponse{- ^ Note: As of July 2020, the `/item/public_token/create` endpoint is deprecated. Instead, use `/link/token/create` with an `access_token` to create a Link token for use with [update mode](https://plaid.com/docs/link/update-mode).  If you need your user to take action to restore or resolve an error associated with an Item, generate a public token with the `/item/public_token/create` endpoint and then initialize Link with that `public_token`.  A `public_token` is one-time use and expires after 30 minutes. You use a `public_token` to initialize Link in [update mode](https://plaid.com/docs/link/update-mode) for a particular Item. You can generate a `public_token` for an Item even if you did not use Link to create the Item originally.  The `/item/public_token/create` endpoint is **not** used to create your initial `public_token`. If you have not already received an `access_token` for a specific Item, use Link to obtain your `public_token` instead. See the [Quickstart](https://plaid.com/docs/quickstart) for more information. -}
  , itemGet :: ItemGetRequest -> m ItemGetResponse{- ^ Returns information about the status of an Item. -}
  , itemImport :: ItemImportRequest -> m ItemImportResponse{- ^ `/item/import` creates an Item via your Plaid Exchange Integration and returns an `access_token`. As part of an `/item/import` request, you will include a User ID (`user_auth.user_id`) and Authentication Token (`user_auth.auth_token`) that enable data aggregation through your Plaid Exchange API endpoints. These authentication principals are to be chosen by you.  Upon creating an Item via `/item/import`, Plaid will automatically begin an extraction of that Item through the Plaid Exchange infrastructure you have already integrated. This will automatically generate the Plaid native account ID for the account the user will switch their direct deposit to (`target_account_id`). -}
  , itemPublicTokenExchange :: ItemPublicTokenExchangeRequest -> m ItemPublicTokenExchangeResponse{- ^ Exchange a Link `public_token` for an API `access_token`. Link hands off the `public_token` client-side via the `onSuccess` callback once a user has successfully created an Item. The `public_token` is ephemeral and expires after 30 minutes. An `access_token` does not expire, but can be revoked by calling `/item/remove`.  The response also includes an `item_id` that should be stored with the `access_token`. The `item_id` is used to identify an Item in a webhook. The `item_id` can also be retrieved by making an `/item/get` request. -}
  , itemRemove :: ItemRemoveRequest -> m ItemRemoveResponse{- ^ The `/item/remove` endpoint allows you to remove an Item. Once removed, the `access_token`, as well as any processor tokens or bank account tokens associated with the Item, is no longer valid and cannot be used to access any data that was associated with the Item.  Note that in the Development environment, issuing an `/item/remove`  request will not decrement your live credential count. To increase your credential account in Development, contact Support.  Also note that for certain OAuth-based institutions, an Item removed via `/item/remove` may still show as an active connection in the institution's OAuth permission manager.  API versions 2019-05-29 and earlier return a `removed` boolean as part of the response. -}
  , itemWebhookUpdate :: ItemWebhookUpdateRequest -> m ItemWebhookUpdateResponse{- ^ The POST `/item/webhook/update` allows you to update the webhook URL associated with an Item. This request triggers a [`WEBHOOK_UPDATE_ACKNOWLEDGED`](https://plaid.com/docs/api/items/#webhook_update_acknowledged) webhook to the newly specified webhook URL. -}
  , liabilitiesGet :: LiabilitiesGetRequest -> m LiabilitiesGetResponse{- ^ The `/liabilities/get` endpoint returns various details about an Item with loan or credit accounts. Liabilities data is available primarily for US financial institutions, with some limited coverage of Canadian institutions. Currently supported account types are account type `credit` with account subtype `credit card` or `paypal`, and account type `loan` with account subtype `student` or `mortgage`. To limit accounts listed in Link to types and subtypes supported by Liabilities, you can use the `account_filters` parameter when [creating a Link token](https://plaid.com/docs/api/tokens/#linktokencreate).  The types of information returned by Liabilities can include balances and due dates, loan terms, and account details such as original loan amount and guarantor. Data is refreshed approximately once per day; the latest data can be retrieved by calling `/liabilities/get`.  Note: This request may take some time to complete if `liabilities` was not specified as an initial product when creating the Item. This is because Plaid must communicate directly with the institution to retrieve the additional data. -}
  , linkTokenCreate :: LinkTokenCreateRequest -> m LinkTokenCreateResponse{- ^ The `/link/token/create` endpoint creates a `link_token`, which is required as a parameter when initializing Link. Once Link has been initialized, it returns a `public_token`, which can then be exchanged for an `access_token` via `/item/public_token/exchange` as part of the main Link flow.  A `link_token` generated by `/link/token/create` is also used to initialize other Link flows, such as the update mode flow for tokens with expired credentials, or the Payment Initiation (Europe) flow. -}
  , linkTokenGet :: LinkTokenGetRequest -> m LinkTokenGetResponse{- ^ The `/link/token/get` endpoint gets information about a previously-created `link_token` using the `/link/token/create` endpoint. It can be useful for debugging purposes. -}
  , paymentInitiationConsentCreate :: PaymentInitiationConsentCreateRequest -> m PaymentInitiationConsentCreateResponse{- ^ The `/payment_initiation/consent/create` endpoint is used to create a payment consent, which can be used to initiate payments on behalf of the user. Payment consents are created with `UNAUTHORISED` status by default and must be authorised by the user before payments can be initiated.  Consents can be limited in time and scope, and have constraints that describe limitations for payments. -}
  , paymentInitiationConsentGet :: PaymentInitiationConsentGetRequest -> m PaymentInitiationConsentGetResponse{- ^ The `/payment_initiation/consent/get` endpoint can be used to check the status of a payment consent, as well as to receive basic information such as recipient and constraints. -}
  , paymentInitiationConsentPaymentExecute :: PaymentInitiationConsentPaymentExecuteRequest -> m PaymentInitiationConsentPaymentExecuteResponse{- ^ The `/payment_initiation/consent/payment/execute` endpoint can be used to execute payments using payment consent. -}
  , paymentInitiationConsentRevoke :: PaymentInitiationConsentRevokeRequest -> m PaymentInitiationConsentRevokeResponse{- ^ The `/payment_initiation/consent/revoke` endpoint can be used to revoke the payment consent. Once the consent is revoked, it is not possible to initiate payments using it. -}
  , paymentInitiationPaymentCreate :: PaymentInitiationPaymentCreateRequest -> m PaymentInitiationPaymentCreateResponse{- ^ After creating a payment recipient, you can use the `/payment_initiation/payment/create` endpoint to create a payment to that recipient.  Payments can be one-time or standing order (recurring) and can be denominated in either EUR or GBP.  If making domestic GBP-denominated payments, your recipient must have been created with BACS numbers. In general, EUR-denominated payments will be sent via SEPA Credit Transfer and GBP-denominated payments will be sent via the Faster Payments network, but the payment network used will be determined by the institution. Payments sent via Faster Payments will typically arrive immediately, while payments sent via SEPA Credit Transfer will typically arrive in one business day.  Standing orders (recurring payments) must be denominated in GBP and can only be sent to recipients in the UK. Once created, standing order payments cannot be modified or canceled via the API. An end user can cancel or modify a standing order directly on their banking application or website, or by contacting the bank. Standing orders will follow the payment rules of the underlying rails (Faster Payments in UK). Payments can be sent Monday to Friday, excluding bank holidays. If the pre-arranged date falls on a weekend or bank holiday, the payment is made on the next working day. It is not possible to guarantee the exact time the payment will reach the recipient’s account, although at least 90% of standing order payments are sent by 6am.  In the Development environment, payments must be below 5 GBP / EUR. For details on any payment limits in Production, contact your Plaid Account Manager. -}
  , paymentInitiationPaymentGet :: PaymentInitiationPaymentGetRequest -> m PaymentInitiationPaymentGetResponse{- ^ The `/payment_initiation/payment/get` endpoint can be used to check the status of a payment, as well as to receive basic information such as recipient and payment amount. In the case of standing orders, the `/payment_initiation/payment/get` endpoint will provide information about the status of the overall standing order itself; the API cannot be used to retrieve payment status for individual payments within a standing order. -}
  , paymentInitiationPaymentList :: PaymentInitiationPaymentListRequest -> m PaymentInitiationPaymentListResponse{- ^ The `/payment_initiation/payment/list` endpoint can be used to retrieve all created payments. By default, the 10 most recent payments are returned. You can request more payments and paginate through the results using the optional `count` and `cursor` parameters. -}
  , paymentInitiationPaymentReverse :: PaymentInitiationPaymentReverseRequest -> m PaymentInitiationPaymentReverseResponse{- ^ Reverse a previously initiated payment.  A payment can only be reversed once and will be refunded to the original sender's account.  -}
  , paymentInitiationRecipientCreate :: PaymentInitiationRecipientCreateRequest -> m PaymentInitiationRecipientCreateResponse{- ^ Create a payment recipient for payment initiation.  The recipient must be in Europe, within a country that is a member of the Single Euro Payment Area (SEPA).  For a standing order (recurring) payment, the recipient must be in the UK.  The endpoint is idempotent: if a developer has already made a request with the same payment details, Plaid will return the same `recipient_id`.  -}
  , paymentInitiationRecipientGet :: PaymentInitiationRecipientGetRequest -> m PaymentInitiationRecipientGetResponse{- ^ Get details about a payment recipient you have previously created. -}
  , paymentInitiationRecipientList :: PaymentInitiationRecipientListRequest -> m PaymentInitiationRecipientListResponse{- ^ The `/payment_initiation/recipient/list` endpoint list the payment recipients that you have previously created. -}
  , processorApexProcessorTokenCreate :: ProcessorApexProcessorTokenCreateRequest -> m ProcessorTokenCreateResponse{- ^ Used to create a token suitable for sending to Apex to enable Plaid-Apex integrations. -}
  , processorAuthGet :: ProcessorAuthGetRequest -> m ProcessorAuthGetResponse{- ^ The `/processor/auth/get` endpoint returns the bank account and bank identification number (such as the routing number, for US accounts), for a checking or savings account that''s associated with a given `processor_token`. The endpoint also returns high-level account data and balances when available.  Versioning note: API versions 2019-05-29 and earlier use a different schema for the `numbers` object returned by this endpoint. For details, see [Plaid API versioning](https://plaid.com/docs/api/versioning/#version-2020-09-14).  -}
  , processorBalanceGet :: ProcessorBalanceGetRequest -> m ProcessorBalanceGetResponse{- ^ The `/processor/balance/get` endpoint returns the real-time balance for each of an Item's accounts. While other endpoints may return a balance object, only `/processor/balance/get` forces the available and current balance fields to be refreshed rather than cached.  -}
  , processorBankTransferCreate :: ProcessorBankTransferCreateRequest -> m ProcessorBankTransferCreateResponse{- ^ Use the `/processor/bank_transfer/create` endpoint to initiate a new bank transfer as a processor -}
  , processorIdentityGet :: ProcessorIdentityGetRequest -> m ProcessorIdentityGetResponse{- ^ The `/processor/identity/get` endpoint allows you to retrieve various account holder information on file with the financial institution, including names, emails, phone numbers, and addresses. -}
  , processorStripeBankAccountTokenCreate :: ProcessorStripeBankAccountTokenCreateRequest -> m ProcessorStripeBankAccountTokenCreateResponse{- ^ Used to create a token suitable for sending to Stripe to enable Plaid-Stripe integrations. For a detailed guide on integrating Stripe, see [Add Stripe to your app](https://plaid.com/docs/auth/partnerships/stripe/). Bank account tokens can also be revoked, using `/item/remove`. -}
  , processorTokenCreate :: ProcessorTokenCreateRequest -> m ProcessorTokenCreateResponse{- ^ Used to create a token suitable for sending to one of Plaid's partners to enable integrations. Note that Stripe partnerships use bank account tokens instead; see `/processor/stripe/bank_account_token/create` for creating tokens for use with Stripe integrations. Processor tokens can also be revoked, using `/item/remove`. -}
  , sandboxBankTransferFireWebhook :: SandboxBankTransferFireWebhookRequest -> m SandboxBankTransferFireWebhookResponse{- ^ Use the `/sandbox/bank_transfer/fire_webhook` endpoint to manually trigger a Bank Transfers webhook in the Sandbox environment. -}
  , sandboxBankTransferSimulate :: SandboxBankTransferSimulateRequest -> m SandboxBankTransferSimulateResponse{- ^ Use the `/sandbox/bank_transfer/simulate` endpoint to simulate a bank transfer event in the Sandbox environment.  Note that while an event will be simulated and will appear when using endpoints such as `/bank_transfer/event/sync` or `/bank_transfer/event/list`, no transactions will actually take place and funds will not move between accounts, even within the Sandbox. -}
  , sandboxIncomeFireWebhook :: SandboxIncomeFireWebhookRequest -> m SandboxIncomeFireWebhookResponse{- ^ Use the `/sandbox/income/fire_webhook` endpoint to manually trigger an Income webhook in the Sandbox environment. -}
  , sandboxItemFireWebhook :: SandboxItemFireWebhookRequest -> m SandboxItemFireWebhookResponse{- ^ The `/sandbox/item/fire_webhook` endpoint is used to test that code correctly handles webhooks. This endpoint can trigger the following webhooks:  `DEFAULT_UPDATE`: Transactions update webhook to be fired for a given Sandbox Item. If the Item does not support Transactions, a `SANDBOX_PRODUCT_NOT_ENABLED` error will result.  `NEW_ACCOUNTS_AVAILABLE`: Webhook to be fired for a given Sandbox Item created with Account Select v2.  `AUTH_DATA_UPDATE`: Webhook to be fired for a given Sandbox Item created with Auth as an enabled product.  Note that this endpoint is provided for developer ease-of-use and is not required for testing webhooks; webhooks will also fire in Sandbox under the same conditions that they would in Production or Development' -}
  , sandboxItemResetLogin :: SandboxItemResetLoginRequest -> m SandboxItemResetLoginResponse{- ^ `/sandbox/item/reset_login/` forces an Item into an `ITEM_LOGIN_REQUIRED` state in order to simulate an Item whose login is no longer valid. This makes it easy to test Link's [update mode](https://plaid.com/docs/link/update-mode) flow in the Sandbox environment.  After calling `/sandbox/item/reset_login`, You can then use Plaid Link update mode to restore the Item to a good state. An `ITEM_LOGIN_REQUIRED` webhook will also be fired after a call to this endpoint, if one is associated with the Item.   In the Sandbox, Items will transition to an `ITEM_LOGIN_REQUIRED` error state automatically after 30 days, even if this endpoint is not called. -}
  , sandboxItemSetVerificationStatus :: SandboxItemSetVerificationStatusRequest -> m SandboxItemSetVerificationStatusResponse{- ^ The `/sandbox/item/set_verification_status` endpoint can be used to change the verification status of an Item in in the Sandbox in order to simulate the Automated Micro-deposit flow.  Note that not all Plaid developer accounts are enabled for micro-deposit based verification by default. Your account must be enabled for this feature in order to test it in Sandbox. To enable this features or check your status, contact your account manager or [submit a product access Support ticket](https://dashboard.plaid.com/support/new/product-and-development/product-troubleshooting/request-product-access).  For more information on testing Automated Micro-deposits in Sandbox, see [Auth full coverage testing](https://plaid.com/docs/auth/coverage/testing#). -}
  , sandboxOauthSelectAccounts :: SandboxOauthSelectAccountsRequest -> m ((Map.Map String Value)){- ^ Save the selected accounts when connecting to the Platypus Oauth institution -}
  , sandboxProcessorTokenCreate :: SandboxProcessorTokenCreateRequest -> m SandboxProcessorTokenCreateResponse{- ^ Use the `/sandbox/processor_token/create` endpoint to create a valid `processor_token` for an arbitrary institution ID and test credentials. The created `processor_token` corresponds to a new Sandbox Item. You can then use this `processor_token` with the `/processor/` API endpoints in Sandbox. You can also use `/sandbox/processor_token/create` with the [`user_custom` test username](https://plaid.com/docs/sandbox/user-custom) to generate a test account with custom data. -}
  , sandboxPublicTokenCreate :: SandboxPublicTokenCreateRequest -> m SandboxPublicTokenCreateResponse{- ^ Use the `/sandbox/public_token/create` endpoint to create a valid `public_token`  for an arbitrary institution ID, initial products, and test credentials. The created `public_token` maps to a new Sandbox Item. You can then call `/item/public_token/exchange` to exchange the `public_token` for an `access_token` and perform all API actions. `/sandbox/public_token/create` can also be used with the [`user_custom` test username](https://plaid.com/docs/sandbox/user-custom) to generate a test account with custom data. `/sandbox/public_token/create` cannot be used with OAuth institutions. -}
  , sandboxTransferFireWebhook :: SandboxTransferFireWebhookRequest -> m SandboxTransferFireWebhookResponse{- ^ Use the `/sandbox/transfer/fire_webhook` endpoint to manually trigger a Transfer webhook in the Sandbox environment. -}
  , sandboxTransferRepaymentSimulate :: SandboxTransferRepaymentSimulateRequest -> m SandboxTransferRepaymentSimulateResponse{- ^ Use the `/sandbox/transfer/repayment/simulate` endpoint to trigger the creation of a repayment. As a side effect of calling this route, a repayment is created that includes all unreimbursed returns of guaranteed transfers. If there are no such returns, an 400 error is returned. -}
  , sandboxTransferSimulate :: SandboxTransferSimulateRequest -> m SandboxTransferSimulateResponse{- ^ Use the `/sandbox/transfer/simulate` endpoint to simulate a transfer event in the Sandbox environment.  Note that while an event will be simulated and will appear when using endpoints such as `/transfer/event/sync` or `/transfer/event/list`, no transactions will actually take place and funds will not move between accounts, even within the Sandbox. -}
  , sandboxTransferSweepSimulate :: SandboxTransferSweepSimulateRequest -> m SandboxTransferSweepSimulateResponse{- ^ Use the `/sandbox/transfer/sweep/simulate` endpoint to create a sweep and associated events in the Sandbox environment. Upon calling this endpoint, all `posted` or `pending` transfers with a sweep status of `unswept` will become `swept`, and all `returned` transfers with a sweep status of `swept` will become `return_swept`. -}
  , signalDecisionReport :: SignalDecisionReportRequest -> m SignalDecisionReportResponse{- ^ After calling `/signal/evaluate`, call `/signal/decision/report` to report whether the transaction was initiated. This endpoint will return an `INVALID_REQUEST` error if called a second time with a different value for `initiated`. -}
  , signalEvaluate :: SignalEvaluateRequest -> m SignalEvaluateResponse{- ^ Use `/signal/evaluate` to evaluate a planned ACH transaction to get a return risk assessment (such as a risk score and risk tier) and additional risk signals.  In order to obtain a valid score for an ACH transaction, Plaid must have an access token for the account, and the Item must be healthy (receiving product updates) or have recently been in a healthy state. If the transaction does not meet eligibility requirements, an error will be returned corresponding to the underlying cause. If `/signal/evaluate` is called on the same transaction multiple times within a 24-hour period, cached results may be returned. -}
  , signalPrepare :: SignalPrepareRequest -> m SignalPrepareResponse{- ^ Call `/signal/prepare` with Plaid-linked bank account information at least 10 seconds before calling `/signal/evaluate` or as soon as an end-user enters the ACH deposit flow in your application. -}
  , signalReturnReport :: SignalReturnReportRequest -> m SignalReturnReportResponse{- ^ Call the `/signal/return/report` endpoint to report a returned transaction that was previously sent to the `/signal/evaluate` endpoint. Your feedback will be used by the model to incorporate the latest risk trend in your portfolio. -}
  , transactionsEnhance :: TransactionsEnhanceGetRequest -> m TransactionsEnhanceGetResponse{- ^ The '/beta/transactions/v1/enhance' endpoint enriches raw transaction data provided directly by clients.  The product is currently in beta. -}
  , transactionsGet :: TransactionsGetRequest -> m TransactionsGetResponse{- ^ The `/transactions/get` endpoint allows developers to receive user-authorized transaction data for credit, depository, and some loan-type accounts (only those with account subtype `student`; coverage may be limited). For transaction history from investments accounts, use the [Investments endpoint](https://plaid.com/docs/api/products/investments/) instead. Transaction data is standardized across financial institutions, and in many cases transactions are linked to a clean name, entity type, location, and category. Similarly, account data is standardized and returned with a clean name, number, balance, and other meta information where available.  Transactions are returned in reverse-chronological order, and the sequence of transaction ordering is stable and will not shift.  Transactions are not immutable and can also be removed altogether by the institution; a removed transaction will no longer appear in `/transactions/get`.  For more details, see [Pending and posted transactions](https://plaid.com/docs/transactions/transactions-data/#pending-and-posted-transactions).  Due to the potentially large number of transactions associated with an Item, results are paginated. Manipulate the `count` and `offset` parameters in conjunction with the `total_transactions` response body field to fetch all available transactions.  Data returned by `/transactions/get` will be the data available for the Item as of the most recent successful check for new transactions. Plaid typically checks for new data multiple times a day, but these checks may occur less frequently, such as once a day, depending on the institution. An Item's `status.transactions.last_successful_update` field will show the timestamp of the most recent successful update. To force Plaid to check for new transactions, you can use the `/transactions/refresh` endpoint.  Note that data may not be immediately available to `/transactions/get`. Plaid will begin to prepare transactions data upon Item link, if Link was initialized with `transactions`, or upon the first call to `/transactions/get`, if it wasn't. To be alerted when transaction data is ready to be fetched, listen for the [`INITIAL_UPDATE`](https://plaid.com/docs/api/products/transactions/#initial_update) and [`HISTORICAL_UPDATE`](https://plaid.com/docs/api/products/transactions/#historical_update) webhooks. If no transaction history is ready when `/transactions/get` is called, it will return a `PRODUCT_NOT_READY` error. -}
  , transactionsRecurringGet :: TransactionsRecurringGetRequest -> m TransactionsRecurringGetResponse{- ^ The `/transactions/recurring/get` endpoint allows developers to receive a summary of the recurring outflow and inflow streams (expenses and deposits) from a user’s checking, savings or credit card accounts. Additionally, Plaid provides key insights about each recurring stream including the category, merchant, last amount, and more. Developers can use these insights to build tools and experiences that help their users better manage cash flow, monitor subscriptions, reduce spend, and stay on track with bill payments.  This endpoint is not included by default as part of Transactions. To request access to this endpoint and learn more about pricing, contact your Plaid account manager.  Note that unlike `/transactions/get`, `/transactions/recurring/get` will not initialize an Item with Transactions. The Item must already have been initialized with Transactions (either during Link, by specifying it in `/link/token/create`, or after Link, by calling `/transactions/get`) before calling this endpoint. Data is available to `/transactions/recurring/get` approximately 5 seconds after the [`HISTORICAL_UPDATE`](https://plaid.com/docs/api/products/transactions/#historical_update) webhook has fired (about 1-2 minutes after initialization).  After the initial call, you can call `/transactions/recurring/get` endpoint at any point in the future to retrieve the latest summary of recurring streams. Since recurring streams do not change often, it will typically not be necessary to call this endpoint more than once per day. -}
  , transactionsRefresh :: TransactionsRefreshRequest -> m TransactionsRefreshResponse{- ^ `/transactions/refresh` is an optional endpoint for users of the Transactions product. It initiates an on-demand extraction to fetch the newest transactions for an Item. This on-demand extraction takes place in addition to the periodic extractions that automatically occur multiple times a day for any Transactions-enabled Item. If changes to transactions are discovered after calling `/transactions/refresh`, Plaid will fire a webhook: [`TRANSACTIONS_REMOVED`](https://plaid.com/docs/api/products/transactions/#transactions_removed) will be fired if any removed transactions are detected, and [`DEFAULT_UPDATE`](https://plaid.com/docs/api/products/transactions/#default_update) will be fired if any new transactions are detected. New transactions can be fetched by calling `/transactions/get`.  Access to `/transactions/refresh` in Production is specific to certain pricing plans. If you cannot access `/transactions/refresh` in Production, [contact Sales](https://www.plaid.com/contact) for assistance. -}
  , transactionsRulesCreate :: TransactionsRulesCreateRequest -> m TransactionsRulesCreateResponse{- ^ The `/transactions/rules/v1/create` endpoint creates transaction categorization rules.  Rules will be applied on the Item's transactions returned in `/transactions/get` response.  The product is currently in beta. To request access, contact transactions-feedback@plaid.com. -}
  , transactionsRulesList :: TransactionsRulesListRequest -> m TransactionsRulesListResponse{- ^ The `/transactions/rules/v1/list` returns a list of transaction rules created for the Item associated with the access token. -}
  , transactionsRulesRemove :: TransactionsRulesRemoveRequest -> m TransactionsRulesRemoveResponse{- ^ The `/transactions/rules/v1/remove` endpoint is used to remove a transaction rule. -}
  , transactionsSync :: TransactionsSyncRequest -> m TransactionsSyncResponse{- ^ This endpoint replaces `/transactions/get` and its associated webhooks for most common use-cases.  The `/transactions/sync` endpoint allows developers to subscribe to all transactions associated with an Item and get updates synchronously in a stream-like manner, using a cursor to track which updates have already been seen. `/transactions/sync` provides the same functionality as `/transactions/get` and can be used instead of `/transactions/get` to simplify the process of tracking transactions updates.  This endpoint provides user-authorized transaction data for `credit`, `depository`, and some loan-type accounts (only those with account subtype `student`; coverage may be limited). For transaction history from `investments` accounts, use `/investments/transactions/get` instead.  Returned transactions data is grouped into three types of update, indicating whether the transaction was added, removed, or modified since the last call to the API.  In the first call to `/transactions/sync` for an Item, the endpoint will return all historical transactions data associated with that Item up until the time of the API call (as \"adds\"), which then generates a `latest_cursor` for that Item. In subsequent calls, send the `latest_cursor` to receive only the changes that have occurred since the previous call.  Due to the potentially large number of transactions associated with an Item, results are paginated. The `has_more` field specifies if additional calls are necessary to fetch all available transaction updates.  Whenever new or updated transaction data becomes available, `/transactions/sync` will provide these updates. Plaid typically checks for new data multiple times a day, but these checks may occur less frequently, such as once a day, depending on the institution. An Item's `status.transactions.last_successful_update` field will show the timestamp of the most recent successful update. To force Plaid to check for new transactions, use the `/transactions/refresh` endpoint.  Note that for newly created Items, data may not be immediately available to `/transactions/sync`. Plaid begins preparing transactions data when the Item is created, but the process can take anywhere from a few seconds to several minutes to complete, depending on the number of transactions available.  To be alerted when new data is available, listen for the [`SYNC_UPDATES_AVAILABLE`](https://plaid.com/docs/api/products/transactions/#sync_updates_available) webhook. -}
  , transferAuthorizationCreate :: TransferAuthorizationCreateRequest -> m TransferAuthorizationCreateResponse{- ^ Use the `/transfer/authorization/create` endpoint to determine transfer failure risk.  In Plaid's sandbox environment the decisions will be returned as follows:    - To approve a transfer with null rationale code, make an authorization request with an `amount` less than the available balance in the account.    - To approve a transfer with the rationale code `MANUALLY_VERIFIED_ITEM`, create an Item in Link through the [Same Day Micro-deposits flow](https://plaid.com/docs/auth/coverage/testing/#testing-same-day-micro-deposits).    - To approve a transfer with the rationale code `LOGIN_REQUIRED`, [reset the login for an Item](https://plaid.com/docs/sandbox/#item_login_required).    - To decline a transfer with the rationale code `NSF`, the available balance on the account must be less than the authorization `amount`. See [Create Sandbox test data](https://plaid.com/docs/sandbox/user-custom/) for details on how to customize data in Sandbox.    - To decline a transfer with the rationale code `RISK`, the available balance on the account must be exactly $0. See [Create Sandbox test data](https://plaid.com/docs/sandbox/user-custom/) for details on how to customize data in Sandbox. -}
  , transferCancel :: TransferCancelRequest -> m TransferCancelResponse{- ^ Use the `/transfer/cancel` endpoint to cancel a transfer.  A transfer is eligible for cancelation if the `cancellable` property returned by `/transfer/get` is `true`. -}
  , transferCreate :: TransferCreateRequest -> m TransferCreateResponse{- ^ Use the `/transfer/create` endpoint to initiate a new transfer. -}
  , transferEventList :: TransferEventListRequest -> m TransferEventListResponse{- ^ Use the `/transfer/event/list` endpoint to get a list of transfer events based on specified filter criteria. -}
  , transferEventSync :: TransferEventSyncRequest -> m TransferEventSyncResponse{- ^ `/transfer/event/sync` allows you to request up to the next 25 transfer events that happened after a specific `event_id`. Use the `/transfer/event/sync` endpoint to guarantee you have seen all transfer events. -}
  , transferGet :: TransferGetRequest -> m TransferGetResponse{- ^ The `/transfer/get` fetches information about the transfer corresponding to the given `transfer_id`. -}
  , transferIntentCreate :: TransferIntentCreateRequest -> m TransferIntentCreateResponse{- ^ Use the `/transfer/intent/create` endpoint to generate a transfer intent object and invoke the Transfer UI. -}
  , transferIntentGet :: (Map.Map String Value) -> m TransferIntentGetResponse{- ^ Use the `/transfer/intent/get` endpoint to retrieve more information about a transfer intent. -}
  , transferList :: TransferListRequest -> m TransferListResponse{- ^ Use the `/transfer/list` endpoint to see a list of all your transfers and their statuses. Results are paginated; use the `count` and `offset` query parameters to retrieve the desired transfers.  -}
  , transferMigrateAccount :: TransferMigrateAccountRequest -> m TransferMigrateAccountResponse{- ^ As an alternative to adding Items via Link, you can also use the `/transfer/migrate_account` endpoint to migrate known account and routing numbers to Plaid Items.  Note that Items created in this way are not compatible with endpoints for other products, such as `/accounts/balance/get`, and can only be used with Transfer endpoints.  If you require access to other endpoints, create the Item through Link instead.  Access to `/transfer/migrate_account` is not enabled by default; to obtain access, contact your Plaid Account Manager. -}
  , transferRepaymentList :: TransferRepaymentListRequest -> m TransferRepaymentListResponse{- ^ The `/transfer/repayment/list` endpoint fetches repayments matching the given filters. Repayments are returned in reverse-chronological order (most recent first) starting at the given `start_time`. -}
  , transferRepaymentReturnList :: TransferRepaymentReturnListRequest -> m TransferRepaymentReturnListResponse{- ^ The `/transfer/repayment/return/list` endpoint retrieves the set of returns that were batched together into the specified repayment. The sum of amounts of returns retrieved by this request equals the amount of the repayment. -}
  , transferSweepGet :: TransferSweepGetRequest -> m TransferSweepGetResponse{- ^ The `/transfer/sweep/get` endpoint fetches a sweep corresponding to the given `sweep_id`. -}
  , transferSweepList :: TransferSweepListRequest -> m TransferSweepListResponse{- ^ The `/transfer/sweep/list` endpoint fetches sweeps matching the given filters. -}
  , userCreate :: UserCreateRequest -> m UserCreateResponse{- ^ This endpoint should be called for each of your end users before they begin a Plaid income flow. This provides you a single token to access all income data associated with the user. You should only create one per end user. -}
  , walletCreate :: WalletCreateRequest -> m WalletCreateResponse{- ^ Create an e-wallet. The response is the newly created e-wallet object. -}
  , walletGet :: WalletGetRequest -> m WalletGetResponse{- ^ Fetch an e-wallet. The response includes the current balance. -}
  , walletList :: WalletListRequest -> m WalletListResponse{- ^ This endpoint lists all e-wallets in descending order of creation. -}
  , walletTransactionExecute :: WalletTransactionExecuteRequest -> m WalletTransactionExecuteResponse{- ^ Execute a transaction using the specified e-wallet. Specify the e-wallet to debit from, the counterparty to credit to, the idempotency key to prevent duplicate payouts, the amount and reference for the payout. The payouts are executed over the Faster Payment rails, where settlement usually only takes a few seconds. -}
  , walletTransactionGet :: WalletTransactionGetRequest -> m WalletTransactionGetResponse{- ^ Fetch a specific e-wallet transaction -}
  , walletTransactionsList :: WalletTransactionsListRequest -> m WalletTransactionsListResponse{- ^ This endpoint lists the latest transactions of the specified e-wallet. Transactions are returned in descending order by the `created_at` time. -}
  , watchlistScreeningEntityCreate :: CreateEntityScreeningRequest -> m EntityWatchlistScreeningResponse{- ^ Create a new entity watchlist screening to check your customer against watchlists defined in the associated entity watchlist program. If your associated program has ongoing screening enabled, this is the profile information that will be used to monitor your customer over time. -}
  , watchlistScreeningEntityGet :: GetEntityWatchlistScreeningRequest -> m EntityWatchlistScreeningResponse{- ^ Retrieve an entity watchlist screening. -}
  , watchlistScreeningEntityHistoryList :: ListWatchlistScreeningEntityHistoryRequest -> m PaginatedEntityWatchlistScreeningListResponse{- ^ List all changes to the entity watchlist screening in reverse-chronological order. If the watchlist screening has not been edited, no history will be returned. -}
  , watchlistScreeningEntityHitsList :: ListWatchlistScreeningEntityHitRequest -> m PaginatedEntityWatchlistScreeningHitListResponse{- ^ List all hits for the entity watchlist screening. -}
  , watchlistScreeningEntityList :: ListEntityWatchlistScreeningRequest -> m PaginatedEntityWatchlistScreeningListResponse{- ^ List all entity screenings. -}
  , watchlistScreeningEntityProgramGet :: GetWatchlistScreeningEntityProgramRequest -> m EntityWatchlistProgramResponse{- ^ Get an entity watchlist screening program -}
  , watchlistScreeningEntityProgramList :: ListWatchlistScreeningEntityProgramsRequest -> m PaginatedEntityWatchlistProgramListResponse{- ^ List all entity watchlist screening programs -}
  , watchlistScreeningEntityReviewCreate :: CreateEntityWatchlistScreeningReviewRequest -> m EntityWatchlistScreeningReviewResponse{- ^ Create a review for an entity watchlist screening. Reviews are compliance reports created by users in your organization regarding the relevance of potential hits found by Plaid. -}
  , watchlistScreeningEntityReviewList :: ListWatchlistScreeningEntityReviewsRequest -> m PaginatedEntityWatchlistScreeningReviewListResponse{- ^ List all reviews for a particular entity watchlist screening. Reviews are compliance reports created by users in your organization regarding the relevance of potential hits found by Plaid. -}
  , watchlistScreeningEntityUpdate :: UpdateEntityScreeningRequest -> m EntityWatchlistScreeningResponse{- ^ Update an entity watchlist screening. -}
  , watchlistScreeningIndividualCreate :: WatchlistScreeningCreateRequest -> m WatchlistScreeningIndividualResponse{- ^ Create a new Watchlist Screening to check your customer against watchlists defined in the associated Watchlist Program. If your associated program has ongoing screening enabled, this is the profile information that will be used to monitor your customer over time. -}
  , watchlistScreeningIndividualGet :: GetIndividualWatchlistScreeningRequest -> m WatchlistScreeningIndividualResponse{- ^ Retrieve a previously created individual watchlist screening -}
  , watchlistScreeningIndividualHistoryList :: ListWatchlistScreeningIndividualHistoryRequest -> m PaginatedIndividualWatchlistScreeningListResponse{- ^ List all changes to the individual watchlist screening in reverse-chronological order. If the watchlist screening has not been edited, no history will be returned. -}
  , watchlistScreeningIndividualHitList :: ListWatchlistScreeningIndividualHitRequest -> m PaginatedIndividualWatchlistScreeningHitListResponse{- ^ List all hits found by Plaid for a particular individual watchlist screening. -}
  , watchlistScreeningIndividualList :: ListIndividualWatchlistScreeningRequest -> m PaginatedIndividualWatchlistScreeningListResponse{- ^ List previously created watchlist screenings for individuals -}
  , watchlistScreeningIndividualProgramGet :: GetWatchlistScreeningIndividualProgramRequest -> m IndividualWatchlistProgramResponse{- ^ Get an individual watchlist screening program -}
  , watchlistScreeningIndividualProgramList :: ListWatchlistScreeningIndividualProgramsRequest -> m PaginatedIndividualWatchlistProgramListResponse{- ^ List all individual watchlist screening programs -}
  , watchlistScreeningIndividualReviewCreate :: CreateIndividualWatchlistScreeningReviewRequest -> m WatchlistScreeningReviewResponse{- ^ Create a review for the individual watchlist screening. Reviews are compliance reports created by users in your organization regarding the relevance of potential hits found by Plaid. -}
  , watchlistScreeningIndividualReviewsList :: ListWatchlistScreeningIndividualReviewsRequest -> m PaginatedIndividualWatchlistScreeningReviewListResponse{- ^ List all reviews for the individual watchlist screening. -}
  , watchlistScreeningIndividualUpdate :: UpdateIndividualScreeningRequest -> m WatchlistScreeningIndividualResponse{- ^ Update a specific individual watchlist screening. This endpoint can be used to add additional customer information, correct outdated information, add a reference id, assign the individual to a reviewer, and update which program it is associated with. Please note that you may not update `search_terms` and `status` at the same time since editing `search_terms` may trigger an automatic `status` change. -}
  , webhookVerificationKeyGet :: WebhookVerificationKeyGetRequest -> m WebhookVerificationKeyGetResponse{- ^ Plaid signs all outgoing webhooks and provides JSON Web Tokens (JWTs) so that you can verify the authenticity of any incoming webhooks to your application. A message signature is included in the `Plaid-Verification` header.  The `/webhook_verification_key/get` endpoint provides a JSON Web Key (JWK) that can be used to verify a JWT. -}
  }

newtype ThePlaidClient a = ThePlaidClient
  { runClient :: ClientEnv -> ExceptT ClientError IO a
  } deriving Functor

instance Applicative ThePlaidClient where
  pure x = ThePlaidClient (\_ -> pure x)
  (ThePlaidClient f) <*> (ThePlaidClient x) =
    ThePlaidClient (\env -> f env <*> x env)

instance Monad ThePlaidClient where
  (ThePlaidClient a) >>= f =
    ThePlaidClient (\env -> do
      value <- a env
      runClient (f value) env)

instance MonadIO ThePlaidClient where
  liftIO io = ThePlaidClient (\_ -> liftIO io)

createThePlaidClient :: ThePlaidBackend ThePlaidClient
createThePlaidClient = ThePlaidBackend{..}
  where
    ((coerce -> accountsBalanceGet) :<|>
     (coerce -> accountsGet) :<|>
     (coerce -> applicationGet) :<|>
     (coerce -> assetReportAuditCopyCreate) :<|>
     (coerce -> assetReportAuditCopyGet) :<|>
     (coerce -> assetReportAuditCopyRemove) :<|>
     (coerce -> assetReportCreate) :<|>
     (coerce -> assetReportFilter) :<|>
     (coerce -> assetReportGet) :<|>
     (coerce -> assetReportPdfGet) :<|>
     (coerce -> assetReportRefresh) :<|>
     (coerce -> assetReportRelayCreate) :<|>
     (coerce -> assetReportRelayGet) :<|>
     (coerce -> assetReportRelayRefresh) :<|>
     (coerce -> assetReportRelayRemove) :<|>
     (coerce -> assetReportRemove) :<|>
     (coerce -> authGet) :<|>
     (coerce -> bankTransferBalanceGet) :<|>
     (coerce -> bankTransferCancel) :<|>
     (coerce -> bankTransferCreate) :<|>
     (coerce -> bankTransferEventList) :<|>
     (coerce -> bankTransferEventSync) :<|>
     (coerce -> bankTransferGet) :<|>
     (coerce -> bankTransferList) :<|>
     (coerce -> bankTransferMigrateAccount) :<|>
     (coerce -> bankTransferSweepGet) :<|>
     (coerce -> bankTransferSweepList) :<|>
     (coerce -> categoriesGet) :<|>
     (coerce -> createPaymentToken) :<|>
     (coerce -> creditAuditCopyTokenCreate) :<|>
     (coerce -> creditBankIncomeGet) :<|>
     (coerce -> creditBankIncomeRefresh) :<|>
     (coerce -> creditEmploymentGet) :<|>
     (coerce -> creditPayrollIncomeGet) :<|>
     (coerce -> creditPayrollIncomePrecheck) :<|>
     (coerce -> creditPayrollIncomeRefresh) :<|>
     (coerce -> creditRelayCreate) :<|>
     (coerce -> dashboardUserList) :<|>
     (coerce -> dashobardUserGet) :<|>
     (coerce -> depositSwitchAltCreate) :<|>
     (coerce -> depositSwitchCreate) :<|>
     (coerce -> depositSwitchGet) :<|>
     (coerce -> depositSwitchTokenCreate) :<|>
     (coerce -> employersSearch) :<|>
     (coerce -> employmentVerificationGet) :<|>
     (coerce -> identityGet) :<|>
     (coerce -> identityVerificationCreate) :<|>
     (coerce -> identityVerificationGet) :<|>
     (coerce -> identityVerificationList) :<|>
     (coerce -> identityVerificationRetry) :<|>
     (coerce -> incomeVerificationCreate) :<|>
     (coerce -> incomeVerificationDocumentsDownload) :<|>
     (coerce -> incomeVerificationPaystubsGet) :<|>
     (coerce -> incomeVerificationPrecheck) :<|>
     (coerce -> incomeVerificationRefresh) :<|>
     (coerce -> incomeVerificationTaxformsGet) :<|>
     (coerce -> institutionsGet) :<|>
     (coerce -> institutionsGetById) :<|>
     (coerce -> institutionsSearch) :<|>
     (coerce -> investmentsHoldingsGet) :<|>
     (coerce -> investmentsTransactionsGet) :<|>
     (coerce -> itemAccessTokenInvalidate) :<|>
     (coerce -> itemApplicationList) :<|>
     (coerce -> itemApplicationScopesUpdate) :<|>
     (coerce -> itemCreatePublicToken) :<|>
     (coerce -> itemGet) :<|>
     (coerce -> itemImport) :<|>
     (coerce -> itemPublicTokenExchange) :<|>
     (coerce -> itemRemove) :<|>
     (coerce -> itemWebhookUpdate) :<|>
     (coerce -> liabilitiesGet) :<|>
     (coerce -> linkTokenCreate) :<|>
     (coerce -> linkTokenGet) :<|>
     (coerce -> paymentInitiationConsentCreate) :<|>
     (coerce -> paymentInitiationConsentGet) :<|>
     (coerce -> paymentInitiationConsentPaymentExecute) :<|>
     (coerce -> paymentInitiationConsentRevoke) :<|>
     (coerce -> paymentInitiationPaymentCreate) :<|>
     (coerce -> paymentInitiationPaymentGet) :<|>
     (coerce -> paymentInitiationPaymentList) :<|>
     (coerce -> paymentInitiationPaymentReverse) :<|>
     (coerce -> paymentInitiationRecipientCreate) :<|>
     (coerce -> paymentInitiationRecipientGet) :<|>
     (coerce -> paymentInitiationRecipientList) :<|>
     (coerce -> processorApexProcessorTokenCreate) :<|>
     (coerce -> processorAuthGet) :<|>
     (coerce -> processorBalanceGet) :<|>
     (coerce -> processorBankTransferCreate) :<|>
     (coerce -> processorIdentityGet) :<|>
     (coerce -> processorStripeBankAccountTokenCreate) :<|>
     (coerce -> processorTokenCreate) :<|>
     (coerce -> sandboxBankTransferFireWebhook) :<|>
     (coerce -> sandboxBankTransferSimulate) :<|>
     (coerce -> sandboxIncomeFireWebhook) :<|>
     (coerce -> sandboxItemFireWebhook) :<|>
     (coerce -> sandboxItemResetLogin) :<|>
     (coerce -> sandboxItemSetVerificationStatus) :<|>
     (coerce -> sandboxOauthSelectAccounts) :<|>
     (coerce -> sandboxProcessorTokenCreate) :<|>
     (coerce -> sandboxPublicTokenCreate) :<|>
     (coerce -> sandboxTransferFireWebhook) :<|>
     (coerce -> sandboxTransferRepaymentSimulate) :<|>
     (coerce -> sandboxTransferSimulate) :<|>
     (coerce -> sandboxTransferSweepSimulate) :<|>
     (coerce -> signalDecisionReport) :<|>
     (coerce -> signalEvaluate) :<|>
     (coerce -> signalPrepare) :<|>
     (coerce -> signalReturnReport) :<|>
     (coerce -> transactionsEnhance) :<|>
     (coerce -> transactionsGet) :<|>
     (coerce -> transactionsRecurringGet) :<|>
     (coerce -> transactionsRefresh) :<|>
     (coerce -> transactionsRulesCreate) :<|>
     (coerce -> transactionsRulesList) :<|>
     (coerce -> transactionsRulesRemove) :<|>
     (coerce -> transactionsSync) :<|>
     (coerce -> transferAuthorizationCreate) :<|>
     (coerce -> transferCancel) :<|>
     (coerce -> transferCreate) :<|>
     (coerce -> transferEventList) :<|>
     (coerce -> transferEventSync) :<|>
     (coerce -> transferGet) :<|>
     (coerce -> transferIntentCreate) :<|>
     (coerce -> transferIntentGet) :<|>
     (coerce -> transferList) :<|>
     (coerce -> transferMigrateAccount) :<|>
     (coerce -> transferRepaymentList) :<|>
     (coerce -> transferRepaymentReturnList) :<|>
     (coerce -> transferSweepGet) :<|>
     (coerce -> transferSweepList) :<|>
     (coerce -> userCreate) :<|>
     (coerce -> walletCreate) :<|>
     (coerce -> walletGet) :<|>
     (coerce -> walletList) :<|>
     (coerce -> walletTransactionExecute) :<|>
     (coerce -> walletTransactionGet) :<|>
     (coerce -> walletTransactionsList) :<|>
     (coerce -> watchlistScreeningEntityCreate) :<|>
     (coerce -> watchlistScreeningEntityGet) :<|>
     (coerce -> watchlistScreeningEntityHistoryList) :<|>
     (coerce -> watchlistScreeningEntityHitsList) :<|>
     (coerce -> watchlistScreeningEntityList) :<|>
     (coerce -> watchlistScreeningEntityProgramGet) :<|>
     (coerce -> watchlistScreeningEntityProgramList) :<|>
     (coerce -> watchlistScreeningEntityReviewCreate) :<|>
     (coerce -> watchlistScreeningEntityReviewList) :<|>
     (coerce -> watchlistScreeningEntityUpdate) :<|>
     (coerce -> watchlistScreeningIndividualCreate) :<|>
     (coerce -> watchlistScreeningIndividualGet) :<|>
     (coerce -> watchlistScreeningIndividualHistoryList) :<|>
     (coerce -> watchlistScreeningIndividualHitList) :<|>
     (coerce -> watchlistScreeningIndividualList) :<|>
     (coerce -> watchlistScreeningIndividualProgramGet) :<|>
     (coerce -> watchlistScreeningIndividualProgramList) :<|>
     (coerce -> watchlistScreeningIndividualReviewCreate) :<|>
     (coerce -> watchlistScreeningIndividualReviewsList) :<|>
     (coerce -> watchlistScreeningIndividualUpdate) :<|>
     (coerce -> webhookVerificationKeyGet) :<|>
     _) = client (Proxy :: Proxy ThePlaidAPI)

-- | Run requests in the ThePlaidClient monad.
runThePlaidClient :: Config -> ThePlaidClient a -> ExceptT ClientError IO a
runThePlaidClient clientConfig cl = do
  manager <- liftIO $ newManager tlsManagerSettings
  runThePlaidClientWithManager manager clientConfig cl

-- | Run requests in the ThePlaidClient monad using a custom manager.
runThePlaidClientWithManager :: Manager -> Config -> ThePlaidClient a -> ExceptT ClientError IO a
runThePlaidClientWithManager manager Config{..} cl = do
  url <- parseBaseUrl configUrl
  runClient cl $ mkClientEnv manager url

-- | Like @runClient@, but returns the response or throws
--   a ThePlaidClientError
callThePlaid
  :: (MonadIO m, MonadThrow m)
  => ClientEnv -> ThePlaidClient a -> m a
callThePlaid env f = do
  res <- liftIO $ runExceptT $ runClient f env
  case res of
    Left err       -> throwM (ThePlaidClientError err)
    Right response -> pure response


requestMiddlewareId :: NW.Application -> NW.Application
requestMiddlewareId a = a

-- | Run the ThePlaid server at the provided host and port.
runThePlaidServer
  :: (MonadIO m, MonadThrow m)
  => Config -> ThePlaidBackend (ExceptT ServerError IO) -> m ()
runThePlaidServer config backend = runThePlaidMiddlewareServer config requestMiddlewareId backend

-- | Run the ThePlaid server at the provided host and port.
runThePlaidMiddlewareServer
  :: (MonadIO m, MonadThrow m)
  => Config -> Middleware -> ThePlaidBackend (ExceptT ServerError IO) -> m ()
runThePlaidMiddlewareServer Config{..} middleware backend = do
  url <- parseBaseUrl configUrl
  let warpSettings = Warp.defaultSettings
        & Warp.setPort (baseUrlPort url)
        & Warp.setHost (fromString $ baseUrlHost url)
  liftIO $ Warp.runSettings warpSettings $ middleware $ serverWaiApplicationThePlaid backend

-- | Plain "Network.Wai" Application for the ThePlaid server.
--
-- Can be used to implement e.g. tests that call the API without a full webserver.
serverWaiApplicationThePlaid :: ThePlaidBackend (ExceptT ServerError IO) -> NW.Application
serverWaiApplicationThePlaid backend = serve (Proxy :: Proxy ThePlaidAPI) (serverFromBackend backend)
  where
    serverFromBackend ThePlaidBackend{..} =
      (coerce accountsBalanceGet :<|>
       coerce accountsGet :<|>
       coerce applicationGet :<|>
       coerce assetReportAuditCopyCreate :<|>
       coerce assetReportAuditCopyGet :<|>
       coerce assetReportAuditCopyRemove :<|>
       coerce assetReportCreate :<|>
       coerce assetReportFilter :<|>
       coerce assetReportGet :<|>
       coerce assetReportPdfGet :<|>
       coerce assetReportRefresh :<|>
       coerce assetReportRelayCreate :<|>
       coerce assetReportRelayGet :<|>
       coerce assetReportRelayRefresh :<|>
       coerce assetReportRelayRemove :<|>
       coerce assetReportRemove :<|>
       coerce authGet :<|>
       coerce bankTransferBalanceGet :<|>
       coerce bankTransferCancel :<|>
       coerce bankTransferCreate :<|>
       coerce bankTransferEventList :<|>
       coerce bankTransferEventSync :<|>
       coerce bankTransferGet :<|>
       coerce bankTransferList :<|>
       coerce bankTransferMigrateAccount :<|>
       coerce bankTransferSweepGet :<|>
       coerce bankTransferSweepList :<|>
       coerce categoriesGet :<|>
       coerce createPaymentToken :<|>
       coerce creditAuditCopyTokenCreate :<|>
       coerce creditBankIncomeGet :<|>
       coerce creditBankIncomeRefresh :<|>
       coerce creditEmploymentGet :<|>
       coerce creditPayrollIncomeGet :<|>
       coerce creditPayrollIncomePrecheck :<|>
       coerce creditPayrollIncomeRefresh :<|>
       coerce creditRelayCreate :<|>
       coerce dashboardUserList :<|>
       coerce dashobardUserGet :<|>
       coerce depositSwitchAltCreate :<|>
       coerce depositSwitchCreate :<|>
       coerce depositSwitchGet :<|>
       coerce depositSwitchTokenCreate :<|>
       coerce employersSearch :<|>
       coerce employmentVerificationGet :<|>
       coerce identityGet :<|>
       coerce identityVerificationCreate :<|>
       coerce identityVerificationGet :<|>
       coerce identityVerificationList :<|>
       coerce identityVerificationRetry :<|>
       coerce incomeVerificationCreate :<|>
       coerce incomeVerificationDocumentsDownload :<|>
       coerce incomeVerificationPaystubsGet :<|>
       coerce incomeVerificationPrecheck :<|>
       coerce incomeVerificationRefresh :<|>
       coerce incomeVerificationTaxformsGet :<|>
       coerce institutionsGet :<|>
       coerce institutionsGetById :<|>
       coerce institutionsSearch :<|>
       coerce investmentsHoldingsGet :<|>
       coerce investmentsTransactionsGet :<|>
       coerce itemAccessTokenInvalidate :<|>
       coerce itemApplicationList :<|>
       coerce itemApplicationScopesUpdate :<|>
       coerce itemCreatePublicToken :<|>
       coerce itemGet :<|>
       coerce itemImport :<|>
       coerce itemPublicTokenExchange :<|>
       coerce itemRemove :<|>
       coerce itemWebhookUpdate :<|>
       coerce liabilitiesGet :<|>
       coerce linkTokenCreate :<|>
       coerce linkTokenGet :<|>
       coerce paymentInitiationConsentCreate :<|>
       coerce paymentInitiationConsentGet :<|>
       coerce paymentInitiationConsentPaymentExecute :<|>
       coerce paymentInitiationConsentRevoke :<|>
       coerce paymentInitiationPaymentCreate :<|>
       coerce paymentInitiationPaymentGet :<|>
       coerce paymentInitiationPaymentList :<|>
       coerce paymentInitiationPaymentReverse :<|>
       coerce paymentInitiationRecipientCreate :<|>
       coerce paymentInitiationRecipientGet :<|>
       coerce paymentInitiationRecipientList :<|>
       coerce processorApexProcessorTokenCreate :<|>
       coerce processorAuthGet :<|>
       coerce processorBalanceGet :<|>
       coerce processorBankTransferCreate :<|>
       coerce processorIdentityGet :<|>
       coerce processorStripeBankAccountTokenCreate :<|>
       coerce processorTokenCreate :<|>
       coerce sandboxBankTransferFireWebhook :<|>
       coerce sandboxBankTransferSimulate :<|>
       coerce sandboxIncomeFireWebhook :<|>
       coerce sandboxItemFireWebhook :<|>
       coerce sandboxItemResetLogin :<|>
       coerce sandboxItemSetVerificationStatus :<|>
       coerce sandboxOauthSelectAccounts :<|>
       coerce sandboxProcessorTokenCreate :<|>
       coerce sandboxPublicTokenCreate :<|>
       coerce sandboxTransferFireWebhook :<|>
       coerce sandboxTransferRepaymentSimulate :<|>
       coerce sandboxTransferSimulate :<|>
       coerce sandboxTransferSweepSimulate :<|>
       coerce signalDecisionReport :<|>
       coerce signalEvaluate :<|>
       coerce signalPrepare :<|>
       coerce signalReturnReport :<|>
       coerce transactionsEnhance :<|>
       coerce transactionsGet :<|>
       coerce transactionsRecurringGet :<|>
       coerce transactionsRefresh :<|>
       coerce transactionsRulesCreate :<|>
       coerce transactionsRulesList :<|>
       coerce transactionsRulesRemove :<|>
       coerce transactionsSync :<|>
       coerce transferAuthorizationCreate :<|>
       coerce transferCancel :<|>
       coerce transferCreate :<|>
       coerce transferEventList :<|>
       coerce transferEventSync :<|>
       coerce transferGet :<|>
       coerce transferIntentCreate :<|>
       coerce transferIntentGet :<|>
       coerce transferList :<|>
       coerce transferMigrateAccount :<|>
       coerce transferRepaymentList :<|>
       coerce transferRepaymentReturnList :<|>
       coerce transferSweepGet :<|>
       coerce transferSweepList :<|>
       coerce userCreate :<|>
       coerce walletCreate :<|>
       coerce walletGet :<|>
       coerce walletList :<|>
       coerce walletTransactionExecute :<|>
       coerce walletTransactionGet :<|>
       coerce walletTransactionsList :<|>
       coerce watchlistScreeningEntityCreate :<|>
       coerce watchlistScreeningEntityGet :<|>
       coerce watchlistScreeningEntityHistoryList :<|>
       coerce watchlistScreeningEntityHitsList :<|>
       coerce watchlistScreeningEntityList :<|>
       coerce watchlistScreeningEntityProgramGet :<|>
       coerce watchlistScreeningEntityProgramList :<|>
       coerce watchlistScreeningEntityReviewCreate :<|>
       coerce watchlistScreeningEntityReviewList :<|>
       coerce watchlistScreeningEntityUpdate :<|>
       coerce watchlistScreeningIndividualCreate :<|>
       coerce watchlistScreeningIndividualGet :<|>
       coerce watchlistScreeningIndividualHistoryList :<|>
       coerce watchlistScreeningIndividualHitList :<|>
       coerce watchlistScreeningIndividualList :<|>
       coerce watchlistScreeningIndividualProgramGet :<|>
       coerce watchlistScreeningIndividualProgramList :<|>
       coerce watchlistScreeningIndividualReviewCreate :<|>
       coerce watchlistScreeningIndividualReviewsList :<|>
       coerce watchlistScreeningIndividualUpdate :<|>
       coerce webhookVerificationKeyGet :<|>
       serveDirectoryFileServer "static")
