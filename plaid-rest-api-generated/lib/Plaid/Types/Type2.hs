{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.Type2 (
  LinkTokenAccountFilters (..),
  LinkTokenCreateCreditFilter (..),
  LinkTokenCreateDepositoryFilter (..),
  LinkTokenCreateInstitutionData (..),
  LinkTokenCreateInvestmentFilter (..),
  LinkTokenCreateLoanFilter (..),
  LinkTokenCreateRequest (..),
  LinkTokenCreateRequestAccountSubtypes (..),
  LinkTokenCreateRequestAuth (..),
  LinkTokenCreateRequestDepositSwitch (..),
  LinkTokenCreateRequestIncomeVerification (..),
  LinkTokenCreateRequestIncomeVerificationBankIncome (..),
  LinkTokenCreateRequestIncomeVerificationPayrollIncome (..),
  LinkTokenCreateRequestPaymentInitiation (..),
  LinkTokenCreateRequestTransfer (..),
  LinkTokenCreateRequestUpdate (..),
  LinkTokenCreateRequestUser (..),
  LinkTokenCreateResponse (..),
  LinkTokenEUConfig (..),
  LinkTokenGetMetadataResponse (..),
  LinkTokenGetRequest (..),
  LinkTokenGetResponse (..),
  ListDashboardUserRequest (..),
  ListEntityWatchlistScreeningRequest (..),
  ListIdentityVerificationRequest (..),
  ListIndividualWatchlistScreeningRequest (..),
  ListWatchlistScreeningEntityHistoryRequest (..),
  ListWatchlistScreeningEntityHitRequest (..),
  ListWatchlistScreeningEntityProgramsRequest (..),
  ListWatchlistScreeningEntityReviewsRequest (..),
  ListWatchlistScreeningIndividualHistoryRequest (..),
  ListWatchlistScreeningIndividualHitRequest (..),
  ListWatchlistScreeningIndividualProgramsRequest (..),
  ListWatchlistScreeningIndividualReviewsRequest (..),
  LoanAccountSubtype (..),
  LoanFilter (..),
  Location (..),
  MFA (..),
  MatchSummary (..),
  MatchSummaryCode (..),
  Meta (..),
  MortgageInterestRate (..),
  MortgageLiability (..),
  MortgagePropertyAddress (..),
  MultiDocumentRiskSignal (..),
  NetPay (..),
  NewAccountsAvailableWebhook (..),
  Numbers (..),
  NumbersACH (..),
  NumbersACHNullable (..),
  NumbersBACS (..),
  NumbersBACSNullable (..),
  NumbersEFT (..),
  NumbersEFTNullable (..),
  NumbersInternational (..),
  NumbersInternationalNullable (..),
  OverrideAccountType (..),
  OverrideAccounts (..),
  Owner (..),
  OwnerOverride (..),
  POBoxStatus (..),
  PSLFStatus (..),
  PaginatedDashboardUserListResponse (..),
  PaginatedEntityWatchlistProgramListResponse (..),
  PaginatedEntityWatchlistScreeningHitListResponse (..),
  PaginatedEntityWatchlistScreeningListResponse (..),
  PaginatedEntityWatchlistScreeningReviewListResponse (..),
  PaginatedIdentityVerificationListResponse (..),
  PaginatedIndividualWatchlistProgramListResponse (..),
  PaginatedIndividualWatchlistScreeningHitListResponse (..),
  PaginatedIndividualWatchlistScreeningListResponse (..),
  PaginatedIndividualWatchlistScreeningReviewListResponse (..),
  Pay (..),
  PayFrequency (..),
  PayFrequencyValue (..),
  PayPeriodDetails (..),
  PayStubDeductionsBreakdown (..),
  PayStubDeductionsTotal (..),
  PayStubDistributionBreakdown (..),
  PayStubEarningsBreakdown (..),
  PayStubEarningsTotal (..),
  PayStubPayPeriodDetails (..),
  PayStubTaxpayerID (..),
  PayStubVerificationAttribute (..),
  PaymentAmount (..),
  PaymentAmountCurrency (..),
  PaymentChannel (..),
  PaymentConsentMaxPaymentAmount (..),
  PaymentConsentPeriodicAlignment (..),
  PaymentConsentPeriodicAmount (..),
  PaymentConsentPeriodicAmountAmount (..),
  PaymentConsentPeriodicInterval (..),
  PaymentConsentValidDateTime (..),
  PaymentInitiationAddress (..),
  PaymentInitiationConsent (..),
  PaymentInitiationConsentConstraints (..),
  PaymentInitiationConsentCreateRequest (..),
  PaymentInitiationConsentCreateResponse (..),
  PaymentInitiationConsentGetRequest (..),
  PaymentInitiationConsentGetResponse (..),
  PaymentInitiationConsentPaymentExecuteRequest (..),
  PaymentInitiationConsentPaymentExecuteResponse (..),
  PaymentInitiationConsentRevokeRequest (..),
  PaymentInitiationConsentRevokeResponse (..),
  PaymentInitiationConsentScope (..),
  PaymentInitiationConsentStatus (..),
  PaymentInitiationMetadata (..),
  PaymentInitiationOptionalRestrictionBacs (..),
  PaymentInitiationPayment (..),
  PaymentInitiationPaymentCreateRequest (..),
  PaymentInitiationPaymentCreateResponse (..),
  PaymentInitiationPaymentCreateStatus (..),
  PaymentInitiationPaymentGetRequest (..),
  PaymentInitiationPaymentGetResponse (..),
  PaymentInitiationPaymentListRequest (..),
  PaymentInitiationPaymentListResponse (..),
  PaymentInitiationPaymentReverseRequest (..),
  PaymentInitiationPaymentReverseResponse (..),
  PaymentInitiationPaymentStatus (..),
  PaymentInitiationPaymentTokenCreateRequest (..),
  PaymentInitiationPaymentTokenCreateResponse (..),
  PaymentInitiationRecipient (..),
  PaymentInitiationRecipientCreateRequest (..),
  PaymentInitiationRecipientCreateResponse (..),
  PaymentInitiationRecipientGetRequest (..),
  PaymentInitiationRecipientGetResponse (..),
  PaymentInitiationRecipientGetResponseAllOf (..),
  PaymentInitiationRecipientListRequest (..),
  PaymentInitiationRecipientListResponse (..),
  PaymentInitiationRefundStatus (..),
  PaymentInitiationStandingOrderMetadata (..),
  PaymentMeta (..),
  PaymentScheduleInterval (..),
  PaymentScheme (..),
  PaymentStatusUpdateWebhook (..),
  PayrollIncomeAccountData (..),
  PayrollIncomeObject (..),
  PayrollIncomeRateOfPay (..),
  PayrollItem (..),
  PayrollItemStatus (..),
  PayrollRiskSignalsItem (..),
  Paystub (..),
  PaystubAddress (..),
  PaystubDeduction (..),
  PaystubDetails (..),
  PaystubEmployer (..),
  PaystubOverride (..),
  PaystubOverrideEmployee (..),
  PaystubOverrideEmployeeAddress (..),
  PaystubOverrideEmployer (..),
  PaystubPayFrequency (..),
  PaystubVerification (..),
  PaystubVerificationStatus (..),
  PaystubYTDDetails (..),
  PendingExpirationWebhook (..),
  PersonalFinanceCategory (..),
  PhoneNumber (..),
  PhoneType (..),
  PhysicalDocumentCategory (..),
  PhysicalDocumentExtractedData (..),
  PhysicalDocumentExtractedDataAnalysis (..),
  PhysicalDocumentImages (..),
  PlaidError (..),
  PlatformIds (..),
  ProcessorApexProcessorTokenCreateRequest (..),
  ProcessorAuthGetRequest (..),
  ProcessorAuthGetResponse (..),
  ProcessorBalanceGetRequest (..),
  ProcessorBalanceGetRequestOptions (..),
  ProcessorBalanceGetResponse (..),
  ProcessorBankTransferCreateRequest (..),
  ProcessorBankTransferCreateResponse (..),
  ProcessorIdentityGetRequest (..),
  ProcessorIdentityGetResponse (..),
  ProcessorNumber (..),
  ProcessorStripeBankAccountTokenCreateRequest (..),
  ProcessorStripeBankAccountTokenCreateResponse (..),
  ProcessorTokenCreateRequest (..),
  ProcessorTokenCreateResponse (..),
  ProductAccess (..),
  ProductStatus (..),
  ProductStatusBreakdown (..),
  Products (..),
  ProgramNameSensitivity (..),
  ProjectedIncomeSummaryFieldNumber (..),
  RecaptchaRequiredError (..),
  RecipientBACS (..),
  RecipientBACSNullable (..),
  RecurringTransactionFrequency (..),
  RelayEvent (..),
  RemovedTransaction (..),
  ReportToken (..),
  RiskSignalDocumentReference (..),
  SandboxBankTransferFireWebhookRequest (..),
  SandboxBankTransferFireWebhookResponse (..),
  SandboxBankTransferSimulateRequest (..),
  SandboxBankTransferSimulateResponse (..),
  SandboxIncomeFireWebhookRequest (..),
  SandboxIncomeFireWebhookResponse (..),
  SandboxItemFireWebhookRequest (..),
  SandboxItemFireWebhookResponse (..),
  SandboxItemResetLoginRequest (..),
  SandboxItemResetLoginResponse (..),
  SandboxItemSetVerificationStatusRequest (..),
  SandboxItemSetVerificationStatusResponse (..),
  SandboxOauthSelectAccountsRequest (..),
  SandboxProcessorTokenCreateRequest (..),
  SandboxProcessorTokenCreateRequestOptions (..),
  SandboxProcessorTokenCreateResponse (..),
  SandboxPublicTokenCreateRequest (..),
  SandboxPublicTokenCreateRequestOptions (..),
  SandboxPublicTokenCreateRequestOptionsTransactions (..),
  SandboxPublicTokenCreateResponse (..),
  SandboxTransferFireWebhookRequest (..),
  SandboxTransferFireWebhookResponse (..),
  SandboxTransferRepaymentSimulateRequest (..),
  SandboxTransferRepaymentSimulateResponse (..),
  SandboxTransferSimulateRequest (..),
  SandboxTransferSimulateResponse (..),
  SandboxTransferSweepSimulateRequest (..),
  SandboxTransferSweepSimulateResponse (..),
  Scopes (..),
  ScopesContext (..),
  ScopesNullable (..),
  ScreeningHitAnalysis (..),
  ScreeningHitData (..),
  ScreeningHitDateOfBirthItem (..),
  ScreeningHitDocumentsItems (..),
  ScreeningHitNamesItems (..),
  ScreeningStatusUpdatedWebhook (..),
  Security (..),
  SecurityOverride (..),
  SenderBACSNullable (..),
  ServicerAddressData (..),
  SignalAddressData (..),
  SignalDecisionReportRequest (..),
  SignalDecisionReportResponse (..),
  SignalDevice (..),
  SignalEvaluateCoreAttributes (..),
  SignalEvaluateRequest (..),
  SignalEvaluateResponse (..),
  SignalPersonName (..),
  SignalPrepareRequest (..),
  SignalPrepareResponse (..),
  SignalReturnReportRequest (..),
  SignalReturnReportResponse (..),
  SignalScores (..),
  SignalUser (..),
  SimulatedTransferSweep (..),
  SingleDocumentRiskSignal (..),
  Source (..),
  StandaloneAccountType (..),
  StandaloneCurrencyCodeList (..),
  StandaloneInvestmentTransactionType (..),
  Strategy (..),
  StudentLoan (..),
  StudentLoanRepaymentModel (..),
  StudentLoanStatus (..),
  StudentRepaymentPlan (..),
  SyncUpdatesAvailableWebhook (..),
  Taxform (..),
  TaxpayerID (..),
  Total (..),
  TotalCanonicalDescription (..),
  Transaction (..),
  TransactionAllOf (..),
  TransactionBase (..),
  TransactionCode (..),
  TransactionData (..),
  TransactionOverride (..),
  TransactionStream (..),
  TransactionStreamAmount (..),
  TransactionStreamStatus (..),
  TransactionsCategoryRule (..),
  TransactionsEnhanceGetRequest (..),
  TransactionsEnhanceGetResponse (..),
  TransactionsGetRequest (..),
  TransactionsGetRequestOptions (..),
  TransactionsGetResponse (..),
  TransactionsRecurringGetRequest (..),
  TransactionsRecurringGetRequestOptions (..),
  TransactionsRecurringGetResponse (..),
  TransactionsRefreshRequest (..),
  TransactionsRefreshResponse (..),
  TransactionsRemovedWebhook (..),
  TransactionsRuleDetails (..),
  TransactionsRuleField (..),
  TransactionsRuleType (..),
  TransactionsRulesCreateRequest (..),
  TransactionsRulesCreateResponse (..),
  TransactionsRulesListRequest (..),
  TransactionsRulesListResponse (..),
  TransactionsRulesRemoveRequest (..),
  TransactionsRulesRemoveResponse (..),
  TransactionsSyncRequest (..),
  TransactionsSyncRequestOptions (..),
  TransactionsSyncResponse (..),
  Transfer (..),
  TransferAuthorization (..),
  TransferAuthorizationCreateRequest (..),
  TransferAuthorizationCreateResponse (..),
  TransferAuthorizationDecision (..),
  TransferAuthorizationDecisionRationale (..),
  TransferAuthorizationDecisionRationaleCode (..),
  TransferAuthorizationDevice (..),
  TransferAuthorizationGuaranteeDecision (..),
  TransferAuthorizationGuaranteeDecisionRationale (..),
  TransferAuthorizationGuaranteeDecisionRationaleCode (..),
  TransferAuthorizationProposedTransfer (..),
  TransferCancelRequest (..),
  TransferCancelResponse (..),
  TransferCreateRequest (..),
  TransferCreateResponse (..),
  TransferEvent (..),
  TransferEventListRequest (..),
  TransferEventListResponse (..),
  TransferEventListTransferType (..),
  TransferEventSyncRequest (..),
  TransferEventSyncResponse (..),
  TransferEventType (..),
  TransferEventsUpdateWebhook (..),
  TransferFailure (..),
  TransferGetRequest (..),
  TransferGetResponse (..),
  TransferIntentAuthorizationDecision (..),
  TransferIntentCreate (..),
  TransferIntentCreateMode (..),
  TransferIntentCreateRequest (..),
  TransferIntentCreateResponse (..),
  TransferIntentGet (..),
  TransferIntentGetFailureReason (..),
  TransferIntentGetRequest (..),
  TransferIntentGetResponse (..),
  TransferIntentStatus (..),
  TransferListRequest (..),
  TransferListResponse (..),
  TransferMigrateAccountRequest (..),
  TransferMigrateAccountResponse (..),
  TransferNetwork (..),
  TransferRepayment (..),
  TransferRepaymentListRequest (..),
  TransferRepaymentListResponse (..),
  TransferRepaymentReturn (..),
  TransferRepaymentReturnListRequest (..),
  TransferRepaymentReturnListResponse (..),
  TransferStatus (..),
  TransferSweep (..),
  TransferSweepGetRequest (..),
  TransferSweepGetResponse (..),
  TransferSweepListRequest (..),
  TransferSweepListResponse (..),
  TransferSweepStatus (..),
  TransferType (..),
  TransferUserAddressInRequest (..),
  TransferUserAddressInResponse (..),
  TransferUserInRequest (..),
  TransferUserInResponse (..),
  UpdateEntityScreeningRequest (..),
  UpdateEntityScreeningRequestResettableField (..),
  UpdateEntityScreeningRequestSearchTerms (..),
  UpdateIndividualScreeningRequest (..),
  UpdateIndividualScreeningRequestResettableField (..),
  UpdateIndividualScreeningRequestSearchTerms (..),
  UserAddress (..),
  UserCreateRequest (..),
  UserCreateResponse (..),
  UserCustomPassword (..),
  UserIDNumber (..),
  UserName (..),
  UserPermissionRevokedWebhook (..),
  VerificationAttribute (..),
  VerificationExpiredWebhook (..),
  VerificationRefreshStatus (..),
  VerificationStatus (..),
  W2 (..),
  W2Box12 (..),
  W2StateAndLocalWages (..),
  Wallet (..),
  WalletBalance (..),
  WalletCreateRequest (..),
  WalletCreateResponse (..),
  WalletGetRequest (..),
  WalletGetResponse (..),
  WalletISOCurrencyCode (..),
  WalletListRequest (..),
  WalletListResponse (..),
  WalletNumbers (..),
  WalletTransaction (..),
  WalletTransactionAmount (..),
  WalletTransactionCounterparty (..),
  WalletTransactionCounterpartyBACS (..),
  WalletTransactionCounterpartyNumbers (..),
  WalletTransactionExecuteRequest (..),
  WalletTransactionExecuteResponse (..),
  WalletTransactionGetRequest (..),
  WalletTransactionGetResponse (..),
  WalletTransactionStatus (..),
  WalletTransactionsListRequest (..),
  WalletTransactionsListResponse (..),
  Warning (..),
  WatchlistScreeningAuditTrail (..),
  WatchlistScreeningCreateRequest (..),
  WatchlistScreeningDocument (..),
  WatchlistScreeningDocumentType (..),
  WatchlistScreeningHit (..),
  WatchlistScreeningHitLocations (..),
  WatchlistScreeningHitStatus (..),
  WatchlistScreeningIndividual (..),
  WatchlistScreeningIndividualResponse (..),
  WatchlistScreeningRequestSearchTerms (..),
  WatchlistScreeningReview (..),
  WatchlistScreeningReviewResponse (..),
  WatchlistScreeningSearchTerms (..),
  WatchlistScreeningStatus (..),
  WeakAliasDetermination (..),
  WebhookType (..),
  WebhookUpdateAcknowledgedWebhook (..),
  WebhookVerificationKeyGetRequest (..),
  WebhookVerificationKeyGetResponse (..),
  YTDGrossIncomeSummaryFieldNumber (..),
  YTDNetIncomeSummaryFieldNumber (..),
  ) where
  
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

-- | By default, Link will provide limited account filtering: it will only display Institutions that are compatible with all products supplied in the &#x60;products&#x60; parameter of &#x60;/link/token/create&#x60;, and, if &#x60;auth&#x60; is specified in the &#x60;products&#x60; array, will also filter out accounts other than &#x60;checking&#x60; and &#x60;savings&#x60; accounts on the Account Select pane. You can further limit the accounts shown in Link by using &#x60;account_filters&#x60; to specify the account subtypes to be shown in Link. Only the specified subtypes will be shown. This filtering applies to both the Account Select view (if enabled) and the Institution Select view. Institutions that do not support the selected subtypes will be omitted from Link. To indicate that all subtypes should be shown, use the value &#x60;\&quot;all\&quot;&#x60;. If the &#x60;account_filters&#x60; filter is used, any account type for which a filter is not specified will be entirely omitted from Link. For a full list of valid types and subtypes, see the [Account schema](https://plaid.com/docs/api/accounts#account-type-schema).  For institutions using OAuth, the filter will not affect the list of accounts shown by the bank in the OAuth window. 
newtype LinkTokenAccountFilters = LinkTokenAccountFilters { unLinkTokenAccountFilters :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | A filter to apply to &#x60;credit&#x60;-type accounts
newtype LinkTokenCreateCreditFilter = LinkTokenCreateCreditFilter { unLinkTokenCreateCreditFilter :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | A filter to apply to &#x60;depository&#x60;-type accounts
newtype LinkTokenCreateDepositoryFilter = LinkTokenCreateDepositoryFilter { unLinkTokenCreateDepositoryFilter :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | A map containing data used to highlight institutions in Link.
data LinkTokenCreateInstitutionData = LinkTokenCreateInstitutionData
  { linkTokenCreateInstitutionDataRoutingUnderscorenumber :: Maybe Text -- ^ The routing number of the bank to highlight.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON LinkTokenCreateInstitutionData where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "linkTokenCreateInstitutionData")
instance ToJSON LinkTokenCreateInstitutionData where
  toJSON = genericToJSON (removeFieldLabelPrefix False "linkTokenCreateInstitutionData")


-- | A filter to apply to &#x60;investment&#x60;-type accounts (or &#x60;brokerage&#x60;-type accounts for API versions 2018-05-22 and earlier).
newtype LinkTokenCreateInvestmentFilter = LinkTokenCreateInvestmentFilter { unLinkTokenCreateInvestmentFilter :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | A filter to apply to &#x60;loan&#x60;-type accounts
newtype LinkTokenCreateLoanFilter = LinkTokenCreateLoanFilter { unLinkTokenCreateLoanFilter :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

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


-- | Specifies options for initializing Link for use with the Auth product. This field can be used to enable or disable extended Auth flows for the resulting Link session. Omitting any field will result in a default that can be configured by your account manager.
data LinkTokenCreateRequestAuth = LinkTokenCreateRequestAuth
  { linkTokenCreateRequestAuthAuthUnderscoretypeUnderscoreselectUnderscoreenabled :: Maybe Bool -- ^ Specifies whether Auth Type Select is enabled for the Link session, allowing the end user to choose between linking instantly or manually prior to selecting their financial institution. Note that this can only be true if `same_day_microdeposits_enabled` is set to true.
  , linkTokenCreateRequestAuthAutomatedUnderscoremicrodepositsUnderscoreenabled :: Maybe Bool -- ^ Specifies whether the Link session is enabled for the Automated Micro-deposits flow.
  , linkTokenCreateRequestAuthInstantUnderscorematchUnderscoreenabled :: Maybe Bool -- ^ Specifies whether the Link session is enabled for the Instant Match flow.
  , linkTokenCreateRequestAuthSameUnderscoredayUnderscoremicrodepositsUnderscoreenabled :: Maybe Bool -- ^ Specifies whether the Link session is enabled for the Same Day Micro-deposits flow.
  , linkTokenCreateRequestAuthFlowUnderscoretype :: Maybe Text -- ^ This field has been deprecated in favor of `auth_type_select_enabled`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON LinkTokenCreateRequestAuth where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "linkTokenCreateRequestAuth")
instance ToJSON LinkTokenCreateRequestAuth where
  toJSON = genericToJSON (removeFieldLabelPrefix False "linkTokenCreateRequestAuth")


-- | Specifies options for initializing Link for use with the Deposit Switch (beta) product. This field is required if &#x60;deposit_switch&#x60; is included in the &#x60;products&#x60; array.
data LinkTokenCreateRequestDepositSwitch = LinkTokenCreateRequestDepositSwitch
  { linkTokenCreateRequestDepositSwitchDepositUnderscoreswitchUnderscoreid :: Text -- ^ The `deposit_switch_id` provided by the `/deposit_switch/create` endpoint.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON LinkTokenCreateRequestDepositSwitch where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "linkTokenCreateRequestDepositSwitch")
instance ToJSON LinkTokenCreateRequestDepositSwitch where
  toJSON = genericToJSON (removeFieldLabelPrefix False "linkTokenCreateRequestDepositSwitch")


-- | Specifies options for initializing Link for use with the Income (beta) product. This field is required if &#x60;income_verification&#x60; is included in the &#x60;products&#x60; array.
data LinkTokenCreateRequestIncomeVerification = LinkTokenCreateRequestIncomeVerification
  { linkTokenCreateRequestIncomeVerificationIncomeUnderscoreverificationUnderscoreid :: Maybe Text -- ^ The `income_verification_id` of the verification instance, as provided by `/income/verification/create`.
  , linkTokenCreateRequestIncomeVerificationAssetUnderscorereportUnderscoreid :: Maybe Text -- ^ The `asset_report_id` of an asset report associated with the user, as provided by `/asset_report/create`. Providing an `asset_report_id` is optional and can be used to verify the user through a streamlined flow. If provided, the bank linking flow will be skipped.
  , linkTokenCreateRequestIncomeVerificationPrecheckUnderscoreid :: Maybe Text -- ^ The ID of a precheck created with `/income/verification/precheck`. Will be used to improve conversion of the income verification flow by streamlining the Link interface presented to the end user.
  , linkTokenCreateRequestIncomeVerificationAccessUnderscoretokens :: Maybe [Text] -- ^ An array of access tokens corresponding to the Items that will be cross-referenced with the product data. If the `transactions` product was not initialized for the Items during link, it will be initialized after this Link session.
  , linkTokenCreateRequestIncomeVerificationIncomeUnderscoresourceUnderscoretypes :: Maybe [IncomeVerificationSourceType] -- ^ The types of source income data that users will be permitted to share. Options include `bank` and `payroll`. Currently you can only specify one of these options.
  , linkTokenCreateRequestIncomeVerificationBankUnderscoreincome :: Maybe LinkTokenCreateRequestIncomeVerificationBankIncome -- ^ 
  , linkTokenCreateRequestIncomeVerificationPayrollUnderscoreincome :: Maybe LinkTokenCreateRequestIncomeVerificationPayrollIncome -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON LinkTokenCreateRequestIncomeVerification where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "linkTokenCreateRequestIncomeVerification")
instance ToJSON LinkTokenCreateRequestIncomeVerification where
  toJSON = genericToJSON (removeFieldLabelPrefix False "linkTokenCreateRequestIncomeVerification")


-- | Specifies options for initializing Link for use with Bank Income. This field is required if &#x60;income_verification&#x60; is included in the &#x60;products&#x60; array and &#x60;bank&#x60; is specified in &#x60;income_source_types&#x60;.
data LinkTokenCreateRequestIncomeVerificationBankIncome = LinkTokenCreateRequestIncomeVerificationBankIncome
  { linkTokenCreateRequestIncomeVerificationBankIncomeDaysUnderscorerequested :: Maybe Int -- ^ The number of days of data to request for the Bank Income product
  , linkTokenCreateRequestIncomeVerificationBankIncomeEnableUnderscoremultipleUnderscoreitems :: Maybe Bool -- ^ Whether to enable multiple items to be added in the link session
  } deriving (Show, Eq, Generic, Data)

instance FromJSON LinkTokenCreateRequestIncomeVerificationBankIncome where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "linkTokenCreateRequestIncomeVerificationBankIncome")
instance ToJSON LinkTokenCreateRequestIncomeVerificationBankIncome where
  toJSON = genericToJSON (removeFieldLabelPrefix False "linkTokenCreateRequestIncomeVerificationBankIncome")


-- | Specifies options for initializing Link for use with Payroll Income. This field is required if &#x60;income_verification&#x60; is included in the &#x60;products&#x60; array and &#x60;payroll&#x60; is specified in &#x60;income_source_types&#x60;.
data LinkTokenCreateRequestIncomeVerificationPayrollIncome = LinkTokenCreateRequestIncomeVerificationPayrollIncome
  { linkTokenCreateRequestIncomeVerificationPayrollIncomeFlowUnderscoretypes :: Maybe [IncomeVerificationPayrollFlowType] -- ^ The types of payroll income verification to enable for the link session. If none are specified, then users will see both document and digital payroll income.
  , linkTokenCreateRequestIncomeVerificationPayrollIncomeIsUnderscoreupdateUnderscoremode :: Maybe Bool -- ^ An identifier to indicate whether the income verification link token will be used for an update or not
  } deriving (Show, Eq, Generic, Data)

instance FromJSON LinkTokenCreateRequestIncomeVerificationPayrollIncome where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "linkTokenCreateRequestIncomeVerificationPayrollIncome")
instance ToJSON LinkTokenCreateRequestIncomeVerificationPayrollIncome where
  toJSON = genericToJSON (removeFieldLabelPrefix False "linkTokenCreateRequestIncomeVerificationPayrollIncome")


-- | Specifies options for initializing Link for use with the Payment Initiation (Europe) product. This field is required if &#x60;payment_initiation&#x60; is included in the &#x60;products&#x60; array.
data LinkTokenCreateRequestPaymentInitiation = LinkTokenCreateRequestPaymentInitiation
  { linkTokenCreateRequestPaymentInitiationPaymentUnderscoreid :: Text -- ^ The `payment_id` provided by the `/payment_initiation/payment/create` endpoint.
  , linkTokenCreateRequestPaymentInitiationConsentUnderscoreid :: Maybe Text -- ^ The `consent_id` provided by the `/payment_initiation/consent/create` endpoint.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON LinkTokenCreateRequestPaymentInitiation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "linkTokenCreateRequestPaymentInitiation")
instance ToJSON LinkTokenCreateRequestPaymentInitiation where
  toJSON = genericToJSON (removeFieldLabelPrefix False "linkTokenCreateRequestPaymentInitiation")


-- | Specifies options for initializing Link for use with the Transfer product.
data LinkTokenCreateRequestTransfer = LinkTokenCreateRequestTransfer
  { linkTokenCreateRequestTransferIntentUnderscoreid :: Maybe Text -- ^ The `id` returned by the `/transfer/intent/create` endpoint.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON LinkTokenCreateRequestTransfer where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "linkTokenCreateRequestTransfer")
instance ToJSON LinkTokenCreateRequestTransfer where
  toJSON = genericToJSON (removeFieldLabelPrefix False "linkTokenCreateRequestTransfer")


-- | Specifies options for initializing Link for [update mode](https://plaid.com/docs/link/update-mode).
data LinkTokenCreateRequestUpdate = LinkTokenCreateRequestUpdate
  { linkTokenCreateRequestUpdateAccountUnderscoreselectionUnderscoreenabled :: Maybe Bool -- ^ If `true`, enables [update mode with Account Select](https://plaid.com/docs/link/update-mode/#using-update-mode-to-request-new-accounts).
  } deriving (Show, Eq, Generic, Data)

instance FromJSON LinkTokenCreateRequestUpdate where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "linkTokenCreateRequestUpdate")
instance ToJSON LinkTokenCreateRequestUpdate where
  toJSON = genericToJSON (removeFieldLabelPrefix False "linkTokenCreateRequestUpdate")


-- | An object specifying information about the end user who will be linking their account.
data LinkTokenCreateRequestUser = LinkTokenCreateRequestUser
  { linkTokenCreateRequestUserClientUnderscoreuserUnderscoreid :: Text -- ^ A unique ID representing the end user. Typically this will be a user ID number from your application. Personally identifiable information, such as an email address or phone number, should not be used in the `client_user_id`. It is currently used as a means of searching logs for the given user in the Plaid Dashboard.
  , linkTokenCreateRequestUserLegalUnderscorename :: Maybe Text -- ^ The user's full legal name. This is an optional field used in the [returning user experience](https://plaid.com/docs/link/returning-user) to associate Items to the user.
  , linkTokenCreateRequestUserPhoneUnderscorenumber :: Maybe Text -- ^ The user's phone number in [E.164](https://en.wikipedia.org/wiki/E.164) format. This field is optional, but required to enable the [returning user experience](https://plaid.com/docs/link/returning-user).
  , linkTokenCreateRequestUserPhoneUnderscorenumberUnderscoreverifiedUnderscoretime :: Maybe UTCTime -- ^ The date and time the phone number was verified in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format (`YYYY-MM-DDThh:mm:ssZ`). This field is optional, but required to enable any [returning user experience](https://plaid.com/docs/link/returning-user).   Only pass a verification time for a phone number that you have verified. If you have performed verification but don’t have the time, you may supply a signal value of the start of the UNIX epoch.   Example: `2020-01-01T00:00:00Z` 
  , linkTokenCreateRequestUserEmailUnderscoreaddress :: Maybe Text -- ^ The user's email address. This field is optional, but required to enable the [pre-authenticated returning user flow](https://plaid.com/docs/link/returning-user/#enabling-the-returning-user-experience).
  , linkTokenCreateRequestUserEmailUnderscoreaddressUnderscoreverifiedUnderscoretime :: Maybe UTCTime -- ^ The date and time the email address was verified in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format (`YYYY-MM-DDThh:mm:ssZ`). This is an optional field used in the [returning user experience](https://plaid.com/docs/link/returning-user).   Only pass a verification time for an email address that you have verified. If you have performed verification but don’t have the time, you may supply a signal value of the start of the UNIX epoch.   Example: `2020-01-01T00:00:00Z`
  , linkTokenCreateRequestUserSsn :: Maybe Text -- ^ To be provided in the format \"ddd-dd-dddd\". This field is optional and will support not-yet-implemented functionality for new products.
  , linkTokenCreateRequestUserDateUnderscoreofUnderscorebirth :: Maybe Day -- ^ To be provided in the format \"yyyy-mm-dd\". This field is optional and will support not-yet-implemented functionality for new products.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON LinkTokenCreateRequestUser where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "linkTokenCreateRequestUser")
instance ToJSON LinkTokenCreateRequestUser where
  toJSON = genericToJSON (removeFieldLabelPrefix False "linkTokenCreateRequestUser")


-- | LinkTokenCreateResponse defines the response schema for &#x60;/link/token/create&#x60;
newtype LinkTokenCreateResponse = LinkTokenCreateResponse { unLinkTokenCreateResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Configuration parameters for EU flows
data LinkTokenEUConfig = LinkTokenEUConfig
  { linkTokenEUConfigHeadless :: Maybe Bool -- ^ If `true`, open Link without an initial UI. Defaults to `false`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON LinkTokenEUConfig where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "linkTokenEUConfig")
instance ToJSON LinkTokenEUConfig where
  toJSON = genericToJSON (removeFieldLabelPrefix False "linkTokenEUConfig")


-- | An object specifying the arguments originally provided to the &#x60;/link/token/create&#x60; call.
newtype LinkTokenGetMetadataResponse = LinkTokenGetMetadataResponse { unLinkTokenGetMetadataResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | LinkTokenGetRequest defines the request schema for &#x60;/link/token/get&#x60;
data LinkTokenGetRequest = LinkTokenGetRequest
  { linkTokenGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , linkTokenGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , linkTokenGetRequestLinkUnderscoretoken :: Text -- ^ A `link_token` from a previous invocation of `/link/token/create`
  } deriving (Show, Eq, Generic, Data)

instance FromJSON LinkTokenGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "linkTokenGetRequest")
instance ToJSON LinkTokenGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "linkTokenGetRequest")


-- | LinkTokenGetResponse defines the response schema for &#x60;/link/token/get&#x60;
newtype LinkTokenGetResponse = LinkTokenGetResponse { unLinkTokenGetResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Request input for listing dashboard users
data ListDashboardUserRequest = ListDashboardUserRequest
  { listDashboardUserRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , listDashboardUserRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , listDashboardUserRequestCursor :: Maybe Text -- ^ An identifier that determines which page of results you receive.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ListDashboardUserRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "listDashboardUserRequest")
instance ToJSON ListDashboardUserRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "listDashboardUserRequest")


-- | Request input for listing entity watchlist screenings
data ListEntityWatchlistScreeningRequest = ListEntityWatchlistScreeningRequest
  { listEntityWatchlistScreeningRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , listEntityWatchlistScreeningRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , listEntityWatchlistScreeningRequestEntityUnderscorewatchlistUnderscoreprogramUnderscoreid :: Text -- ^ ID of the associated entity program.
  , listEntityWatchlistScreeningRequestClientUnderscoreuserUnderscoreid :: Maybe Text -- ^ 
  , listEntityWatchlistScreeningRequestStatus :: Maybe WatchlistScreeningStatus -- ^ 
  , listEntityWatchlistScreeningRequestAssignee :: Maybe Text -- ^ 
  , listEntityWatchlistScreeningRequestCursor :: Maybe Text -- ^ An identifier that determines which page of results you receive.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ListEntityWatchlistScreeningRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "listEntityWatchlistScreeningRequest")
instance ToJSON ListEntityWatchlistScreeningRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "listEntityWatchlistScreeningRequest")


-- | Request input for listing identity verifications
data ListIdentityVerificationRequest = ListIdentityVerificationRequest
  { listIdentityVerificationRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , listIdentityVerificationRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , listIdentityVerificationRequestTemplateUnderscoreid :: Text -- ^ ID of the associated Identity Verification template.
  , listIdentityVerificationRequestClientUnderscoreuserUnderscoreid :: Text -- ^ An identifier to help you connect this object to your internal systems. For example, your database ID corresponding to this object.
  , listIdentityVerificationRequestCursor :: Maybe Text -- ^ An identifier that determines which page of results you receive.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ListIdentityVerificationRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "listIdentityVerificationRequest")
instance ToJSON ListIdentityVerificationRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "listIdentityVerificationRequest")


-- | Request input for listinging watchlist screenings for individuals
data ListIndividualWatchlistScreeningRequest = ListIndividualWatchlistScreeningRequest
  { listIndividualWatchlistScreeningRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , listIndividualWatchlistScreeningRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , listIndividualWatchlistScreeningRequestWatchlistUnderscoreprogramUnderscoreid :: Text -- ^ ID of the associated program.
  , listIndividualWatchlistScreeningRequestClientUnderscoreuserUnderscoreid :: Maybe Text -- ^ 
  , listIndividualWatchlistScreeningRequestStatus :: Maybe WatchlistScreeningStatus -- ^ 
  , listIndividualWatchlistScreeningRequestAssignee :: Maybe Text -- ^ 
  , listIndividualWatchlistScreeningRequestCursor :: Maybe Text -- ^ An identifier that determines which page of results you receive.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ListIndividualWatchlistScreeningRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "listIndividualWatchlistScreeningRequest")
instance ToJSON ListIndividualWatchlistScreeningRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "listIndividualWatchlistScreeningRequest")


-- | Request input for listing changes to entity watchlist screenings
data ListWatchlistScreeningEntityHistoryRequest = ListWatchlistScreeningEntityHistoryRequest
  { listWatchlistScreeningEntityHistoryRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , listWatchlistScreeningEntityHistoryRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , listWatchlistScreeningEntityHistoryRequestEntityUnderscorewatchlistUnderscorescreeningUnderscoreid :: Text -- ^ ID of the associated entity screening.
  , listWatchlistScreeningEntityHistoryRequestCursor :: Maybe Text -- ^ An identifier that determines which page of results you receive.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ListWatchlistScreeningEntityHistoryRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "listWatchlistScreeningEntityHistoryRequest")
instance ToJSON ListWatchlistScreeningEntityHistoryRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "listWatchlistScreeningEntityHistoryRequest")


-- | Request input for listing hits for an entity watchlist screening
data ListWatchlistScreeningEntityHitRequest = ListWatchlistScreeningEntityHitRequest
  { listWatchlistScreeningEntityHitRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , listWatchlistScreeningEntityHitRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , listWatchlistScreeningEntityHitRequestEntityUnderscorewatchlistUnderscorescreeningUnderscoreid :: Text -- ^ ID of the associated entity screening.
  , listWatchlistScreeningEntityHitRequestCursor :: Maybe Text -- ^ An identifier that determines which page of results you receive.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ListWatchlistScreeningEntityHitRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "listWatchlistScreeningEntityHitRequest")
instance ToJSON ListWatchlistScreeningEntityHitRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "listWatchlistScreeningEntityHitRequest")


-- | Request input for listing entity watchlist screening programs
data ListWatchlistScreeningEntityProgramsRequest = ListWatchlistScreeningEntityProgramsRequest
  { listWatchlistScreeningEntityProgramsRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , listWatchlistScreeningEntityProgramsRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , listWatchlistScreeningEntityProgramsRequestCursor :: Maybe Text -- ^ An identifier that determines which page of results you receive.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ListWatchlistScreeningEntityProgramsRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "listWatchlistScreeningEntityProgramsRequest")
instance ToJSON ListWatchlistScreeningEntityProgramsRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "listWatchlistScreeningEntityProgramsRequest")


-- | Request input for listing reviews for an entity watchlist screening
data ListWatchlistScreeningEntityReviewsRequest = ListWatchlistScreeningEntityReviewsRequest
  { listWatchlistScreeningEntityReviewsRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , listWatchlistScreeningEntityReviewsRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , listWatchlistScreeningEntityReviewsRequestEntityUnderscorewatchlistUnderscorescreeningUnderscoreid :: Text -- ^ ID of the associated entity screening.
  , listWatchlistScreeningEntityReviewsRequestCursor :: Maybe Text -- ^ An identifier that determines which page of results you receive.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ListWatchlistScreeningEntityReviewsRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "listWatchlistScreeningEntityReviewsRequest")
instance ToJSON ListWatchlistScreeningEntityReviewsRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "listWatchlistScreeningEntityReviewsRequest")


-- | Request input for listing changes to watchlist screenings for individuals
data ListWatchlistScreeningIndividualHistoryRequest = ListWatchlistScreeningIndividualHistoryRequest
  { listWatchlistScreeningIndividualHistoryRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , listWatchlistScreeningIndividualHistoryRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , listWatchlistScreeningIndividualHistoryRequestWatchlistUnderscorescreeningUnderscoreid :: Text -- ^ ID of the associated screening.
  , listWatchlistScreeningIndividualHistoryRequestCursor :: Maybe Text -- ^ An identifier that determines which page of results you receive.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ListWatchlistScreeningIndividualHistoryRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "listWatchlistScreeningIndividualHistoryRequest")
instance ToJSON ListWatchlistScreeningIndividualHistoryRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "listWatchlistScreeningIndividualHistoryRequest")


-- | Request input for listing hits for an individual watchlist screening
data ListWatchlistScreeningIndividualHitRequest = ListWatchlistScreeningIndividualHitRequest
  { listWatchlistScreeningIndividualHitRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , listWatchlistScreeningIndividualHitRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , listWatchlistScreeningIndividualHitRequestWatchlistUnderscorescreeningUnderscoreid :: Text -- ^ ID of the associated screening.
  , listWatchlistScreeningIndividualHitRequestCursor :: Maybe Text -- ^ An identifier that determines which page of results you receive.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ListWatchlistScreeningIndividualHitRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "listWatchlistScreeningIndividualHitRequest")
instance ToJSON ListWatchlistScreeningIndividualHitRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "listWatchlistScreeningIndividualHitRequest")


-- | Request input for listing watchlist screening programs for individuals
data ListWatchlistScreeningIndividualProgramsRequest = ListWatchlistScreeningIndividualProgramsRequest
  { listWatchlistScreeningIndividualProgramsRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , listWatchlistScreeningIndividualProgramsRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , listWatchlistScreeningIndividualProgramsRequestCursor :: Maybe Text -- ^ An identifier that determines which page of results you receive.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ListWatchlistScreeningIndividualProgramsRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "listWatchlistScreeningIndividualProgramsRequest")
instance ToJSON ListWatchlistScreeningIndividualProgramsRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "listWatchlistScreeningIndividualProgramsRequest")


-- | Request input for listing reviews for an individual watchlist screening
data ListWatchlistScreeningIndividualReviewsRequest = ListWatchlistScreeningIndividualReviewsRequest
  { listWatchlistScreeningIndividualReviewsRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , listWatchlistScreeningIndividualReviewsRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , listWatchlistScreeningIndividualReviewsRequestWatchlistUnderscorescreeningUnderscoreid :: Text -- ^ ID of the associated screening.
  , listWatchlistScreeningIndividualReviewsRequestCursor :: Maybe Text -- ^ An identifier that determines which page of results you receive.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ListWatchlistScreeningIndividualReviewsRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "listWatchlistScreeningIndividualReviewsRequest")
instance ToJSON ListWatchlistScreeningIndividualReviewsRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "listWatchlistScreeningIndividualReviewsRequest")


-- | Valid account subtypes for loan accounts. For a list containing descriptions of each subtype, see [Account schemas](https://plaid.com/docs/api/accounts/#StandaloneAccountType-loan).
data LoanAccountSubtype = LoanAccountSubtype
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON LoanAccountSubtype where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "loanAccountSubtype")
instance ToJSON LoanAccountSubtype where
  toJSON = genericToJSON (removeFieldLabelPrefix False "loanAccountSubtype")


-- | A filter to apply to &#x60;loan&#x60;-type accounts
newtype LoanFilter = LoanFilter { unLoanFilter :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | A representation of where a transaction took place
newtype Location = Location { unLocation :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Specifies the multi-factor authentication settings to use with this test account
newtype MFA = MFA { unMFA :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Summary object reflecting the match result of the associated data
data MatchSummary = MatchSummary
  { matchSummarySummary :: MatchSummaryCode -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON MatchSummary where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "matchSummary")
instance ToJSON MatchSummary where
  toJSON = genericToJSON (removeFieldLabelPrefix False "matchSummary")


-- | An enum indicating the match type between data provided by user and data checked against an external data source.   &#x60;match&#x60; indicates that the provided input data was a strong match against external data.  &#x60;partial_match&#x60; indicates the data approximately matched against external data. For example, \&quot;Knope\&quot; vs. \&quot;Knope-Wyatt\&quot; for last name.  &#x60;no_match&#x60; indicates that Plaid was able to perform a check against an external data source and it did not match the provided input data.  &#x60;no_data&#x60; indicates that Plaid was unable to find external data to compare against the provided input data.  &#x60;no_input&#x60; indicates that Plaid was unable to perform a check because no information was provided for this field by the end user.
data MatchSummaryCode = MatchSummaryCode
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON MatchSummaryCode where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "matchSummaryCode")
instance ToJSON MatchSummaryCode where
  toJSON = genericToJSON (removeFieldLabelPrefix False "matchSummaryCode")


-- | Allows specifying the metadata of the test account
newtype Meta = Meta { unMeta :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Object containing metadata about the interest rate for the mortgage.
newtype MortgageInterestRate = MortgageInterestRate { unMortgageInterestRate :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Contains details about a mortgage account.
newtype MortgageLiability = MortgageLiability { unMortgageLiability :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Object containing fields describing property address.
newtype MortgagePropertyAddress = MortgagePropertyAddress { unMortgagePropertyAddress :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Object containing risk signals and relevant metadata for a set of uploaded documents
newtype MultiDocumentRiskSignal = MultiDocumentRiskSignal { unMultiDocumentRiskSignal :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object representing information about the net pay amount on the paystub.
newtype NetPay = NetPay { unNetPay :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Fired when Plaid detects a new account for Items created or updated with [Account Select v2](https://plaid.com/docs/link/customization/#account-select). Upon receiving this webhook, you can prompt your users to share new accounts with you through [Account Select v2 update mode](https://plaid.com/docs/link/update-mode/#using-update-mode-to-request-new-accounts).
data NewAccountsAvailableWebhook = NewAccountsAvailableWebhook
  { newAccountsAvailableWebhookWebhookUnderscoretype :: Maybe Text -- ^ `ITEM`
  , newAccountsAvailableWebhookWebhookUnderscorecode :: Maybe Text -- ^ `NEW_ACCOUNTS_AVAILABLE`
  , newAccountsAvailableWebhookItemUnderscoreid :: Maybe Text -- ^ The `item_id` of the Item associated with this webhook, warning, or error
  , newAccountsAvailableWebhookError :: Maybe PlaidError -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON NewAccountsAvailableWebhook where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "newAccountsAvailableWebhook")
instance ToJSON NewAccountsAvailableWebhook where
  toJSON = genericToJSON (removeFieldLabelPrefix False "newAccountsAvailableWebhook")


-- | Account and bank identifier number data used to configure the test account. All values are optional.
newtype Numbers = Numbers { unNumbers :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Identifying information for transferring money to or from a US account via ACH or wire transfer.
newtype NumbersACH = NumbersACH { unNumbersACH :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Identifying information for transferring money to or from a US account via ACH or wire transfer.
data NumbersACHNullable = NumbersACHNullable
  { numbersACHNullableAccountUnderscoreid :: Text -- ^ The Plaid account ID associated with the account numbers
  , numbersACHNullableAccount :: Text -- ^ The ACH account number for the account.  Note that when using OAuth with Chase Bank (`ins_56`), Chase will issue \"tokenized\" routing and account numbers, which are not the user's actual account and routing numbers. These tokenized numbers should work identically to normal account and routing numbers. The digits returned in the `mask` field will continue to reflect the actual account number, rather than the tokenized account number; for this reason, when displaying account numbers to the user to help them identify their account in your UI, always use the `mask` rather than truncating the `account` number. If a user revokes their permissions to your app, the tokenized numbers will continue to work for ACH deposits, but not withdrawals.
  , numbersACHNullableRouting :: Text -- ^ The ACH routing number for the account. If the institution is `ins_56`, this may be a tokenized routing number. For more information, see the description of the `account` field.
  , numbersACHNullableWireUnderscorerouting :: Text -- ^ The wire transfer routing number for the account, if available
  } deriving (Show, Eq, Generic, Data)

instance FromJSON NumbersACHNullable where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "numbersACHNullable")
instance ToJSON NumbersACHNullable where
  toJSON = genericToJSON (removeFieldLabelPrefix False "numbersACHNullable")


-- | Identifying information for transferring money to or from a UK bank account via BACS.
newtype NumbersBACS = NumbersBACS { unNumbersBACS :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Identifying information for transferring money to or from a UK bank account via BACS.
data NumbersBACSNullable = NumbersBACSNullable
  { numbersBACSNullableAccountUnderscoreid :: Text -- ^ The Plaid account ID associated with the account numbers
  , numbersBACSNullableAccount :: Text -- ^ The BACS account number for the account
  , numbersBACSNullableSortUnderscorecode :: Text -- ^ The BACS sort code for the account
  } deriving (Show, Eq, Generic, Data)

instance FromJSON NumbersBACSNullable where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "numbersBACSNullable")
instance ToJSON NumbersBACSNullable where
  toJSON = genericToJSON (removeFieldLabelPrefix False "numbersBACSNullable")


-- | Identifying information for transferring money to or from a Canadian bank account via EFT.
newtype NumbersEFT = NumbersEFT { unNumbersEFT :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Identifying information for transferring money to or from a Canadian bank account via EFT.
data NumbersEFTNullable = NumbersEFTNullable
  { numbersEFTNullableAccountUnderscoreid :: Text -- ^ The Plaid account ID associated with the account numbers
  , numbersEFTNullableAccount :: Text -- ^ The EFT account number for the account
  , numbersEFTNullableInstitution :: Text -- ^ The EFT institution number for the account
  , numbersEFTNullableBranch :: Text -- ^ The EFT branch number for the account
  } deriving (Show, Eq, Generic, Data)

instance FromJSON NumbersEFTNullable where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "numbersEFTNullable")
instance ToJSON NumbersEFTNullable where
  toJSON = genericToJSON (removeFieldLabelPrefix False "numbersEFTNullable")


-- | Identifying information for transferring money to or from an international bank account via wire transfer.
newtype NumbersInternational = NumbersInternational { unNumbersInternational :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Identifying information for transferring money to or from an international bank account via wire transfer.
data NumbersInternationalNullable = NumbersInternationalNullable
  { numbersInternationalNullableAccountUnderscoreid :: Text -- ^ The Plaid account ID associated with the account numbers
  , numbersInternationalNullableIban :: Text -- ^ The International Bank Account Number (IBAN) for the account
  , numbersInternationalNullableBic :: Text -- ^ The Bank Identifier Code (BIC) for the account
  } deriving (Show, Eq, Generic, Data)

instance FromJSON NumbersInternationalNullable where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "numbersInternationalNullable")
instance ToJSON NumbersInternationalNullable where
  toJSON = genericToJSON (removeFieldLabelPrefix False "numbersInternationalNullable")


-- | &#x60;investment:&#x60; Investment account.  &#x60;credit:&#x60; Credit card  &#x60;depository:&#x60; Depository account  &#x60;loan:&#x60; Loan account  &#x60;payroll:&#x60; Payroll account  &#x60;other:&#x60; Non-specified account type  See the [Account type schema](https://plaid.com/docs/api/accounts#account-type-schema) for a full listing of account types and corresponding subtypes.
data OverrideAccountType = OverrideAccountType
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON OverrideAccountType where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "overrideAccountType")
instance ToJSON OverrideAccountType where
  toJSON = genericToJSON (removeFieldLabelPrefix False "overrideAccountType")


-- | Data to use to set values of test accounts. Some values cannot be specified in the schema and will instead will be calculated from other test data in order to achieve more consistent, realistic test data.
newtype OverrideAccounts = OverrideAccounts { unOverrideAccounts :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Data returned from the financial institution about the owner or owners of an account. Only the &#x60;names&#x60; array must be non-empty.
newtype Owner = Owner { unOwner :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Data about the owner or owners of an account. Any fields not specified will be filled in with default Sandbox information.
newtype OwnerOverride = OwnerOverride { unOwnerOverride :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Field describing whether the associated address is a post office box. Will be &#x60;yes&#x60; when a P.O. box is detected, &#x60;no&#x60; when Plaid confirmed the address is not a P.O. box, and &#x60;no_data&#x60; when Plaid was not able to determine if the address is a P.O. box.
data POBoxStatus = POBoxStatus
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON POBoxStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pOBoxStatus")
instance ToJSON POBoxStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pOBoxStatus")


-- | Information about the student&#39;s eligibility in the Public Service Loan Forgiveness program. This is only returned if the institution is Fedloan (&#x60;ins_116527&#x60;). 
newtype PSLFStatus = PSLFStatus { unPSLFStatus :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Paginated list of dashboard users
newtype PaginatedDashboardUserListResponse = PaginatedDashboardUserListResponse { unPaginatedDashboardUserListResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Paginated list of entity watchlist screening programs
newtype PaginatedEntityWatchlistProgramListResponse = PaginatedEntityWatchlistProgramListResponse { unPaginatedEntityWatchlistProgramListResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Paginated list of entity watchlist screening hits
newtype PaginatedEntityWatchlistScreeningHitListResponse = PaginatedEntityWatchlistScreeningHitListResponse { unPaginatedEntityWatchlistScreeningHitListResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Paginated list of entity watchlist screenings
newtype PaginatedEntityWatchlistScreeningListResponse = PaginatedEntityWatchlistScreeningListResponse { unPaginatedEntityWatchlistScreeningListResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Paginated list of entity watchlist screening reviews
newtype PaginatedEntityWatchlistScreeningReviewListResponse = PaginatedEntityWatchlistScreeningReviewListResponse { unPaginatedEntityWatchlistScreeningReviewListResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Paginated list of Plaid sessions.
newtype PaginatedIdentityVerificationListResponse = PaginatedIdentityVerificationListResponse { unPaginatedIdentityVerificationListResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Paginated list of individual watchlist screening programs
newtype PaginatedIndividualWatchlistProgramListResponse = PaginatedIndividualWatchlistProgramListResponse { unPaginatedIndividualWatchlistProgramListResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Paginated list of individual watchlist screening hits
newtype PaginatedIndividualWatchlistScreeningHitListResponse = PaginatedIndividualWatchlistScreeningHitListResponse { unPaginatedIndividualWatchlistScreeningHitListResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Paginated list of individual watchlist screenings.
newtype PaginatedIndividualWatchlistScreeningListResponse = PaginatedIndividualWatchlistScreeningListResponse { unPaginatedIndividualWatchlistScreeningListResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Paginated list of screening reviews
newtype PaginatedIndividualWatchlistScreeningReviewListResponse = PaginatedIndividualWatchlistScreeningReviewListResponse { unPaginatedIndividualWatchlistScreeningReviewListResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object representing a monetary amount.
newtype Pay = Pay { unPay :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The frequency of the pay period.
newtype PayFrequency = PayFrequency { unPayFrequency :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The frequency of the pay period.
data PayFrequencyValue = PayFrequencyValue
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PayFrequencyValue where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "payFrequencyValue")
instance ToJSON PayFrequencyValue where
  toJSON = genericToJSON (removeFieldLabelPrefix False "payFrequencyValue")


-- | Details about the pay period.
newtype PayPeriodDetails = PayPeriodDetails { unPayPeriodDetails :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object representing the deduction line items for the pay period
newtype PayStubDeductionsBreakdown = PayStubDeductionsBreakdown { unPayStubDeductionsBreakdown :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object representing the total deductions for the pay period
newtype PayStubDeductionsTotal = PayStubDeductionsTotal { unPayStubDeductionsTotal :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Information about the accounts that the payment was distributed to.
newtype PayStubDistributionBreakdown = PayStubDistributionBreakdown { unPayStubDistributionBreakdown :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object representing the earnings line items for the pay period.
newtype PayStubEarningsBreakdown = PayStubEarningsBreakdown { unPayStubEarningsBreakdown :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object representing both the current pay period and year to date amount for an earning category.
newtype PayStubEarningsTotal = PayStubEarningsTotal { unPayStubEarningsTotal :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Details about the pay period.
newtype PayStubPayPeriodDetails = PayStubPayPeriodDetails { unPayStubPayPeriodDetails :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Taxpayer ID of the individual receiving the paystub.
newtype PayStubTaxpayerID = PayStubTaxpayerID { unPayStubTaxpayerID :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Details about a certain reason as to why a document could potentially be fraudulent.
newtype PayStubVerificationAttribute = PayStubVerificationAttribute { unPayStubVerificationAttribute :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The amount and currency of a payment
newtype PaymentAmount = PaymentAmount { unPaymentAmount :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The ISO-4217 currency code of the payment. For standing orders and payment consents, &#x60;\&quot;GBP\&quot;&#x60; must be used.
data PaymentAmountCurrency = PaymentAmountCurrency
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentAmountCurrency where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentAmountCurrency")
instance ToJSON PaymentAmountCurrency where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentAmountCurrency")


-- | The channel used to make a payment. &#x60;online:&#x60; transactions that took place online.  &#x60;in store:&#x60; transactions that were made at a physical location.  &#x60;other:&#x60; transactions that relate to banks, e.g. fees or deposits.
data PaymentChannel = PaymentChannel
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentChannel where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentChannel")
instance ToJSON PaymentChannel where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentChannel")


-- | Maximum amount of a single payment initiated using the payment consent.
data PaymentConsentMaxPaymentAmount = PaymentConsentMaxPaymentAmount
  { paymentConsentMaxPaymentAmountCurrency :: PaymentAmountCurrency -- ^ 
  , paymentConsentMaxPaymentAmountValue :: Double -- ^ The amount of the payment. Must contain at most two digits of precision e.g. `1.23`. Minimum accepted value is `1`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentConsentMaxPaymentAmount where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentConsentMaxPaymentAmount")
instance ToJSON PaymentConsentMaxPaymentAmount where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentConsentMaxPaymentAmount")


-- | Where the payment consent period should start.  &#x60;CALENDAR&#x60;: line up with a calendar.  &#x60;CONSENT&#x60;: on the date of consent creation.
data PaymentConsentPeriodicAlignment = PaymentConsentPeriodicAlignment
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentConsentPeriodicAlignment where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentConsentPeriodicAlignment")
instance ToJSON PaymentConsentPeriodicAlignment where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentConsentPeriodicAlignment")


-- | Defines consent payments limitations per period.
newtype PaymentConsentPeriodicAmount = PaymentConsentPeriodicAmount { unPaymentConsentPeriodicAmount :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Maximum cumulative amount for all payments in the specified interval.
data PaymentConsentPeriodicAmountAmount = PaymentConsentPeriodicAmountAmount
  { paymentConsentPeriodicAmountAmountCurrency :: PaymentAmountCurrency -- ^ 
  , paymentConsentPeriodicAmountAmountValue :: Double -- ^ The amount of the payment. Must contain at most two digits of precision e.g. `1.23`. Minimum accepted value is `1`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentConsentPeriodicAmountAmount where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentConsentPeriodicAmountAmount")
instance ToJSON PaymentConsentPeriodicAmountAmount where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentConsentPeriodicAmountAmount")


-- | Payment consent periodic interval.
data PaymentConsentPeriodicInterval = PaymentConsentPeriodicInterval
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentConsentPeriodicInterval where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentConsentPeriodicInterval")
instance ToJSON PaymentConsentPeriodicInterval where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentConsentPeriodicInterval")


-- | Life span for the payment consent. After the &#x60;to&#x60; date the payment consent expires and can no longer be used for payment initiation.
newtype PaymentConsentValidDateTime = PaymentConsentValidDateTime { unPaymentConsentValidDateTime :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The optional address of the payment recipient.
newtype PaymentInitiationAddress = PaymentInitiationAddress { unPaymentInitiationAddress :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | PaymentInitiationConsent defines a payment initiation consent.
newtype PaymentInitiationConsent = PaymentInitiationConsent { unPaymentInitiationConsent :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Limitations that will be applied to payments initiated using the payment consent.
newtype PaymentInitiationConsentConstraints = PaymentInitiationConsentConstraints { unPaymentInitiationConsentConstraints :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | PaymentInitiationConsentCreateRequest defines the request schema for &#x60;/payment_initiation/consent/create&#x60;
data PaymentInitiationConsentCreateRequest = PaymentInitiationConsentCreateRequest
  { paymentInitiationConsentCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , paymentInitiationConsentCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , paymentInitiationConsentCreateRequestRecipientUnderscoreid :: Text -- ^ The ID of the recipient the payment consent is for. The created consent can be used to transfer funds to this recipient only.
  , paymentInitiationConsentCreateRequestReference :: Text -- ^ A reference for the payment consent. This must be an alphanumeric string with at most 18 characters and must not contain any special characters.
  , paymentInitiationConsentCreateRequestScopes :: [PaymentInitiationConsentScope] -- ^ An array of payment consent scopes.
  , paymentInitiationConsentCreateRequestConstraints :: PaymentInitiationConsentConstraints -- ^ 
  , paymentInitiationConsentCreateRequestOptions :: Maybe ExternalPaymentInitiationConsentOptions -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentInitiationConsentCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentInitiationConsentCreateRequest")
instance ToJSON PaymentInitiationConsentCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentInitiationConsentCreateRequest")


-- | PaymentInitiationConsentCreateResponse defines the response schema for &#x60;/payment_initiation/consent/create&#x60;
newtype PaymentInitiationConsentCreateResponse = PaymentInitiationConsentCreateResponse { unPaymentInitiationConsentCreateResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | PaymentInitiationConsentGetRequest defines the request schema for &#x60;/payment_initiation/consent/get&#x60;
data PaymentInitiationConsentGetRequest = PaymentInitiationConsentGetRequest
  { paymentInitiationConsentGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , paymentInitiationConsentGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , paymentInitiationConsentGetRequestConsentUnderscoreid :: Text -- ^ The `consent_id` returned from `/payment_initiation/consent/create`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentInitiationConsentGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentInitiationConsentGetRequest")
instance ToJSON PaymentInitiationConsentGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentInitiationConsentGetRequest")


-- | PaymentInitiationConsentGetResponse defines the response schema for &#x60;/payment_initation/consent/get&#x60;
newtype PaymentInitiationConsentGetResponse = PaymentInitiationConsentGetResponse { unPaymentInitiationConsentGetResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | PaymentInitiationConsentPaymentExecuteRequest defines the request schema for &#x60;/payment_initiation/consent/payment/execute&#x60;
data PaymentInitiationConsentPaymentExecuteRequest = PaymentInitiationConsentPaymentExecuteRequest
  { paymentInitiationConsentPaymentExecuteRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , paymentInitiationConsentPaymentExecuteRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , paymentInitiationConsentPaymentExecuteRequestConsentUnderscoreid :: Text -- ^ The consent ID.
  , paymentInitiationConsentPaymentExecuteRequestAmount :: PaymentAmount -- ^ 
  , paymentInitiationConsentPaymentExecuteRequestIdempotencyUnderscorekey :: Text -- ^ A random key provided by the client, per unique consent payment. Maximum of 128 characters.  The API supports idempotency for safely retrying requests without accidentally performing the same operation twice. If a request to execute a consent payment fails due to a network connection error, you can retry the request with the same idempotency key to guarantee that only a single payment is created. If the request was successfully processed, it will prevent any payment that uses the same idempotency key, and was received within 24 hours of the first request, from being processed.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentInitiationConsentPaymentExecuteRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentInitiationConsentPaymentExecuteRequest")
instance ToJSON PaymentInitiationConsentPaymentExecuteRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentInitiationConsentPaymentExecuteRequest")


-- | PaymentInitiationConsentPaymentExecuteResponse defines the response schema for &#x60;/payment_initiation/consent/payment/execute&#x60;
newtype PaymentInitiationConsentPaymentExecuteResponse = PaymentInitiationConsentPaymentExecuteResponse { unPaymentInitiationConsentPaymentExecuteResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | PaymentInitiationConsentRevokeRequest defines the request schema for &#x60;/payment_initiation/consent/revoke&#x60;
data PaymentInitiationConsentRevokeRequest = PaymentInitiationConsentRevokeRequest
  { paymentInitiationConsentRevokeRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , paymentInitiationConsentRevokeRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , paymentInitiationConsentRevokeRequestConsentUnderscoreid :: Text -- ^ The consent ID.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentInitiationConsentRevokeRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentInitiationConsentRevokeRequest")
instance ToJSON PaymentInitiationConsentRevokeRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentInitiationConsentRevokeRequest")


-- | PaymentInitiationConsentRevokeResponse defines the response schema for &#x60;/payment_initation/consent/revoke&#x60;
newtype PaymentInitiationConsentRevokeResponse = PaymentInitiationConsentRevokeResponse { unPaymentInitiationConsentRevokeResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Payment consent scope. Defines possible directions for payments made with the given consent.  &#x60;ME_TO_ME&#x60;: Allows moving money between accounts owned by the same user.  &#x60;EXTERNAL&#x60;: Allows initiating payments from the user&#39;s account to third parties.
data PaymentInitiationConsentScope = PaymentInitiationConsentScope
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentInitiationConsentScope where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentInitiationConsentScope")
instance ToJSON PaymentInitiationConsentScope where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentInitiationConsentScope")


-- | The status of the payment consent.  &#x60;UNAUTHORISED&#x60;: Consent created, but requires user authorisation.  &#x60;REJECTED&#x60;: Consent authorisation was rejected by the user and/or the bank.  &#x60;AUTHORISED&#x60;: Consent is active and ready to be used.  &#x60;REVOKED&#x60;: Consent has been revoked and can no longer be used.  &#x60;EXPIRED&#x60;: Consent is no longer valid.
data PaymentInitiationConsentStatus = PaymentInitiationConsentStatus
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentInitiationConsentStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentInitiationConsentStatus")
instance ToJSON PaymentInitiationConsentStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentInitiationConsentStatus")


-- | Metadata that captures what specific payment configurations an institution supports when making Payment Initiation requests.
newtype PaymentInitiationMetadata = PaymentInitiationMetadata { unPaymentInitiationMetadata :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An optional object used to restrict the accounts used for payments. If provided, the end user will be able to send payments only from the specified bank account.
data PaymentInitiationOptionalRestrictionBacs = PaymentInitiationOptionalRestrictionBacs
  { paymentInitiationOptionalRestrictionBacsAccount :: Maybe Text -- ^ The account number of the account. Maximum of 10 characters.
  , paymentInitiationOptionalRestrictionBacsSortUnderscorecode :: Maybe Text -- ^ The 6-character sort code of the account.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentInitiationOptionalRestrictionBacs where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentInitiationOptionalRestrictionBacs")
instance ToJSON PaymentInitiationOptionalRestrictionBacs where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentInitiationOptionalRestrictionBacs")


-- | PaymentInitiationPayment defines a payment initiation payment
newtype PaymentInitiationPayment = PaymentInitiationPayment { unPaymentInitiationPayment :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | PaymentInitiationPaymentCreateRequest defines the request schema for &#x60;/payment_initiation/payment/create&#x60;
data PaymentInitiationPaymentCreateRequest = PaymentInitiationPaymentCreateRequest
  { paymentInitiationPaymentCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , paymentInitiationPaymentCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , paymentInitiationPaymentCreateRequestRecipientUnderscoreid :: Text -- ^ The ID of the recipient the payment is for.
  , paymentInitiationPaymentCreateRequestReference :: Text -- ^ A reference for the payment. This must be an alphanumeric string with at most 18 characters and must not contain any special characters (since not all institutions support them).
  , paymentInitiationPaymentCreateRequestAmount :: PaymentAmount -- ^ 
  , paymentInitiationPaymentCreateRequestSchedule :: Maybe ExternalPaymentScheduleRequest -- ^ 
  , paymentInitiationPaymentCreateRequestOptions :: Maybe ExternalPaymentOptions -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentInitiationPaymentCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentInitiationPaymentCreateRequest")
instance ToJSON PaymentInitiationPaymentCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentInitiationPaymentCreateRequest")


-- | PaymentInitiationPaymentCreateResponse defines the response schema for &#x60;/payment_initiation/payment/create&#x60;
newtype PaymentInitiationPaymentCreateResponse = PaymentInitiationPaymentCreateResponse { unPaymentInitiationPaymentCreateResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | For a payment returned by this endpoint, there is only one possible value:  &#x60;PAYMENT_STATUS_INPUT_NEEDED&#x60;: The initial phase of the payment
data PaymentInitiationPaymentCreateStatus = PaymentInitiationPaymentCreateStatus
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentInitiationPaymentCreateStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentInitiationPaymentCreateStatus")
instance ToJSON PaymentInitiationPaymentCreateStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentInitiationPaymentCreateStatus")


-- | PaymentInitiationPaymentGetRequest defines the request schema for &#x60;/payment_initiation/payment/get&#x60;
data PaymentInitiationPaymentGetRequest = PaymentInitiationPaymentGetRequest
  { paymentInitiationPaymentGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , paymentInitiationPaymentGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , paymentInitiationPaymentGetRequestPaymentUnderscoreid :: Text -- ^ The `payment_id` returned from `/payment_initiation/payment/create`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentInitiationPaymentGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentInitiationPaymentGetRequest")
instance ToJSON PaymentInitiationPaymentGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentInitiationPaymentGetRequest")


-- | PaymentInitiationPaymentGetResponse defines the response schema for &#x60;/payment_initation/payment/get&#x60;
newtype PaymentInitiationPaymentGetResponse = PaymentInitiationPaymentGetResponse { unPaymentInitiationPaymentGetResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | PaymentInitiationPaymentListRequest defines the request schema for &#x60;/payment_initiation/payment/list&#x60;
data PaymentInitiationPaymentListRequest = PaymentInitiationPaymentListRequest
  { paymentInitiationPaymentListRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , paymentInitiationPaymentListRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , paymentInitiationPaymentListRequestCount :: Maybe Int -- ^ The maximum number of payments to return. If `count` is not specified, a maximum of 10 payments will be returned, beginning with the most recent payment before the cursor (if specified).
  , paymentInitiationPaymentListRequestCursor :: Maybe UTCTime -- ^ A string in RFC 3339 format (i.e. \"2019-12-06T22:35:49Z\"). Only payments created before the cursor will be returned.
  , paymentInitiationPaymentListRequestConsentUnderscoreid :: Maybe Text -- ^ The consent ID. If specified, only payments, executed using this consent, will be returned.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentInitiationPaymentListRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentInitiationPaymentListRequest")
instance ToJSON PaymentInitiationPaymentListRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentInitiationPaymentListRequest")


-- | PaymentInitiationPaymentListResponse defines the response schema for &#x60;/payment_initiation/payment/list&#x60;
newtype PaymentInitiationPaymentListResponse = PaymentInitiationPaymentListResponse { unPaymentInitiationPaymentListResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | PaymentInitiationPaymentReverseRequest defines the request schema for &#x60;/payment_initiation/payment/reverse&#x60;
data PaymentInitiationPaymentReverseRequest = PaymentInitiationPaymentReverseRequest
  { paymentInitiationPaymentReverseRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , paymentInitiationPaymentReverseRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , paymentInitiationPaymentReverseRequestPaymentUnderscoreid :: Text -- ^ The ID of the payment to reverse
  , paymentInitiationPaymentReverseRequestIdempotencyUnderscorekey :: Text -- ^ A random key provided by the client, per unique wallet transaction. Maximum of 128 characters.  The API supports idempotency for safely retrying requests without accidentally performing the same operation twice. If a request to execute a wallet transaction fails due to a network connection error, then after a minimum delay of one minute, you can retry the request with the same idempotency key to guarantee that only a single wallet transaction is created. If the request was successfully processed, it will prevent any transaction that uses the same idempotency key, and was received within 24 hours of the first request, from being processed.
  , paymentInitiationPaymentReverseRequestReference :: Text -- ^ A reference for the refund. This must be an alphanumeric string with at most 18 characters and must not contain any special characters or spaces.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentInitiationPaymentReverseRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentInitiationPaymentReverseRequest")
instance ToJSON PaymentInitiationPaymentReverseRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentInitiationPaymentReverseRequest")


-- | PaymentInitiationPaymentReverseResponse defines the response schema for &#x60;/payment_initation/payment/reverse&#x60;
newtype PaymentInitiationPaymentReverseResponse = PaymentInitiationPaymentReverseResponse { unPaymentInitiationPaymentReverseResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The status of the payment.  &#x60;PAYMENT_STATUS_INPUT_NEEDED&#x60;: This is the initial state of all payments. It indicates that the payment is waiting on user input to continue processing. A payment may re-enter this state later on if further input is needed.  &#x60;PAYMENT_STATUS_INITIATED&#x60;: The payment has been successfully authorised and accepted by the financial institution but has not been executed.  &#x60;PAYMENT_STATUS_INSUFFICIENT_FUNDS&#x60;: The payment has failed due to insufficient funds.  &#x60;PAYMENT_STATUS_FAILED&#x60;: The payment has failed to be initiated. This error is retryable once the root cause is resolved.  &#x60;PAYMENT_STATUS_BLOCKED&#x60;: The payment has been blocked. This is a retryable error.  &#x60;PAYMENT_STATUS_AUTHORISING&#x60;: The payment is currently being processed. The payment will automatically exit this state when the financial institution has authorised the transaction.  &#x60;PAYMENT_STATUS_CANCELLED&#x60;: The payment was cancelled during authorisation.  &#x60;PAYMENT_STATUS_EXECUTED&#x60;: The payment has been successfully initiated and is considered complete.  &#x60;PAYMENT_STATUS_ESTABLISHED&#x60;: Indicates that the standing order has been successfully established. This state is only used for standing orders.  &#x60;PAYMENT_STATUS_REJECTED&#x60;: The payment was rejected by the financial institution.  Deprecated: These statuses will be removed in a future release.  &#x60;PAYMENT_STATUS_UNKNOWN&#x60;: The payment status is unknown.  &#x60;PAYMENT_STATUS_PROCESSING&#x60;: The payment is currently being processed. The payment will automatically exit this state when processing is complete.  &#x60;PAYMENT_STATUS_COMPLETED&#x60;: Indicates that the standing order has been successfully established. This state is only used for standing orders.
data PaymentInitiationPaymentStatus = PaymentInitiationPaymentStatus
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentInitiationPaymentStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentInitiationPaymentStatus")
instance ToJSON PaymentInitiationPaymentStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentInitiationPaymentStatus")


-- | PaymentInitiationPaymentTokenCreateRequest defines the request schema for &#x60;/payment_initiation/payment/token/create&#x60;
data PaymentInitiationPaymentTokenCreateRequest = PaymentInitiationPaymentTokenCreateRequest
  { paymentInitiationPaymentTokenCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , paymentInitiationPaymentTokenCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , paymentInitiationPaymentTokenCreateRequestPaymentUnderscoreid :: Text -- ^ The `payment_id` returned from `/payment_initiation/payment/create`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentInitiationPaymentTokenCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentInitiationPaymentTokenCreateRequest")
instance ToJSON PaymentInitiationPaymentTokenCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentInitiationPaymentTokenCreateRequest")


-- | PaymentInitiationPaymentTokenCreateResponse defines the response schema for &#x60;/payment_initiation/payment/token/create&#x60;
newtype PaymentInitiationPaymentTokenCreateResponse = PaymentInitiationPaymentTokenCreateResponse { unPaymentInitiationPaymentTokenCreateResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | PaymentInitiationRecipient defines a payment initiation recipient
newtype PaymentInitiationRecipient = PaymentInitiationRecipient { unPaymentInitiationRecipient :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | PaymentInitiationRecipientCreateRequest defines the request schema for &#x60;/payment_initiation/recipient/create&#x60;
data PaymentInitiationRecipientCreateRequest = PaymentInitiationRecipientCreateRequest
  { paymentInitiationRecipientCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , paymentInitiationRecipientCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , paymentInitiationRecipientCreateRequestName :: Text -- ^ The name of the recipient
  , paymentInitiationRecipientCreateRequestIban :: Maybe Text -- ^ The International Bank Account Number (IBAN) for the recipient. If BACS data is not provided, an IBAN is required.
  , paymentInitiationRecipientCreateRequestBacs :: Maybe RecipientBACSNullable -- ^ 
  , paymentInitiationRecipientCreateRequestAddress :: Maybe PaymentInitiationAddress -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentInitiationRecipientCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentInitiationRecipientCreateRequest")
instance ToJSON PaymentInitiationRecipientCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentInitiationRecipientCreateRequest")


-- | PaymentInitiationRecipientCreateResponse defines the response schema for &#x60;/payment_initation/recipient/create&#x60;
newtype PaymentInitiationRecipientCreateResponse = PaymentInitiationRecipientCreateResponse { unPaymentInitiationRecipientCreateResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | PaymentInitiationRecipientGetRequest defines the request schema for &#x60;/payment_initiation/recipient/get&#x60;
data PaymentInitiationRecipientGetRequest = PaymentInitiationRecipientGetRequest
  { paymentInitiationRecipientGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , paymentInitiationRecipientGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , paymentInitiationRecipientGetRequestRecipientUnderscoreid :: Text -- ^ The ID of the recipient
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentInitiationRecipientGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentInitiationRecipientGetRequest")
instance ToJSON PaymentInitiationRecipientGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentInitiationRecipientGetRequest")


-- | PaymentInitiationRecipientGetResponse defines the response schema for &#x60;/payment_initiation/recipient/get&#x60;
newtype PaymentInitiationRecipientGetResponse = PaymentInitiationRecipientGetResponse { unPaymentInitiationRecipientGetResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | 
data PaymentInitiationRecipientGetResponseAllOf = PaymentInitiationRecipientGetResponseAllOf
  { paymentInitiationRecipientGetResponseAllOfRequestUnderscoreid :: Maybe Text -- ^ A unique identifier for the request, which can be used for troubleshooting. This identifier, like all Plaid identifiers, is case sensitive.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentInitiationRecipientGetResponseAllOf where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentInitiationRecipientGetResponseAllOf")
instance ToJSON PaymentInitiationRecipientGetResponseAllOf where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentInitiationRecipientGetResponseAllOf")


-- | PaymentInitiationRecipientListRequest defines the request schema for &#x60;/payment_initiation/recipient/list&#x60;
data PaymentInitiationRecipientListRequest = PaymentInitiationRecipientListRequest
  { paymentInitiationRecipientListRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , paymentInitiationRecipientListRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentInitiationRecipientListRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentInitiationRecipientListRequest")
instance ToJSON PaymentInitiationRecipientListRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentInitiationRecipientListRequest")


-- | PaymentInitiationRecipientListResponse defines the response schema for &#x60;/payment_initiation/recipient/list&#x60;
newtype PaymentInitiationRecipientListResponse = PaymentInitiationRecipientListResponse { unPaymentInitiationRecipientListResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The status of the refund.  &#x60;PROCESSING&#x60;: The refund is currently being processed. The refund will automatically exit this state when processing is complete.  &#x60;INITIATED&#x60;: The refund has been successfully initiated.  &#x60;EXECUTED&#x60;: Indicates that the refund has been successfully executed.  &#x60;FAILED&#x60;: The refund has failed to be executed. This error is retryable once the root cause is resolved.
data PaymentInitiationRefundStatus = PaymentInitiationRefundStatus
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentInitiationRefundStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentInitiationRefundStatus")
instance ToJSON PaymentInitiationRefundStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentInitiationRefundStatus")


-- | Metadata specifically related to valid Payment Initiation standing order configurations for the institution.
newtype PaymentInitiationStandingOrderMetadata = PaymentInitiationStandingOrderMetadata { unPaymentInitiationStandingOrderMetadata :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Transaction information specific to inter-bank transfers. If the transaction was not an inter-bank transfer, all fields will be &#x60;null&#x60;.  If the &#x60;transactions&#x60; object was returned by a Transactions endpoint such as &#x60;/transactions/get&#x60;, the &#x60;payment_meta&#x60; key will always appear, but no data elements are guaranteed. If the &#x60;transactions&#x60; object was returned by an Assets endpoint such as &#x60;/asset_report/get/&#x60; or &#x60;/asset_report/pdf/get&#x60;, this field will only appear in an Asset Report with Insights.
newtype PaymentMeta = PaymentMeta { unPaymentMeta :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The frequency interval of the payment.
data PaymentScheduleInterval = PaymentScheduleInterval
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentScheduleInterval where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentScheduleInterval")
instance ToJSON PaymentScheduleInterval where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentScheduleInterval")


-- | Payment scheme. If not specified - the default in the region will be used (e.g. &#x60;SEPA_CREDIT_TRANSFER&#x60; for EU). Using unsupported values will result in a failed payment.  &#x60;FASTER_PAYMENTS&#x60;: Enables payments to move quickly between UK bank accounts. Default value in the UK.  &#x60;SEPA_CREDIT_TRANSFER&#x60;: The standard payment to a beneficiary within the SEPA area.  &#x60;SEPA_CREDIT_TRANSFER_INSTANT&#x60;: Instant payment within the SEPA area. May involve additional fees and may not be available at some banks.
data PaymentScheme = PaymentScheme
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaymentScheme where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paymentScheme")
instance ToJSON PaymentScheme where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paymentScheme")


-- | Fired when the status of a payment has changed.
newtype PaymentStatusUpdateWebhook = PaymentStatusUpdateWebhook { unPaymentStatusUpdateWebhook :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object containing account level data.
newtype PayrollIncomeAccountData = PayrollIncomeAccountData { unPayrollIncomeAccountData :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object representing payroll data.
newtype PayrollIncomeObject = PayrollIncomeObject { unPayrollIncomeObject :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object representing the rate at which an individual is paid.
newtype PayrollIncomeRateOfPay = PayrollIncomeRateOfPay { unPayrollIncomeRateOfPay :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object containing information about the payroll item.
data PayrollItem = PayrollItem
  { payrollItemItemUnderscoreid :: Text -- ^ The `item_id` of the Item associated with this webhook, warning, or error
  , payrollItemAccounts :: [PayrollIncomeAccountData] -- ^ 
  , payrollItemPayrollUnderscoreincome :: [PayrollIncomeObject] -- ^ 
  , payrollItemStatus :: PayrollItemStatus -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PayrollItem where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "payrollItem")
instance ToJSON PayrollItem where
  toJSON = genericToJSON (removeFieldLabelPrefix False "payrollItem")


-- | Details about the status of the payroll item.
newtype PayrollItemStatus = PayrollItemStatus { unPayrollItemStatus :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Object containing fraud risk data pertaining to the item linked as part of the verification
newtype PayrollRiskSignalsItem = PayrollRiskSignalsItem { unPayrollRiskSignalsItem :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object representing data extracted from the end user&#39;s paystub.
newtype Paystub = Paystub { unPaystub :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Address on the paystub
newtype PaystubAddress = PaystubAddress { unPaystubAddress :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Deduction on the paystub
newtype PaystubDeduction = PaystubDeduction { unPaystubDeduction :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object representing details that can be found on the paystub.
newtype PaystubDetails = PaystubDetails { unPaystubDetails :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Information about the employer on the paystub
newtype PaystubEmployer = PaystubEmployer { unPaystubEmployer :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object representing data from a paystub.
data PaystubOverride = PaystubOverride
  { paystubOverrideEmployer :: Maybe PaystubOverrideEmployer -- ^ 
  , paystubOverrideEmployee :: Maybe PaystubOverrideEmployee -- ^ 
  , paystubOverrideIncomeUnderscorebreakdown :: Maybe [IncomeBreakdown] -- ^ 
  , paystubOverridePayUnderscoreperiodUnderscoredetails :: Maybe PayPeriodDetails -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaystubOverride where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paystubOverride")
instance ToJSON PaystubOverride where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paystubOverride")


-- | The employee on the paystub.
data PaystubOverrideEmployee = PaystubOverrideEmployee
  { paystubOverrideEmployeeName :: Maybe Text -- ^ The name of the employee.
  , paystubOverrideEmployeeAddress :: Maybe PaystubOverrideEmployeeAddress -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaystubOverrideEmployee where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paystubOverrideEmployee")
instance ToJSON PaystubOverrideEmployee where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paystubOverrideEmployee")


-- | The address of the employee.
data PaystubOverrideEmployeeAddress = PaystubOverrideEmployeeAddress
  { paystubOverrideEmployeeAddressCity :: Maybe Text -- ^ The full city name.
  , paystubOverrideEmployeeAddressRegion :: Maybe Text -- ^ The region or state Example: `\"NC\"`
  , paystubOverrideEmployeeAddressStreet :: Maybe Text -- ^ The full street address Example: `\"564 Main Street, APT 15\"`
  , paystubOverrideEmployeeAddressPostalUnderscorecode :: Maybe Text -- ^ 5 digit postal code.
  , paystubOverrideEmployeeAddressCountry :: Maybe Text -- ^ The country of the address.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaystubOverrideEmployeeAddress where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paystubOverrideEmployeeAddress")
instance ToJSON PaystubOverrideEmployeeAddress where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paystubOverrideEmployeeAddress")


-- | The employer on the paystub.
data PaystubOverrideEmployer = PaystubOverrideEmployer
  { paystubOverrideEmployerName :: Maybe Text -- ^ The name of the employer.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaystubOverrideEmployer where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paystubOverrideEmployer")
instance ToJSON PaystubOverrideEmployer where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paystubOverrideEmployer")


-- | The frequency at which the employee is paid. Possible values: &#x60;MONTHLY&#x60;, &#x60;BI-WEEKLY&#x60;, &#x60;WEEKLY&#x60;, &#x60;SEMI-MONTHLY&#x60;.
data PaystubPayFrequency = PaystubPayFrequency
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaystubPayFrequency where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paystubPayFrequency")
instance ToJSON PaystubPayFrequency where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paystubPayFrequency")


-- | An object containing details on the paystub&#39;s verification status. This object will only be populated if the [&#x60;income_verification.access_tokens&#x60;](/docs/api/tokens/#link-token-create-request-income-verification-access-tokens) parameter was provided during the &#x60;/link/token/create&#x60; call or if a problem was detected with the information supplied by the user; otherwise it will be &#x60;null&#x60;.
newtype PaystubVerification = PaystubVerification { unPaystubVerification :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Derived verification status.
data PaystubVerificationStatus = PaystubVerificationStatus
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PaystubVerificationStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "paystubVerificationStatus")
instance ToJSON PaystubVerificationStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "paystubVerificationStatus")


-- | The amount of income earned year to date, as based on paystub data.
newtype PaystubYTDDetails = PaystubYTDDetails { unPaystubYTDDetails :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Fired when an Item’s access consent is expiring in 7 days. Some Items have explicit expiration times and we try to relay this when possible to reduce service disruption. This can be resolved by having the user go through Link’s update mode.
newtype PendingExpirationWebhook = PendingExpirationWebhook { unPendingExpirationWebhook :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Information describing the intent of the transaction. Most relevant for personal finance use cases, but not limited to such use cases.  See the [&#x60;taxonomy csv file&#x60;](https://plaid.com/documents/transactions-personal-finance-category-taxonomy.csv) for a full list of personal finance categories.
newtype PersonalFinanceCategory = PersonalFinanceCategory { unPersonalFinanceCategory :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | A phone number
newtype PhoneNumber = PhoneNumber { unPhoneNumber :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An enum indicating whether a phone number is a phone line or a fax line.
data PhoneType = PhoneType
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PhoneType where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "phoneType")
instance ToJSON PhoneType where
  toJSON = genericToJSON (removeFieldLabelPrefix False "phoneType")


-- | The type of identity document detected in the images provided. Will always be one of the following values:    &#x60;drivers_license&#x60; - A driver&#39;s license for the associated country    &#x60;id_card&#x60; - A general national identification card, distinct from driver&#39;s licenses    &#x60;passport&#x60; - A passport for the associated country    &#x60;residence_permit_card&#x60; - An identity document permitting a foreign citizen to &lt;em&gt;temporarily&lt;/em&gt; reside in the associated country    &#x60;resident_card&#x60; - An identity document permitting a foreign citizen to &lt;em&gt;permanently&lt;/em&gt; reside in the associated country  Note: This value may be different from the ID type that the user selects within Link. For example, if they select \&quot;Driver&#39;s License\&quot; but then submit a picture of a passport, this field will say &#x60;passport&#x60;
data PhysicalDocumentCategory = PhysicalDocumentCategory
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PhysicalDocumentCategory where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "physicalDocumentCategory")
instance ToJSON PhysicalDocumentCategory where
  toJSON = genericToJSON (removeFieldLabelPrefix False "physicalDocumentCategory")


-- | Data extracted from a user-submitted document.
data PhysicalDocumentExtractedData = PhysicalDocumentExtractedData
  { physicalDocumentExtractedDataIdUnderscorenumber :: Text -- ^ Alpha-numeric ID number extracted via OCR from the user's document image.
  , physicalDocumentExtractedDataCategory :: PhysicalDocumentCategory -- ^ 
  , physicalDocumentExtractedDataExpirationUnderscoredate :: Day -- ^ 
  , physicalDocumentExtractedDataIssuingUnderscorecountry :: Text -- ^ Valid, capitalized, two-letter ISO code representing the country of this object. Must be in ISO 3166-1 alpha-2 form.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PhysicalDocumentExtractedData where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "physicalDocumentExtractedData")
instance ToJSON PhysicalDocumentExtractedData where
  toJSON = genericToJSON (removeFieldLabelPrefix False "physicalDocumentExtractedData")


-- | Analysis of the data extracted from the submitted document.
data PhysicalDocumentExtractedDataAnalysis = PhysicalDocumentExtractedDataAnalysis
  { physicalDocumentExtractedDataAnalysisName :: DocumentNameMatchCode -- ^ 
  , physicalDocumentExtractedDataAnalysisDateUnderscoreofUnderscorebirth :: DocumentDateOfBirthMatchCode -- ^ 
  , physicalDocumentExtractedDataAnalysisExpirationUnderscoredate :: ExpirationDate -- ^ 
  , physicalDocumentExtractedDataAnalysisIssuingUnderscorecountry :: IssuingCountry -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PhysicalDocumentExtractedDataAnalysis where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "physicalDocumentExtractedDataAnalysis")
instance ToJSON PhysicalDocumentExtractedDataAnalysis where
  toJSON = genericToJSON (removeFieldLabelPrefix False "physicalDocumentExtractedDataAnalysis")


-- | URLs for downloading original and cropped images for this document submission. The URLs are designed to only allow downloading, not hot linking, so the URL will only serve the document image for 60 seconds before expiring. The expiration time is 60 seconds after the &#x60;GET&#x60; request for the associated Identity Verification attempt. A new expiring URL is generated with each request, so you can always rerequest the Identity Verification attempt if one of your URLs expires.
data PhysicalDocumentImages = PhysicalDocumentImages
  { physicalDocumentImagesOriginalUnderscorefront :: Text -- ^ Temporary URL that expires after 60 seconds for downloading the uncropped original image of the front of the document.
  , physicalDocumentImagesOriginalUnderscoreback :: Text -- ^ Temporary URL that expires after 60 seconds for downloading the original image of the back of the document. Might be null if the back of the document was not collected.
  , physicalDocumentImagesCroppedUnderscorefront :: Text -- ^ Temporary URL that expires after 60 seconds for downloading a cropped image containing just the front of the document.
  , physicalDocumentImagesCroppedUnderscoreback :: Text -- ^ Temporary URL that expires after 60 seconds for downloading a cropped image containing just the back of the document. Might be null if the back of the document was not collected.
  , physicalDocumentImagesFace :: Text -- ^ Temporary URL that expires after 60 seconds for downloading a crop of just the user's face from the document image. Might be null if the document does not contain a face photo.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PhysicalDocumentImages where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "physicalDocumentImages")
instance ToJSON PhysicalDocumentImages where
  toJSON = genericToJSON (removeFieldLabelPrefix False "physicalDocumentImages")


-- | We use standard HTTP response codes for success and failure notifications, and our errors are further classified by &#x60;error_type&#x60;. In general, 200 HTTP codes correspond to success, 40X codes are for developer- or user-related failures, and 50X codes are for Plaid-related issues.  Error fields will be &#x60;null&#x60; if no error has occurred.
data PlaidError = PlaidError
  { plaidErrorErrorUnderscoretype :: Text -- ^ A broad categorization of the error. Safe for programmatic use.
  , plaidErrorErrorUnderscorecode :: Text -- ^ The particular error code. Safe for programmatic use.
  , plaidErrorErrorUnderscoremessage :: Text -- ^ A developer-friendly representation of the error code. This may change over time and is not safe for programmatic use.
  , plaidErrorDisplayUnderscoremessage :: Text -- ^ A user-friendly representation of the error code. `null` if the error is not related to user action.  This may change over time and is not safe for programmatic use.
  , plaidErrorRequestUnderscoreid :: Maybe Text -- ^ A unique ID identifying the request, to be used for troubleshooting purposes. This field will be omitted in errors provided by webhooks.
  , plaidErrorCauses :: Maybe [Value] -- ^ In the Assets product, a request can pertain to more than one Item. If an error is returned for such a request, `causes` will return an array of errors containing a breakdown of these errors on the individual Item level, if any can be identified.  `causes` will only be provided for the `error_type` `ASSET_REPORT_ERROR`. `causes` will also not be populated inside an error nested within a `warning` object.
  , plaidErrorStatus :: Maybe Double -- ^ The HTTP status code associated with the error. This will only be returned in the response body when the error information is provided via a webhook.
  , plaidErrorDocumentationUnderscoreurl :: Maybe Text -- ^ The URL of a Plaid documentation page with more information about the error
  , plaidErrorSuggestedUnderscoreaction :: Maybe Text -- ^ Suggested steps for resolving the error
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PlaidError where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "plaidError")
instance ToJSON PlaidError where
  toJSON = genericToJSON (removeFieldLabelPrefix False "plaidError")


-- | An object containing a set of ids related to an employee
newtype PlatformIds = PlatformIds { unPlatformIds :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | ProcessorApexProcessorTokenCreateRequest defines the request schema for &#x60;/processor/apex/processor_token/create&#x60;
data ProcessorApexProcessorTokenCreateRequest = ProcessorApexProcessorTokenCreateRequest
  { processorApexProcessorTokenCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , processorApexProcessorTokenCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , processorApexProcessorTokenCreateRequestAccessUnderscoretoken :: Text -- ^ The access token associated with the Item data is being requested for.
  , processorApexProcessorTokenCreateRequestAccountUnderscoreid :: Text -- ^ The `account_id` value obtained from the `onSuccess` callback in Link
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ProcessorApexProcessorTokenCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "processorApexProcessorTokenCreateRequest")
instance ToJSON ProcessorApexProcessorTokenCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "processorApexProcessorTokenCreateRequest")


-- | ProcessorAuthGetRequest defines the request schema for &#x60;/processor/auth/get&#x60;
data ProcessorAuthGetRequest = ProcessorAuthGetRequest
  { processorAuthGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , processorAuthGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , processorAuthGetRequestProcessorUnderscoretoken :: Text -- ^ The processor token obtained from the Plaid integration partner. Processor tokens are in the format: `processor-<environment>-<identifier>`
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ProcessorAuthGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "processorAuthGetRequest")
instance ToJSON ProcessorAuthGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "processorAuthGetRequest")


-- | ProcessorAuthGetResponse defines the response schema for &#x60;/processor/auth/get&#x60;
newtype ProcessorAuthGetResponse = ProcessorAuthGetResponse { unProcessorAuthGetResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | ProcessorBalanceGetRequest defines the request schema for &#x60;/processor/balance/get&#x60;
data ProcessorBalanceGetRequest = ProcessorBalanceGetRequest
  { processorBalanceGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , processorBalanceGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , processorBalanceGetRequestProcessorUnderscoretoken :: Text -- ^ The processor token obtained from the Plaid integration partner. Processor tokens are in the format: `processor-<environment>-<identifier>`
  , processorBalanceGetRequestOptions :: Maybe ProcessorBalanceGetRequestOptions -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ProcessorBalanceGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "processorBalanceGetRequest")
instance ToJSON ProcessorBalanceGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "processorBalanceGetRequest")


-- | An optional object to filter &#x60;/processor/balance/get&#x60; results.
data ProcessorBalanceGetRequestOptions = ProcessorBalanceGetRequestOptions
  { processorBalanceGetRequestOptionsMinUnderscorelastUnderscoreupdatedUnderscoredatetime :: Maybe UTCTime -- ^ Timestamp in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format (`YYYY-MM-DDTHH:mm:ssZ`) indicating the oldest acceptable balance when making a request to `/accounts/balance/get`.  If the balance that is pulled for `ins_128026` (Capital One) is older than the given timestamp, an `INVALID_REQUEST` error with the code of `LAST_UPDATED_DATETIME_OUT_OF_RANGE` will be returned with the most recent timestamp for the requested account contained in the response.  This field is only used when the institution is `ins_128026` (Capital One), in which case a value must be provided or an `INVALID_REQUEST` error with the code of `INVALID_FIELD` will be returned. For all other institutions, this field is ignored.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ProcessorBalanceGetRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "processorBalanceGetRequestOptions")
instance ToJSON ProcessorBalanceGetRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "processorBalanceGetRequestOptions")


-- | ProcessorBalanceGetResponse defines the response schema for &#x60;/processor/balance/get&#x60;
newtype ProcessorBalanceGetResponse = ProcessorBalanceGetResponse { unProcessorBalanceGetResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Defines the request schema for &#x60;/processor/bank_transfer/create&#x60;
data ProcessorBankTransferCreateRequest = ProcessorBankTransferCreateRequest
  { processorBankTransferCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , processorBankTransferCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , processorBankTransferCreateRequestIdempotencyUnderscorekey :: Text -- ^ A random key provided by the client, per unique bank transfer. Maximum of 50 characters.  The API supports idempotency for safely retrying requests without accidentally performing the same operation twice. For example, if a request to create a bank transfer fails due to a network connection error, you can retry the request with the same idempotency key to guarantee that only a single bank transfer is created.
  , processorBankTransferCreateRequestProcessorUnderscoretoken :: Text -- ^ The processor token obtained from the Plaid integration partner. Processor tokens are in the format: `processor-<environment>-<identifier>`
  , processorBankTransferCreateRequestType :: BankTransferType -- ^ 
  , processorBankTransferCreateRequestNetwork :: BankTransferNetwork -- ^ 
  , processorBankTransferCreateRequestAmount :: Text -- ^ The amount of the bank transfer (decimal string with two digits of precision e.g. \"10.00\").
  , processorBankTransferCreateRequestIsoUnderscorecurrencyUnderscorecode :: Text -- ^ The currency of the transfer amount – should be set to \"USD\".
  , processorBankTransferCreateRequestDescription :: Text -- ^ The transfer description. Maximum of 10 characters.
  , processorBankTransferCreateRequestAchUnderscoreclass :: Maybe ACHClass -- ^ 
  , processorBankTransferCreateRequestUser :: BankTransferUser -- ^ 
  , processorBankTransferCreateRequestCustomUnderscoretag :: Maybe Text -- ^ An arbitrary string provided by the client for storage with the bank transfer. May be up to 100 characters.
  , processorBankTransferCreateRequestMetadata :: Maybe (Map.Map String Text) -- ^ The Metadata object is a mapping of client-provided string fields to any string value. The following limitations apply: - The JSON values must be Strings (no nested JSON objects allowed) - Only ASCII characters may be used - Maximum of 50 key/value pairs - Maximum key length of 40 characters - Maximum value length of 500 characters 
  , processorBankTransferCreateRequestOriginationUnderscoreaccountUnderscoreid :: Maybe Text -- ^ Plaid’s unique identifier for the origination account for this transfer. If you have more than one origination account, this value must be specified.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ProcessorBankTransferCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "processorBankTransferCreateRequest")
instance ToJSON ProcessorBankTransferCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "processorBankTransferCreateRequest")


-- | Defines the response schema for &#x60;/processor/bank_transfer/create&#x60;
newtype ProcessorBankTransferCreateResponse = ProcessorBankTransferCreateResponse { unProcessorBankTransferCreateResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | ProcessorIdentityGetRequest defines the request schema for &#x60;/processor/identity/get&#x60;
data ProcessorIdentityGetRequest = ProcessorIdentityGetRequest
  { processorIdentityGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , processorIdentityGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , processorIdentityGetRequestProcessorUnderscoretoken :: Text -- ^ The processor token obtained from the Plaid integration partner. Processor tokens are in the format: `processor-<environment>-<identifier>`
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ProcessorIdentityGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "processorIdentityGetRequest")
instance ToJSON ProcessorIdentityGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "processorIdentityGetRequest")


-- | ProcessorIdentityGetResponse defines the response schema for &#x60;/processor/identity/get&#x60;
newtype ProcessorIdentityGetResponse = ProcessorIdentityGetResponse { unProcessorIdentityGetResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object containing identifying numbers used for making electronic transfers to and from the &#x60;account&#x60;. The identifying number type (ACH, EFT, IBAN, or BACS) used will depend on the country of the account. An account may have more than one number type. If a particular identifying number type is not used by the &#x60;account&#x60; for which auth data has been requested, a null value will be returned.
newtype ProcessorNumber = ProcessorNumber { unProcessorNumber :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | ProcessorStripeBankAccountTokenCreateRequest defines the request schema for &#x60;/processor/stripe/bank_account/create&#x60;
data ProcessorStripeBankAccountTokenCreateRequest = ProcessorStripeBankAccountTokenCreateRequest
  { processorStripeBankAccountTokenCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , processorStripeBankAccountTokenCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , processorStripeBankAccountTokenCreateRequestAccessUnderscoretoken :: Text -- ^ The access token associated with the Item data is being requested for.
  , processorStripeBankAccountTokenCreateRequestAccountUnderscoreid :: Text -- ^ The `account_id` value obtained from the `onSuccess` callback in Link
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ProcessorStripeBankAccountTokenCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "processorStripeBankAccountTokenCreateRequest")
instance ToJSON ProcessorStripeBankAccountTokenCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "processorStripeBankAccountTokenCreateRequest")


-- | ProcessorStripeBankAccountTokenCreateResponse defines the response schema for &#x60;/processor/stripe/bank_account/create&#x60;
newtype ProcessorStripeBankAccountTokenCreateResponse = ProcessorStripeBankAccountTokenCreateResponse { unProcessorStripeBankAccountTokenCreateResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | ProcessorTokenCreateRequest defines the request schema for &#x60;/processor/token/create&#x60;
data ProcessorTokenCreateRequest = ProcessorTokenCreateRequest
  { processorTokenCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , processorTokenCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , processorTokenCreateRequestAccessUnderscoretoken :: Text -- ^ The access token associated with the Item data is being requested for.
  , processorTokenCreateRequestAccountUnderscoreid :: Text -- ^ The `account_id` value obtained from the `onSuccess` callback in Link
  , processorTokenCreateRequestProcessor :: Text -- ^ The processor you are integrating with.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ProcessorTokenCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "processorTokenCreateRequest")
instance ToJSON ProcessorTokenCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "processorTokenCreateRequest")


-- | ProcessorTokenCreateResponse defines the response schema for &#x60;/processor/token/create&#x60; and &#x60;/processor/apex/processor_token/create&#x60;
newtype ProcessorTokenCreateResponse = ProcessorTokenCreateResponse { unProcessorTokenCreateResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The product access being requested. Used to or disallow product access across all accounts. If unset, defaults to all products allowed.
newtype ProductAccess = ProductAccess { unProductAccess :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | A representation of the status health of a request type. Auth requests, Balance requests, Identity requests, Investments requests, Liabilities requests, Transactions updates, Investments updates, Liabilities updates, and Item logins each have their own status object.
newtype ProductStatus = ProductStatus { unProductStatus :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | A detailed breakdown of the institution&#39;s performance for a request type. The values for &#x60;success&#x60;, &#x60;error_plaid&#x60;, and &#x60;error_institution&#x60; sum to 1.
newtype ProductStatusBreakdown = ProductStatusBreakdown { unProductStatusBreakdown :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | A list of products that an institution can support. All Items must be initialized with at least one product. The Balance product is always available and does not need to be specified during initialization.
data Products = Products
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON Products where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "products")
instance ToJSON Products where
  toJSON = genericToJSON (removeFieldLabelPrefix False "products")


-- | The valid name matching sensitivity configurations for a screening program. Note that while certain matching techniques may be more prevalent on less strict settings, all matching algorithms are enabled for every sensitivity.  &#x60;coarse&#x60; - See more potential matches. This sensitivity will see more broad phonetic matches across alphabets that make missing a potential hit very unlikely. This setting is noisier and will require more manual review.  &#x60;balanced&#x60; - A good default for most companies. This sensitivity is balanced to show high quality hits with reduced noise.  &#x60;strict&#x60; - Aggressive false positive reduction. This sensitivity will require names to be more similar than &#x60;coarse&#x60; and &#x60;balanced&#x60; settings, relying less on phonetics, while still accounting for character transpositions, missing tokens, and other common permutations.  &#x60;exact&#x60; - Matches must be nearly exact. This sensitivity will only show hits with exact or nearly exact name matches with only basic correction such as extraneous symbols and capitalization. This setting is generally not recommended unless you have a very specific use case.
data ProgramNameSensitivity = ProgramNameSensitivity
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ProgramNameSensitivity where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "programNameSensitivity")
instance ToJSON ProgramNameSensitivity where
  toJSON = genericToJSON (removeFieldLabelPrefix False "programNameSensitivity")


-- | The employee&#39;s estimated annual salary, as derived from information reported on the paystub.
data ProjectedIncomeSummaryFieldNumber = ProjectedIncomeSummaryFieldNumber
  { projectedIncomeSummaryFieldNumberValue :: Double -- ^ The value of the field.
  , projectedIncomeSummaryFieldNumberVerificationUnderscorestatus :: VerificationStatus -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ProjectedIncomeSummaryFieldNumber where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "projectedIncomeSummaryFieldNumber")
instance ToJSON ProjectedIncomeSummaryFieldNumber where
  toJSON = genericToJSON (removeFieldLabelPrefix False "projectedIncomeSummaryFieldNumber")


-- | The request was flagged by Plaid&#39;s fraud system, and requires additional verification to ensure they are not a bot.
newtype RecaptchaRequiredError = RecaptchaRequiredError { unRecaptchaRequiredError :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object containing a BACS account number and sort code. If an IBAN is not provided or if you need to accept domestic GBP-denominated payments, BACS data is required.
newtype RecipientBACS = RecipientBACS { unRecipientBACS :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object containing a BACS account number and sort code. If an IBAN is not provided or if this recipient needs to accept domestic GBP-denominated payments, BACS data is required.
data RecipientBACSNullable = RecipientBACSNullable
  { recipientBACSNullableAccount :: Maybe Text -- ^ The account number of the account. Maximum of 10 characters.
  , recipientBACSNullableSortUnderscorecode :: Maybe Text -- ^ The 6-character sort code of the account.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RecipientBACSNullable where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "recipientBACSNullable")
instance ToJSON RecipientBACSNullable where
  toJSON = genericToJSON (removeFieldLabelPrefix False "recipientBACSNullable")


-- | Describes the frequency of the transaction stream.  &#x60;WEEKLY&#x60;: Assigned to a transaction stream that occurs approximately every week.  &#x60;BIWEEKLY&#x60;: Assigned to a transaction stream that occurs approximately every 2 weeks.  &#x60;SEMI_MONTHLY&#x60;: Assigned to a transaction stream that occurs approximately twice per month. This frequency is typically seen for inflow transaction streams.  &#x60;MONTHLY&#x60;: Assigned to a transaction stream that occurs approximately every month.  &#x60;UNKNOWN&#x60;: Assigned to a transaction stream that does not fit any of the pre-defined frequencies.
data RecurringTransactionFrequency = RecurringTransactionFrequency
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RecurringTransactionFrequency where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "recurringTransactionFrequency")
instance ToJSON RecurringTransactionFrequency where
  toJSON = genericToJSON (removeFieldLabelPrefix False "recurringTransactionFrequency")


-- | The webhook code indicating which endpoint was called. It can be one of &#x60;GET_CALLED&#x60;, &#x60;REFRESH_CALLED&#x60; or &#x60;AUDIT_COPY_CREATE_CALLED&#x60;.
data RelayEvent = RelayEvent
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RelayEvent where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "relayEvent")
instance ToJSON RelayEvent where
  toJSON = genericToJSON (removeFieldLabelPrefix False "relayEvent")


-- | A representation of a removed transaction
data RemovedTransaction = RemovedTransaction
  { removedTransactionTransactionUnderscoreid :: Maybe Text -- ^ The ID of the removed transaction.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RemovedTransaction where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "removedTransaction")
instance ToJSON RemovedTransaction where
  toJSON = genericToJSON (removeFieldLabelPrefix False "removedTransaction")


-- | ReportToken is a representation of a token that has a &#x60;report_type&#x60; field that can be one of &#x60;assets&#x60; or &#x60;income&#x60; and a &#x60;token&#x60; field which is the associated token with the &#x60;report_type&#x60;. The &#x60;token&#x60; can be an Asset Report token or Income Report token.
newtype ReportToken = ReportToken { unReportToken :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Object containing metadata for the document
newtype RiskSignalDocumentReference = RiskSignalDocumentReference { unRiskSignalDocumentReference :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Defines the request schema for &#x60;/sandbox/bank_transfer/fire_webhook&#x60;
data SandboxBankTransferFireWebhookRequest = SandboxBankTransferFireWebhookRequest
  { sandboxBankTransferFireWebhookRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , sandboxBankTransferFireWebhookRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , sandboxBankTransferFireWebhookRequestWebhook :: Text -- ^ The URL to which the webhook should be sent.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SandboxBankTransferFireWebhookRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "sandboxBankTransferFireWebhookRequest")
instance ToJSON SandboxBankTransferFireWebhookRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "sandboxBankTransferFireWebhookRequest")


-- | Defines the response schema for &#x60;/sandbox/bank_transfer/fire_webhook&#x60;
newtype SandboxBankTransferFireWebhookResponse = SandboxBankTransferFireWebhookResponse { unSandboxBankTransferFireWebhookResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Defines the request schema for &#x60;/sandbox/bank_transfer/simulate&#x60;
data SandboxBankTransferSimulateRequest = SandboxBankTransferSimulateRequest
  { sandboxBankTransferSimulateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , sandboxBankTransferSimulateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , sandboxBankTransferSimulateRequestBankUnderscoretransferUnderscoreid :: Text -- ^ Plaid’s unique identifier for a bank transfer.
  , sandboxBankTransferSimulateRequestEventUnderscoretype :: Text -- ^ The asynchronous event to be simulated. May be: `posted`, `failed`, or `reversed`.  An error will be returned if the event type is incompatible with the current transfer status. Compatible status --> event type transitions include:  `pending` --> `failed`  `pending` --> `posted`  `posted` --> `reversed` 
  , sandboxBankTransferSimulateRequestFailureUnderscorereason :: Maybe BankTransferFailure -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SandboxBankTransferSimulateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "sandboxBankTransferSimulateRequest")
instance ToJSON SandboxBankTransferSimulateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "sandboxBankTransferSimulateRequest")


-- | Defines the response schema for &#x60;/sandbox/bank_transfer/simulate&#x60;
newtype SandboxBankTransferSimulateResponse = SandboxBankTransferSimulateResponse { unSandboxBankTransferSimulateResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | SandboxIncomeFireWebhookRequest defines the request schema for &#x60;/sandbox/income/fire_webhook&#x60;
data SandboxIncomeFireWebhookRequest = SandboxIncomeFireWebhookRequest
  { sandboxIncomeFireWebhookRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , sandboxIncomeFireWebhookRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , sandboxIncomeFireWebhookRequestItemUnderscoreid :: Text -- ^ The Item ID associated with the verification.
  , sandboxIncomeFireWebhookRequestUserUnderscoreid :: Maybe Text -- ^ The Plaid `user_id` of the User associated with this webhook, warning, or error.
  , sandboxIncomeFireWebhookRequestWebhook :: Text -- ^ The URL to which the webhook should be sent.
  , sandboxIncomeFireWebhookRequestVerificationUnderscorestatus :: Text -- ^ `VERIFICATION_STATUS_PROCESSING_COMPLETE`: The income verification status processing has completed. If the user uploaded multiple documents, this webhook will fire when all documents have finished processing. Call the `/income/verification/paystubs/get` endpoint and check the document metadata to see which documents were successfully parsed.  `VERIFICATION_STATUS_PROCESSING_FAILED`: A failure occurred when attempting to process the verification documentation.  `VERIFICATION_STATUS_PENDING_APPROVAL`: The income verification has been sent to the user for review.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SandboxIncomeFireWebhookRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "sandboxIncomeFireWebhookRequest")
instance ToJSON SandboxIncomeFireWebhookRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "sandboxIncomeFireWebhookRequest")


-- | SandboxIncomeFireWebhookResponse defines the response schema for &#x60;/sandbox/income/fire_webhook&#x60;
newtype SandboxIncomeFireWebhookResponse = SandboxIncomeFireWebhookResponse { unSandboxIncomeFireWebhookResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | SandboxItemFireWebhookRequest defines the request schema for &#x60;/sandbox/item/fire_webhook&#x60;
data SandboxItemFireWebhookRequest = SandboxItemFireWebhookRequest
  { sandboxItemFireWebhookRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , sandboxItemFireWebhookRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , sandboxItemFireWebhookRequestAccessUnderscoretoken :: Text -- ^ The access token associated with the Item data is being requested for.
  , sandboxItemFireWebhookRequestWebhookUnderscoretype :: Maybe WebhookType -- ^ 
  , sandboxItemFireWebhookRequestWebhookUnderscorecode :: Text -- ^ The webhook codes that can be fired by this test endpoint.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SandboxItemFireWebhookRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "sandboxItemFireWebhookRequest")
instance ToJSON SandboxItemFireWebhookRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "sandboxItemFireWebhookRequest")


-- | SandboxItemFireWebhookResponse defines the response schema for &#x60;/sandbox/item/fire_webhook&#x60;
newtype SandboxItemFireWebhookResponse = SandboxItemFireWebhookResponse { unSandboxItemFireWebhookResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | SandboxItemResetLoginRequest defines the request schema for &#x60;/sandbox/item/reset_login&#x60;
data SandboxItemResetLoginRequest = SandboxItemResetLoginRequest
  { sandboxItemResetLoginRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , sandboxItemResetLoginRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , sandboxItemResetLoginRequestAccessUnderscoretoken :: Text -- ^ The access token associated with the Item data is being requested for.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SandboxItemResetLoginRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "sandboxItemResetLoginRequest")
instance ToJSON SandboxItemResetLoginRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "sandboxItemResetLoginRequest")


-- | SandboxItemResetLoginResponse defines the response schema for &#x60;/sandbox/item/reset_login&#x60;
newtype SandboxItemResetLoginResponse = SandboxItemResetLoginResponse { unSandboxItemResetLoginResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | SandboxItemSetVerificationStatusRequest defines the request schema for &#x60;/sandbox/item/set_verification_status&#x60;
data SandboxItemSetVerificationStatusRequest = SandboxItemSetVerificationStatusRequest
  { sandboxItemSetVerificationStatusRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , sandboxItemSetVerificationStatusRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , sandboxItemSetVerificationStatusRequestAccessUnderscoretoken :: Text -- ^ The access token associated with the Item data is being requested for.
  , sandboxItemSetVerificationStatusRequestAccountUnderscoreid :: Text -- ^ The `account_id` of the account whose verification status is to be modified
  , sandboxItemSetVerificationStatusRequestVerificationUnderscorestatus :: Text -- ^ The verification status to set the account to.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SandboxItemSetVerificationStatusRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "sandboxItemSetVerificationStatusRequest")
instance ToJSON SandboxItemSetVerificationStatusRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "sandboxItemSetVerificationStatusRequest")


-- | SandboxItemSetVerificationStatusResponse defines the response schema for &#x60;/sandbox/item/set_verification_status&#x60;
newtype SandboxItemSetVerificationStatusResponse = SandboxItemSetVerificationStatusResponse { unSandboxItemSetVerificationStatusResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Defines the request schema for &#x60;sandbox/oauth/select_accounts&#x60;
data SandboxOauthSelectAccountsRequest = SandboxOauthSelectAccountsRequest
  { sandboxOauthSelectAccountsRequestOauthUnderscorestateUnderscoreid :: Text -- ^ 
  , sandboxOauthSelectAccountsRequestAccounts :: [Text] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SandboxOauthSelectAccountsRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "sandboxOauthSelectAccountsRequest")
instance ToJSON SandboxOauthSelectAccountsRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "sandboxOauthSelectAccountsRequest")


-- | SandboxProcessorTokenCreateRequest defines the request schema for &#x60;/sandbox/processor_token/create&#x60;
data SandboxProcessorTokenCreateRequest = SandboxProcessorTokenCreateRequest
  { sandboxProcessorTokenCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , sandboxProcessorTokenCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , sandboxProcessorTokenCreateRequestInstitutionUnderscoreid :: Text -- ^ The ID of the institution the Item will be associated with
  , sandboxProcessorTokenCreateRequestOptions :: Maybe SandboxProcessorTokenCreateRequestOptions -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SandboxProcessorTokenCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "sandboxProcessorTokenCreateRequest")
instance ToJSON SandboxProcessorTokenCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "sandboxProcessorTokenCreateRequest")


-- | An optional set of options to be used when configuring the Item. If specified, must not be &#x60;null&#x60;.
data SandboxProcessorTokenCreateRequestOptions = SandboxProcessorTokenCreateRequestOptions
  { sandboxProcessorTokenCreateRequestOptionsOverrideUnderscoreusername :: Maybe Text -- ^ Test username to use for the creation of the Sandbox Item. Default value is `user_good`.
  , sandboxProcessorTokenCreateRequestOptionsOverrideUnderscorepassword :: Maybe Text -- ^ Test password to use for the creation of the Sandbox Item. Default value is `pass_good`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SandboxProcessorTokenCreateRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "sandboxProcessorTokenCreateRequestOptions")
instance ToJSON SandboxProcessorTokenCreateRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "sandboxProcessorTokenCreateRequestOptions")


-- | SandboxProcessorTokenCreateResponse defines the response schema for &#x60;/sandbox/processor_token/create&#x60;
newtype SandboxProcessorTokenCreateResponse = SandboxProcessorTokenCreateResponse { unSandboxProcessorTokenCreateResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | SandboxPublicTokenCreateRequest defines the request schema for &#x60;/sandbox/public_token/create&#x60;
data SandboxPublicTokenCreateRequest = SandboxPublicTokenCreateRequest
  { sandboxPublicTokenCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , sandboxPublicTokenCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , sandboxPublicTokenCreateRequestInstitutionUnderscoreid :: Text -- ^ The ID of the institution the Item will be associated with
  , sandboxPublicTokenCreateRequestInitialUnderscoreproducts :: [Products] -- ^ The products to initially pull for the Item. May be any products that the specified `institution_id`  supports. This array may not be empty.
  , sandboxPublicTokenCreateRequestOptions :: Maybe SandboxPublicTokenCreateRequestOptions -- ^ 
  , sandboxPublicTokenCreateRequestUserUnderscoretoken :: Maybe Text -- ^ The user token associated with the User data is being requested for.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SandboxPublicTokenCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "sandboxPublicTokenCreateRequest")
instance ToJSON SandboxPublicTokenCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "sandboxPublicTokenCreateRequest")


-- | An optional set of options to be used when configuring the Item. If specified, must not be &#x60;null&#x60;.
data SandboxPublicTokenCreateRequestOptions = SandboxPublicTokenCreateRequestOptions
  { sandboxPublicTokenCreateRequestOptionsWebhook :: Maybe Text -- ^ Specify a webhook to associate with the new Item.
  , sandboxPublicTokenCreateRequestOptionsOverrideUnderscoreusername :: Maybe Text -- ^ Test username to use for the creation of the Sandbox Item. Default value is `user_good`.
  , sandboxPublicTokenCreateRequestOptionsOverrideUnderscorepassword :: Maybe Text -- ^ Test password to use for the creation of the Sandbox Item. Default value is `pass_good`.
  , sandboxPublicTokenCreateRequestOptionsTransactions :: Maybe SandboxPublicTokenCreateRequestOptionsTransactions -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SandboxPublicTokenCreateRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "sandboxPublicTokenCreateRequestOptions")
instance ToJSON SandboxPublicTokenCreateRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "sandboxPublicTokenCreateRequestOptions")


-- | An optional set of parameters corresponding to transactions options.
data SandboxPublicTokenCreateRequestOptionsTransactions = SandboxPublicTokenCreateRequestOptionsTransactions
  { sandboxPublicTokenCreateRequestOptionsTransactionsStartUnderscoredate :: Maybe Day -- ^ The earliest date for which to fetch transaction history. Dates should be formatted as YYYY-MM-DD.
  , sandboxPublicTokenCreateRequestOptionsTransactionsEndUnderscoredate :: Maybe Day -- ^ The most recent date for which to fetch transaction history. Dates should be formatted as YYYY-MM-DD.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SandboxPublicTokenCreateRequestOptionsTransactions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "sandboxPublicTokenCreateRequestOptionsTransactions")
instance ToJSON SandboxPublicTokenCreateRequestOptionsTransactions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "sandboxPublicTokenCreateRequestOptionsTransactions")


-- | SandboxPublicTokenCreateResponse defines the response schema for &#x60;/sandbox/public_token/create&#x60;
newtype SandboxPublicTokenCreateResponse = SandboxPublicTokenCreateResponse { unSandboxPublicTokenCreateResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Defines the request schema for &#x60;/sandbox/transfer/fire_webhook&#x60;
data SandboxTransferFireWebhookRequest = SandboxTransferFireWebhookRequest
  { sandboxTransferFireWebhookRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , sandboxTransferFireWebhookRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , sandboxTransferFireWebhookRequestWebhook :: Text -- ^ The URL to which the webhook should be sent.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SandboxTransferFireWebhookRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "sandboxTransferFireWebhookRequest")
instance ToJSON SandboxTransferFireWebhookRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "sandboxTransferFireWebhookRequest")


-- | Defines the response schema for &#x60;/sandbox/transfer/fire_webhook&#x60;
newtype SandboxTransferFireWebhookResponse = SandboxTransferFireWebhookResponse { unSandboxTransferFireWebhookResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Defines the request schema for &#x60;/sandbox/transfer/repayment/simulate&#x60;
data SandboxTransferRepaymentSimulateRequest = SandboxTransferRepaymentSimulateRequest
  { sandboxTransferRepaymentSimulateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , sandboxTransferRepaymentSimulateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SandboxTransferRepaymentSimulateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "sandboxTransferRepaymentSimulateRequest")
instance ToJSON SandboxTransferRepaymentSimulateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "sandboxTransferRepaymentSimulateRequest")


-- | Defines the response schema for &#x60;/sandbox/transfer/repayment/simulate&#x60;
newtype SandboxTransferRepaymentSimulateResponse = SandboxTransferRepaymentSimulateResponse { unSandboxTransferRepaymentSimulateResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Defines the request schema for &#x60;/sandbox/transfer/simulate&#x60;
data SandboxTransferSimulateRequest = SandboxTransferSimulateRequest
  { sandboxTransferSimulateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , sandboxTransferSimulateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , sandboxTransferSimulateRequestTransferUnderscoreid :: Text -- ^ Plaid’s unique identifier for a transfer.
  , sandboxTransferSimulateRequestEventUnderscoretype :: Text -- ^ The asynchronous event to be simulated. May be: `posted`, `failed`, or `returned`.  An error will be returned if the event type is incompatible with the current transfer status. Compatible status --> event type transitions include:  `pending` --> `failed`  `pending` --> `posted`  `posted` --> `returned` 
  , sandboxTransferSimulateRequestFailureUnderscorereason :: Maybe TransferFailure -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SandboxTransferSimulateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "sandboxTransferSimulateRequest")
instance ToJSON SandboxTransferSimulateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "sandboxTransferSimulateRequest")


-- | Defines the response schema for &#x60;/sandbox/transfer/simulate&#x60;
newtype SandboxTransferSimulateResponse = SandboxTransferSimulateResponse { unSandboxTransferSimulateResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Defines the request schema for &#x60;/sandbox/transfer/sweep/simulate&#x60;
data SandboxTransferSweepSimulateRequest = SandboxTransferSweepSimulateRequest
  { sandboxTransferSweepSimulateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , sandboxTransferSweepSimulateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SandboxTransferSweepSimulateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "sandboxTransferSweepSimulateRequest")
instance ToJSON SandboxTransferSweepSimulateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "sandboxTransferSweepSimulateRequest")


-- | Defines the response schema for &#x60;/sandbox/transfer/sweep/simulate&#x60;
newtype SandboxTransferSweepSimulateResponse = SandboxTransferSweepSimulateResponse { unSandboxTransferSweepSimulateResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The scopes object
data Scopes = Scopes
  { scopesProductUnderscoreaccess :: Maybe ProductAccess -- ^ 
  , scopesAccounts :: Maybe [AccountAccess] -- ^ 
  , scopesNewUnderscoreaccounts :: Maybe Bool -- ^ Allow access to newly opened accounts as they are opened. If unset, defaults to `true`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON Scopes where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "scopes")
instance ToJSON Scopes where
  toJSON = genericToJSON (removeFieldLabelPrefix False "scopes")


-- | An indicator for when scopes are being updated. When scopes are updated via enrollment (i.e. OAuth), the partner must send &#x60;ENROLLMENT&#x60;. When scopes are updated in a post-enrollment view, the partner must send &#x60;PORTAL&#x60;.
data ScopesContext = ScopesContext
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ScopesContext where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "scopesContext")
instance ToJSON ScopesContext where
  toJSON = genericToJSON (removeFieldLabelPrefix False "scopesContext")


-- | The scopes object
data ScopesNullable = ScopesNullable
  { scopesNullableProductUnderscoreaccess :: Maybe ProductAccess -- ^ 
  , scopesNullableAccounts :: Maybe [AccountAccess] -- ^ 
  , scopesNullableNewUnderscoreaccounts :: Maybe Bool -- ^ Allow access to newly opened accounts as they are opened. If unset, defaults to `true`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ScopesNullable where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "scopesNullable")
instance ToJSON ScopesNullable where
  toJSON = genericToJSON (removeFieldLabelPrefix False "scopesNullable")


-- | Analysis information describing why a screening hit matched the provided user information
data ScreeningHitAnalysis = ScreeningHitAnalysis
  { screeningHitAnalysisDatesUnderscoreofUnderscorebirth :: Maybe MatchSummaryCode -- ^ 
  , screeningHitAnalysisDocuments :: Maybe MatchSummaryCode -- ^ 
  , screeningHitAnalysisLocations :: Maybe MatchSummaryCode -- ^ 
  , screeningHitAnalysisNames :: Maybe MatchSummaryCode -- ^ 
  , screeningHitAnalysisSearchUnderscoretermsUnderscoreversion :: Double -- ^ The version of the screening's `search_terms` that were compared when the screening hit was added. screening hits are immutable once they have been reviewed. If changes are detected due to updates to the screening's `search_terms`, the associated program, or the list's source data prior to review, the screening hit will be updated to reflect those changes.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ScreeningHitAnalysis where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "screeningHitAnalysis")
instance ToJSON ScreeningHitAnalysis where
  toJSON = genericToJSON (removeFieldLabelPrefix False "screeningHitAnalysis")


-- | Information associated with the watchlist hit
data ScreeningHitData = ScreeningHitData
  { screeningHitDataDatesUnderscoreofUnderscorebirth :: Maybe [ScreeningHitDateOfBirthItem] -- ^ Dates of birth associated with the watchlist hit
  , screeningHitDataDocuments :: Maybe [ScreeningHitDocumentsItems] -- ^ Documents associated with the watchlist hit
  , screeningHitDataLocations :: Maybe [GenericScreeningHitLocationItems] -- ^ Locations associated with the watchlist hit
  , screeningHitDataNames :: Maybe [ScreeningHitNamesItems] -- ^ Names associated with the watchlist hit
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ScreeningHitData where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "screeningHitData")
instance ToJSON ScreeningHitData where
  toJSON = genericToJSON (removeFieldLabelPrefix False "screeningHitData")


-- | Analyzed date of birth for the associated hit
data ScreeningHitDateOfBirthItem = ScreeningHitDateOfBirthItem
  { screeningHitDateOfBirthItemAnalysis :: Maybe MatchSummary -- ^ 
  , screeningHitDateOfBirthItemData :: Maybe DateRange -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ScreeningHitDateOfBirthItem where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "screeningHitDateOfBirthItem")
instance ToJSON ScreeningHitDateOfBirthItem where
  toJSON = genericToJSON (removeFieldLabelPrefix False "screeningHitDateOfBirthItem")


-- | Analyzed document information for the associated hit
data ScreeningHitDocumentsItems = ScreeningHitDocumentsItems
  { screeningHitDocumentsItemsAnalysis :: Maybe MatchSummary -- ^ 
  , screeningHitDocumentsItemsData :: Maybe WatchlistScreeningDocument -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ScreeningHitDocumentsItems where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "screeningHitDocumentsItems")
instance ToJSON ScreeningHitDocumentsItems where
  toJSON = genericToJSON (removeFieldLabelPrefix False "screeningHitDocumentsItems")


-- | Analyzed name information for the associated hit
data ScreeningHitNamesItems = ScreeningHitNamesItems
  { screeningHitNamesItemsAnalysis :: Maybe MatchSummary -- ^ 
  , screeningHitNamesItemsData :: Maybe IndividualScreeningHitNames -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ScreeningHitNamesItems where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "screeningHitNamesItems")
instance ToJSON ScreeningHitNamesItems where
  toJSON = genericToJSON (removeFieldLabelPrefix False "screeningHitNamesItems")


-- | Fired when an individual screening status has changed, which can occur manually via the dashboard or during ongoing monitoring.
newtype ScreeningStatusUpdatedWebhook = ScreeningStatusUpdatedWebhook { unScreeningStatusUpdatedWebhook :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Contains details about a security
newtype Security = Security { unSecurity :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Specify the security associated with the holding or investment transaction. When inputting custom security data to the Sandbox, Plaid will perform post-data-retrieval normalization and enrichment. These processes may cause the data returned by the Sandbox to be slightly different from the data you input. An ISO-4217 currency code and a security identifier (&#x60;ticker_symbol&#x60;, &#x60;cusip&#x60;, &#x60;isin&#x60;, or &#x60;sedol&#x60;) are required.
data SecurityOverride = SecurityOverride
  { securityOverrideIsin :: Maybe Text -- ^ 12-character ISIN, a globally unique securities identifier.
  , securityOverrideCusip :: Maybe Text -- ^ 9-character CUSIP, an identifier assigned to North American securities.
  , securityOverrideSedol :: Maybe Text -- ^ 7-character SEDOL, an identifier assigned to securities in the UK.
  , securityOverrideName :: Maybe Text -- ^ A descriptive name for the security, suitable for display.
  , securityOverrideTickerUnderscoresymbol :: Maybe Text -- ^ The security’s trading symbol for publicly traded securities, and otherwise a short identifier if available.
  , securityOverrideCurrency :: Maybe Text -- ^ Either a valid `iso_currency_code` or `unofficial_currency_code`
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SecurityOverride where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "securityOverride")
instance ToJSON SecurityOverride where
  toJSON = genericToJSON (removeFieldLabelPrefix False "securityOverride")


-- | An object containing a BACS account number and sort code. If an IBAN is not provided or if this recipient needs to accept domestic GBP-denominated payments, BACS data is required.
data SenderBACSNullable = SenderBACSNullable
  { senderBACSNullableAccount :: Maybe Text -- ^ The account number of the account. Maximum of 10 characters.
  , senderBACSNullableSortUnderscorecode :: Maybe Text -- ^ The 6-character sort code of the account.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SenderBACSNullable where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "senderBACSNullable")
instance ToJSON SenderBACSNullable where
  toJSON = genericToJSON (removeFieldLabelPrefix False "senderBACSNullable")


-- | The address of the student loan servicer. This is generally the remittance address to which payments should be sent.
newtype ServicerAddressData = ServicerAddressData { unServicerAddressData :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Data about the components comprising an address.
newtype SignalAddressData = SignalAddressData { unSignalAddressData :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | SignalDecisionReportRequest defines the request schema for &#x60;/signal/decision/report&#x60;
data SignalDecisionReportRequest = SignalDecisionReportRequest
  { signalDecisionReportRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , signalDecisionReportRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , signalDecisionReportRequestClientUnderscoretransactionUnderscoreid :: Text -- ^ Must be the same as the `client_transaction_id` supplied when calling `/signal/evaluate`
  , signalDecisionReportRequestInitiated :: Bool -- ^ `true` if the ACH transaction was initiated, `false` otherwise.
  , signalDecisionReportRequestDaysUnderscorefundsUnderscoreonUnderscorehold :: Maybe Int -- ^ The actual number of days (hold time) since the ACH debit transaction that you wait before making funds available to your customers. The holding time could affect the ACH return rate. For example, use 0 if you make funds available to your customers instantly or the same day following the debit transaction, or 1 if you make funds available the next day following the debit initialization.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SignalDecisionReportRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "signalDecisionReportRequest")
instance ToJSON SignalDecisionReportRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "signalDecisionReportRequest")


-- | SignalDecisionReportResponse defines the response schema for &#x60;/signal/decision/report&#x60;
newtype SignalDecisionReportResponse = SignalDecisionReportResponse { unSignalDecisionReportResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Details about the end user&#39;s device
data SignalDevice = SignalDevice
  { signalDeviceIpUnderscoreaddress :: Maybe Text -- ^ The IP address of the device that initiated the transaction
  , signalDeviceUserUnderscoreagent :: Maybe Text -- ^ The user agent of the device that initiated the transaction (e.g. \"Mozilla/5.0\")
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SignalDevice where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "signalDevice")
instance ToJSON SignalDevice where
  toJSON = genericToJSON (removeFieldLabelPrefix False "signalDevice")


-- | The core attributes object contains additional data that can be used to assess the ACH return risk. Examples of data include:  &#x60;days_since_first_plaid_connection&#x60;: The number of days since the first time the Item was connected to an application via Plaid &#x60;plaid_connections_count_7d&#x60;: The number of times the Item has been connected to applications via Plaid over the past 7 days &#x60;plaid_connections_count_30d&#x60;: The number of times the Item has been connected to applications via Plaid over the past 30 days &#x60;total_plaid_connections_count&#x60;: The number of times the Item has been connected to applications via Plaid &#x60;is_savings_or_money_market_account&#x60;: Indicates whether the ACH transaction funding account is a savings/money market account  For the full list and detailed documentation of core attributes available, or to request that core attributes not be returned, contact Sales or your Plaid account manager
data SignalEvaluateCoreAttributes = SignalEvaluateCoreAttributes
  { signalEvaluateCoreAttributesUnauthorizedUnderscoretransactionsUnderscorecountUnderscore7d :: Maybe Int -- ^ We parse and analyze historical transaction metadata to identify the number of possible past returns due to unauthorized transactions over the past 7 days from the account that will be debited.
  , signalEvaluateCoreAttributesUnauthorizedUnderscoretransactionsUnderscorecountUnderscore30d :: Maybe Int -- ^ We parse and analyze historical transaction metadata to identify the number of possible past returns due to unauthorized transactions over the past 30 days from the account that will be debited.
  , signalEvaluateCoreAttributesUnauthorizedUnderscoretransactionsUnderscorecountUnderscore60d :: Maybe Int -- ^ We parse and analyze historical transaction metadata to identify the number of possible past returns due to unauthorized transactions over the past 60 days from the account that will be debited.
  , signalEvaluateCoreAttributesUnauthorizedUnderscoretransactionsUnderscorecountUnderscore90d :: Maybe Int -- ^ We parse and analyze historical transaction metadata to identify the number of possible past returns due to unauthorized transactions over the past 90 days from the account that will be debited.
  , signalEvaluateCoreAttributesNsfUnderscoreoverdraftUnderscoretransactionsUnderscorecountUnderscore7d :: Maybe Int -- ^ We parse and analyze historical transaction metadata to identify the number of possible past returns due to non-sufficient funds/overdrafts over the past 7 days from the account that will be debited.
  , signalEvaluateCoreAttributesNsfUnderscoreoverdraftUnderscoretransactionsUnderscorecountUnderscore30d :: Maybe Int -- ^ We parse and analyze historical transaction metadata to identify the number of possible past returns due to non-sufficient funds/overdrafts over the past 30 days from the account that will be debited.
  , signalEvaluateCoreAttributesNsfUnderscoreoverdraftUnderscoretransactionsUnderscorecountUnderscore60d :: Maybe Int -- ^ We parse and analyze historical transaction metadata to identify the number of possible past returns due to non-sufficient funds/overdrafts over the past 60 days from the account that will be debited.
  , signalEvaluateCoreAttributesNsfUnderscoreoverdraftUnderscoretransactionsUnderscorecountUnderscore90d :: Maybe Int -- ^ We parse and analyze historical transaction metadata to identify the number of possible past returns due to non-sufficient funds/overdrafts over the past 90 days from the account that will be debited.
  , signalEvaluateCoreAttributesDaysUnderscoresinceUnderscorefirstUnderscoreplaidUnderscoreconnection :: Maybe Int -- ^ The number of days since the first time the Item was connected to an application via Plaid
  , signalEvaluateCoreAttributesPlaidUnderscoreconnectionsUnderscorecountUnderscore7d :: Maybe Int -- ^ The number of times the Item has been connected to applications via Plaid over the past 7 days
  , signalEvaluateCoreAttributesPlaidUnderscoreconnectionsUnderscorecountUnderscore30d :: Maybe Int -- ^ The number of times the Item has been connected to applications via Plaid over the past 30 days
  , signalEvaluateCoreAttributesTotalUnderscoreplaidUnderscoreconnectionsUnderscorecount :: Maybe Int -- ^ The total number of times the Item has been connected to applications via Plaid
  , signalEvaluateCoreAttributesIsUnderscoresavingsUnderscoreorUnderscoremoneyUnderscoremarketUnderscoreaccount :: Maybe Bool -- ^ Indicates if the ACH transaction funding account is a savings/money market account
  , signalEvaluateCoreAttributesTotalUnderscorecreditUnderscoretransactionsUnderscoreamountUnderscore10d :: Maybe Double -- ^ The total credit (inflow) transaction amount over the past 10 days from the account that will be debited
  , signalEvaluateCoreAttributesTotalUnderscoredebitUnderscoretransactionsUnderscoreamountUnderscore10d :: Maybe Double -- ^ The total debit (outflow) transaction amount over the past 10 days from the account that will be debited
  , signalEvaluateCoreAttributesP50UnderscorecreditUnderscoretransactionsUnderscoreamountUnderscore28d :: Maybe Double -- ^ The 50th percentile of all credit (inflow) transaction amounts over the past 28 days from the account that will be debited
  , signalEvaluateCoreAttributesP50UnderscoredebitUnderscoretransactionsUnderscoreamountUnderscore28d :: Maybe Double -- ^ The 50th percentile of all debit (outflow) transaction amounts over the past 28 days from the account that will be debited
  , signalEvaluateCoreAttributesP95UnderscorecreditUnderscoretransactionsUnderscoreamountUnderscore28d :: Maybe Double -- ^ The 95th percentile of all credit (inflow) transaction amounts over the past 28 days from the account that will be debited
  , signalEvaluateCoreAttributesP95UnderscoredebitUnderscoretransactionsUnderscoreamountUnderscore28d :: Maybe Double -- ^ The 95th percentile of all debit (outflow) transaction amounts over the past 28 days from the account that will be debited
  , signalEvaluateCoreAttributesDaysUnderscorewithUnderscorenegativeUnderscorebalanceUnderscorecountUnderscore90d :: Maybe Int -- ^ The number of days within the past 90 days when the account that will be debited had a negative end-of-day available balance
  , signalEvaluateCoreAttributesP90UnderscoreeodUnderscorebalanceUnderscore30d :: Maybe Double -- ^ The 90th percentile of the end-of-day available balance over the past 30 days of the account that will be debited
  , signalEvaluateCoreAttributesP90UnderscoreeodUnderscorebalanceUnderscore60d :: Maybe Double -- ^ The 90th percentile of the end-of-day available balance over the past 60 days of the account that will be debited
  , signalEvaluateCoreAttributesP90UnderscoreeodUnderscorebalanceUnderscore90d :: Maybe Double -- ^ The 90th percentile of the end-of-day available balance over the past 90 days of the account that will be debited
  , signalEvaluateCoreAttributesP10UnderscoreeodUnderscorebalanceUnderscore30d :: Maybe Double -- ^ The 10th percentile of the end-of-day available balance over the past 30 days of the account that will be debited
  , signalEvaluateCoreAttributesP10UnderscoreeodUnderscorebalanceUnderscore60d :: Maybe Double -- ^ The 10th percentile of the end-of-day available balance over the past 60 days of the account that will be debited
  , signalEvaluateCoreAttributesP10UnderscoreeodUnderscorebalanceUnderscore90d :: Maybe Double -- ^ The 10th percentile of the end-of-day available balance over the past 90 days of the account that will be debited
  , signalEvaluateCoreAttributesAvailableUnderscorebalance :: Maybe Double -- ^ Available balance, as of the `balance_last_updated` time. The available balance is the current balance less any outstanding holds or debits that have not yet posted to the account.
  , signalEvaluateCoreAttributesCurrentUnderscorebalance :: Maybe Double -- ^ Current balance, as of the `balance_last_updated` time. The current balance is the total amount of funds in the account.
  , signalEvaluateCoreAttributesBalanceUnderscorelastUnderscoreupdated :: Maybe UTCTime -- ^ Timestamp in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format (YYYY-MM-DDTHH:mm:ssZ) indicating the last time that the balance for the given account has been updated.
  , signalEvaluateCoreAttributesPhoneUnderscorechangeUnderscorecountUnderscore28d :: Maybe Int -- ^ The number of times the account's phone numbers on file have changed over the past 28 days
  , signalEvaluateCoreAttributesPhoneUnderscorechangeUnderscorecountUnderscore90d :: Maybe Int -- ^ The number of times the account's phone numbers on file have changed over the past 90 days
  , signalEvaluateCoreAttributesEmailUnderscorechangeUnderscorecountUnderscore28d :: Maybe Int -- ^ The number of times the account's email addresses on file have changed over the past 28 days
  , signalEvaluateCoreAttributesEmailUnderscorechangeUnderscorecountUnderscore90d :: Maybe Int -- ^ The number of times the account's email addresses on file have changed over the past 90 days
  , signalEvaluateCoreAttributesAddressUnderscorechangeUnderscorecountUnderscore28d :: Maybe Int -- ^ The number of times the account's addresses on file have changed over the past 28 days
  , signalEvaluateCoreAttributesAddressUnderscorechangeUnderscorecountUnderscore90d :: Maybe Int -- ^ The number of times the account's addresses on file have changed over the past 90 days
  , signalEvaluateCoreAttributesPlaidUnderscorenonUnderscoreoauthUnderscoreauthenticationUnderscoreattemptsUnderscorecountUnderscore3d :: Maybe Int -- ^ The number of non-OAuth authentication attempts via Plaid for this bank account over the past 3 days
  , signalEvaluateCoreAttributesPlaidUnderscorenonUnderscoreoauthUnderscoreauthenticationUnderscoreattemptsUnderscorecountUnderscore7d :: Maybe Int -- ^ The number of non-OAuth authentication attempts via Plaid for this bank account over the past 7 days
  , signalEvaluateCoreAttributesPlaidUnderscorenonUnderscoreoauthUnderscoreauthenticationUnderscoreattemptsUnderscorecountUnderscore30d :: Maybe Int -- ^ The number of non-OAuth authentication attempts via Plaid for this bank account over the past 30 days
  , signalEvaluateCoreAttributesFailedUnderscoreplaidUnderscorenonUnderscoreoauthUnderscoreauthenticationUnderscoreattemptsUnderscorecountUnderscore3d :: Maybe Int -- ^ The number of failed non-OAuth authentication attempts via Plaid for this bank account over the past 3 days
  , signalEvaluateCoreAttributesFailedUnderscoreplaidUnderscorenonUnderscoreoauthUnderscoreauthenticationUnderscoreattemptsUnderscorecountUnderscore7d :: Maybe Int -- ^ The number of failed non-OAuth authentication attempts via Plaid for this bank account over the past 7 days
  , signalEvaluateCoreAttributesFailedUnderscoreplaidUnderscorenonUnderscoreoauthUnderscoreauthenticationUnderscoreattemptsUnderscorecountUnderscore30d :: Maybe Int -- ^ The number of failed non-OAuth authentication attempts via Plaid for this bank account over the past 30 days
  , signalEvaluateCoreAttributesDebitUnderscoretransactionsUnderscorecountUnderscore10d :: Maybe Int -- ^ The total number of debit (outflow) transactions over the past 10 days from the account that will be debited
  , signalEvaluateCoreAttributesCreditUnderscoretransactionsUnderscorecountUnderscore10d :: Maybe Int -- ^ The total number of credit (inflow) transactions over the past 10 days from the account that will be debited
  , signalEvaluateCoreAttributesDebitUnderscoretransactionsUnderscorecountUnderscore30d :: Maybe Int -- ^ The total number of debit (outflow) transactions over the past 30 days from the account that will be debited
  , signalEvaluateCoreAttributesCreditUnderscoretransactionsUnderscorecountUnderscore30d :: Maybe Int -- ^ The total number of credit (inflow) transactions over the past 30 days from the account that will be debited
  , signalEvaluateCoreAttributesDebitUnderscoretransactionsUnderscorecountUnderscore60d :: Maybe Int -- ^ The total number of debit (outflow) transactions over the past 60 days from the account that will be debited
  , signalEvaluateCoreAttributesCreditUnderscoretransactionsUnderscorecountUnderscore60d :: Maybe Int -- ^ The total number of credit (inflow) transactions over the past 60 days from the account that will be debited
  , signalEvaluateCoreAttributesDebitUnderscoretransactionsUnderscorecountUnderscore90d :: Maybe Int -- ^ The total number of debit (outflow) transactions over the past 90 days from the account that will be debited
  , signalEvaluateCoreAttributesCreditUnderscoretransactionsUnderscorecountUnderscore90d :: Maybe Int -- ^ The total number of credit (inflow) transactions over the past 90 days from the account that will be debited
  , signalEvaluateCoreAttributesTotalUnderscoredebitUnderscoretransactionsUnderscoreamountUnderscore30d :: Maybe Double -- ^ The total debit (outflow) transaction amount over the past 30 days from the account that will be debited
  , signalEvaluateCoreAttributesTotalUnderscorecreditUnderscoretransactionsUnderscoreamountUnderscore30d :: Maybe Double -- ^ The total credit (inflow) transaction amount over the past 30 days from the account that will be debited
  , signalEvaluateCoreAttributesTotalUnderscoredebitUnderscoretransactionsUnderscoreamountUnderscore60d :: Maybe Double -- ^ The total debit (outflow) transaction amount over the past 60 days from the account that will be debited
  , signalEvaluateCoreAttributesTotalUnderscorecreditUnderscoretransactionsUnderscoreamountUnderscore60d :: Maybe Double -- ^ The total credit (inflow) transaction amount over the past 60 days from the account that will be debited
  , signalEvaluateCoreAttributesTotalUnderscoredebitUnderscoretransactionsUnderscoreamountUnderscore90d :: Maybe Double -- ^ The total debit (outflow) transaction amount over the past 90 days from the account that will be debited
  , signalEvaluateCoreAttributesTotalUnderscorecreditUnderscoretransactionsUnderscoreamountUnderscore90d :: Maybe Double -- ^ The total credit (inflow) transaction amount over the past 90 days from the account that will be debited
  , signalEvaluateCoreAttributesP50UnderscoreeodUnderscorebalanceUnderscore30d :: Maybe Double -- ^ The 50th percentile of the end-of-day available balance over the past 30 days of the account that will be debited
  , signalEvaluateCoreAttributesP50UnderscoreeodUnderscorebalanceUnderscore60d :: Maybe Double -- ^ The 50th percentile of the end-of-day available balance over the past 60 days of the account that will be debited
  , signalEvaluateCoreAttributesP50UnderscoreeodUnderscorebalanceUnderscore90d :: Maybe Double -- ^ The 50th percentile of the end-of-day available balance over the past 90 days of the account that will be debited
  , signalEvaluateCoreAttributesP50UnderscoreeodUnderscorebalanceUnderscore31dUnderscoretoUnderscore60d :: Maybe Double -- ^ The 50th percentile of the end-of-day available balance between day 31 and day 60 over the past 60 days of the account that will be debited
  , signalEvaluateCoreAttributesP50UnderscoreeodUnderscorebalanceUnderscore61dUnderscoretoUnderscore90d :: Maybe Double -- ^ The 50th percentile of the end-of-day available balance between day 61 and day 90 over the past 60 days of the account that will be debited
  , signalEvaluateCoreAttributesP90UnderscoreeodUnderscorebalanceUnderscore31dUnderscoretoUnderscore60d :: Maybe Double -- ^ The 90th percentile of the end-of-day available balance between day 31 and day 60 over the past 60 days of the account that will be debited
  , signalEvaluateCoreAttributesP90UnderscoreeodUnderscorebalanceUnderscore61dUnderscoretoUnderscore90d :: Maybe Double -- ^ The 90th percentile of the end-of-day available balance between day 61 and day 90 over the past 60 days of the account that will be debited
  , signalEvaluateCoreAttributesP10UnderscoreeodUnderscorebalanceUnderscore31dUnderscoretoUnderscore60d :: Maybe Double -- ^ The 10th percentile of the end-of-day available balance between day 31 and day 60 over the past 60 days of the account that will be debited
  , signalEvaluateCoreAttributesP10UnderscoreeodUnderscorebalanceUnderscore61dUnderscoretoUnderscore90d :: Maybe Double -- ^ The 10th percentile of the end-of-day available balance between day 61 and day 90 over the past 60 days of the account that will be debited
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SignalEvaluateCoreAttributes where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "signalEvaluateCoreAttributes")
instance ToJSON SignalEvaluateCoreAttributes where
  toJSON = genericToJSON (removeFieldLabelPrefix False "signalEvaluateCoreAttributes")


-- | SignalEvaluateRequest defines the request schema for &#x60;/signal/evaluate&#x60;
data SignalEvaluateRequest = SignalEvaluateRequest
  { signalEvaluateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , signalEvaluateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , signalEvaluateRequestAccessUnderscoretoken :: Text -- ^ The access token associated with the Item data is being requested for.
  , signalEvaluateRequestAccountUnderscoreid :: Text -- ^ The `account_id` of the account whose verification status is to be modified
  , signalEvaluateRequestClientUnderscoretransactionUnderscoreid :: Text -- ^ The unique ID that you would like to use to refer to this transaction. For your convenience mapping your internal data, you could use your internal ID/identifier for this transaction. The max length for this field is 36 characters.
  , signalEvaluateRequestAmount :: Double -- ^ The transaction amount, in USD (e.g. `102.05`)
  , signalEvaluateRequestUserUnderscorepresent :: Maybe Bool -- ^ `true` if the end user is present while initiating the ACH transfer and the endpoint is being called; `false` otherwise (for example, when the ACH transfer is scheduled and the end user is not present, or you call this endpoint after the ACH transfer but before submitting the Nacha file for ACH processing).
  , signalEvaluateRequestClientUnderscoreuserUnderscoreid :: Maybe Text -- ^ A unique ID that identifies the end user in your system. This ID is used to correlate requests by a user with multiple Items. The max length for this field is 36 characters.
  , signalEvaluateRequestUser :: Maybe SignalUser -- ^ 
  , signalEvaluateRequestDevice :: Maybe SignalDevice -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SignalEvaluateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "signalEvaluateRequest")
instance ToJSON SignalEvaluateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "signalEvaluateRequest")


-- | SignalEvaluateResponse defines the response schema for &#x60;/signal/income/evaluate&#x60;
newtype SignalEvaluateResponse = SignalEvaluateResponse { unSignalEvaluateResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The user&#39;s legal name
data SignalPersonName = SignalPersonName
  { signalPersonNamePrefix :: Maybe Text -- ^ The user's name prefix (e.g. \"Mr.\")
  , signalPersonNameGivenUnderscorename :: Maybe Text -- ^ The user's given name. If the user has a one-word name, it should be provided in this field.
  , signalPersonNameMiddleUnderscorename :: Maybe Text -- ^ The user's middle name
  , signalPersonNameFamilyUnderscorename :: Maybe Text -- ^ The user's family name / surname
  , signalPersonNameSuffix :: Maybe Text -- ^ The user's name suffix (e.g. \"II\")
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SignalPersonName where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "signalPersonName")
instance ToJSON SignalPersonName where
  toJSON = genericToJSON (removeFieldLabelPrefix False "signalPersonName")


-- | SignalPrepareRequest defines the request schema for &#x60;/signal/prepare&#x60;
data SignalPrepareRequest = SignalPrepareRequest
  { signalPrepareRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , signalPrepareRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , signalPrepareRequestAccessUnderscoretoken :: Text -- ^ The access token associated with the Item data is being requested for.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SignalPrepareRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "signalPrepareRequest")
instance ToJSON SignalPrepareRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "signalPrepareRequest")


-- | SignalPrepareResponse defines the response schema for &#x60;/signal/prepare&#x60;
newtype SignalPrepareResponse = SignalPrepareResponse { unSignalPrepareResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | SignalReturnReportRequest defines the request schema for &#x60;/signal/return/report&#x60;
data SignalReturnReportRequest = SignalReturnReportRequest
  { signalReturnReportRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , signalReturnReportRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , signalReturnReportRequestClientUnderscoretransactionUnderscoreid :: Text -- ^ Must be the same as the `client_transaction_id` supplied when calling `/signal/evaluate`
  , signalReturnReportRequestReturnUnderscorecode :: Text -- ^ Must be a valid ACH return code (e.g. \"R01\")
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SignalReturnReportRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "signalReturnReportRequest")
instance ToJSON SignalReturnReportRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "signalReturnReportRequest")


-- | SignalReturnReportResponse defines the response schema for &#x60;/signal/return/report&#x60;
newtype SignalReturnReportResponse = SignalReturnReportResponse { unSignalReturnReportResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Risk scoring details broken down by risk category.
newtype SignalScores = SignalScores { unSignalScores :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Details about the end user initiating the transaction (i.e., the account holder).
data SignalUser = SignalUser
  { signalUserName :: Maybe SignalPersonName -- ^ 
  , signalUserPhoneUnderscorenumber :: Maybe Text -- ^ The user's phone number, in E.164 format: +{countrycode}{number}. For example: \"+14151234567\"
  , signalUserEmailUnderscoreaddress :: Maybe Text -- ^ The user's email address.
  , signalUserAddress :: Maybe SignalAddressData -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SignalUser where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "signalUser")
instance ToJSON SignalUser where
  toJSON = genericToJSON (removeFieldLabelPrefix False "signalUser")


-- | A sweep returned from the &#x60;/sandbox/transfer/sweep/simulate&#x60; endpoint. Can be null if there are no transfers to include in a sweep.
newtype SimulatedTransferSweep = SimulatedTransferSweep { unSimulatedTransferSweep :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Object containing all risk signals and relevant metadata for a single document
newtype SingleDocumentRiskSignal = SingleDocumentRiskSignal { unSingleDocumentRiskSignal :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | A type indicating whether a dashboard user, an API-based user, or Plaid last touched this object.
data Source = Source
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON Source where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "source")
instance ToJSON Source where
  toJSON = genericToJSON (removeFieldLabelPrefix False "source")


-- | The schema below describes the various &#x60;types&#x60; and corresponding &#x60;subtypes&#x60; that Plaid recognizes and reports for financial institution accounts.
newtype StandaloneAccountType = StandaloneAccountType { unStandaloneAccountType :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The following currency codes are supported by Plaid.
newtype StandaloneCurrencyCodeList = StandaloneCurrencyCodeList { unStandaloneCurrencyCodeList :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Valid values for investment transaction types and subtypes. Note that transactions representing inflow of cash will appear as negative amounts, outflow of cash will appear as positive amounts.
newtype StandaloneInvestmentTransactionType = StandaloneInvestmentTransactionType { unStandaloneInvestmentTransactionType :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An instruction specifying what steps the new Identity Verification attempt should require the user to complete:   &#x60;reset&#x60; - Restart the user at the beginning of the session, regardless of whether they successfully completed part of their previous session.  &#x60;incomplete&#x60; - Start the new session at the step that the user failed in the previous session, skipping steps that have already been successfully completed.  &#x60;infer&#x60; - If the most recent Identity Verification attempt associated with the given &#x60;client_user_id&#x60; has a status of &#x60;failed&#x60; or &#x60;expired&#x60;, retry using the &#x60;incomplete&#x60; strategy. Otherwise, use the &#x60;reset&#x60; strategy.  &#x60;custom&#x60; - Start the new session with a custom configuration, specified by the value of the &#x60;steps&#x60; field  Note:  The &#x60;incomplete&#x60; strategy cannot be applied if the session&#39;s failing step is &#x60;screening&#x60; or &#x60;risk_check&#x60;.  The &#x60;infer&#x60; strategy cannot be applied if the session&#39;s status is still &#x60;active&#x60;
data Strategy = Strategy
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON Strategy where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "strategy")
instance ToJSON Strategy where
  toJSON = genericToJSON (removeFieldLabelPrefix False "strategy")


-- | Contains details about a student loan account
newtype StudentLoan = StudentLoan { unStudentLoan :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Student loan repayment information used to configure Sandbox test data for the Liabilities product
newtype StudentLoanRepaymentModel = StudentLoanRepaymentModel { unStudentLoanRepaymentModel :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object representing the status of the student loan
newtype StudentLoanStatus = StudentLoanStatus { unStudentLoanStatus :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object representing the repayment plan for the student loan
newtype StudentRepaymentPlan = StudentRepaymentPlan { unStudentRepaymentPlan :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Fired when an Item&#39;s transactions change. This can be due to any event resulting in new changes, such as an initial, historical, or default pull. After receipt of this webhook, the new changes can be fetched for the Item from &#x60;/transactions/sync&#x60;.  Note that to receive this webhook for an Item, &#x60;/transactions/sync&#x60; must have been called at least once on that Item.
newtype SyncUpdatesAvailableWebhook = SyncUpdatesAvailableWebhook { unSyncUpdatesAvailableWebhook :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Data about an official document used to report the user&#39;s income to the IRS.
newtype Taxform = Taxform { unTaxform :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Taxpayer ID of the individual receiving the paystub.
newtype TaxpayerID = TaxpayerID { unTaxpayerID :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object representing both the current pay period and year to date amount for a category.
newtype Total = Total { unTotal :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Commonly used term to describe the line item.
data TotalCanonicalDescription = TotalCanonicalDescription
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TotalCanonicalDescription where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "totalCanonicalDescription")
instance ToJSON TotalCanonicalDescription where
  toJSON = genericToJSON (removeFieldLabelPrefix False "totalCanonicalDescription")


-- | A representation of a transaction
data Transaction = Transaction
  { transactionTransactionUnderscoretype :: Maybe Text -- ^ Please use the `payment_channel` field, `transaction_type` will be deprecated in the future.  `digital:` transactions that took place online.  `place:` transactions that were made at a physical location.  `special:` transactions that relate to banks, e.g. fees or deposits.  `unresolved:` transactions that do not fit into the other three types. 
  , transactionPendingUnderscoretransactionUnderscoreid :: Text -- ^ The ID of a posted transaction's associated pending transaction, where applicable.
  , transactionCategoryUnderscoreid :: Text -- ^ The ID of the category to which this transaction belongs. For a full list of categories, see [`/categories/get`](https://plaid.com/docs/api/products/transactions/#categoriesget).  If the `transactions` object was returned by an Assets endpoint such as `/asset_report/get/` or `/asset_report/pdf/get`, this field will only appear in an Asset Report with Insights.
  , transactionCategory :: [Text] -- ^ A hierarchical array of the categories to which this transaction belongs. For a full list of categories, see [`/categories/get`](https://plaid.com/docs/api/products/transactions/#categoriesget).  If the `transactions` object was returned by an Assets endpoint such as `/asset_report/get/` or `/asset_report/pdf/get`, this field will only appear in an Asset Report with Insights.
  , transactionLocation :: Location -- ^ 
  , transactionPaymentUnderscoremeta :: PaymentMeta -- ^ 
  , transactionAccountUnderscoreowner :: Text -- ^ The name of the account owner. This field is not typically populated and only relevant when dealing with sub-accounts.
  , transactionName :: Text -- ^ The merchant name or transaction description.  If the `transactions` object was returned by a Transactions endpoint such as `/transactions/get`, this field will always appear. If the `transactions` object was returned by an Assets endpoint such as `/asset_report/get/` or `/asset_report/pdf/get`, this field will only appear in an Asset Report with Insights.
  , transactionOriginalUnderscoredescription :: Maybe Text -- ^ The string returned by the financial institution to describe the transaction. For transactions returned by `/transactions/get`, this field is in beta and will be omitted unless the client is both enrolled in the closed beta program and has set `options.include_original_description` to `true`.
  , transactionAccountUnderscoreid :: Text -- ^ The ID of the account in which this transaction occurred.
  , transactionAmount :: Double -- ^ The settled value of the transaction, denominated in the account's currency, as stated in `iso_currency_code` or `unofficial_currency_code`. Positive values when money moves out of the account; negative values when money moves in. For example, debit card purchases are positive; credit card payments, direct deposits, and refunds are negative.
  , transactionIsoUnderscorecurrencyUnderscorecode :: Text -- ^ The ISO-4217 currency code of the transaction. Always `null` if `unofficial_currency_code` is non-null.
  , transactionUnofficialUnderscorecurrencyUnderscorecode :: Text -- ^ The unofficial currency code associated with the transaction. Always `null` if `iso_currency_code` is non-`null`. Unofficial currency codes are used for currencies that do not have official ISO currency codes, such as cryptocurrencies and the currencies of certain countries.  See the [currency code schema](https://plaid.com/docs/api/accounts#currency-code-schema) for a full listing of supported `iso_currency_code`s.
  , transactionDate :: Day -- ^ For pending transactions, the date that the transaction occurred; for posted transactions, the date that the transaction posted. Both dates are returned in an [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format ( `YYYY-MM-DD` ).
  , transactionPending :: Bool -- ^ When `true`, identifies the transaction as pending or unsettled. Pending transaction details (name, type, amount, category ID) may change before they are settled.
  , transactionTransactionUnderscoreid :: Text -- ^ The unique ID of the transaction. Like all Plaid identifiers, the `transaction_id` is case sensitive.
  , transactionMerchantUnderscorename :: Maybe Text -- ^ The merchant name, as extracted by Plaid from the `name` field.
  , transactionCheckUnderscorenumber :: Maybe Text -- ^ The check number of the transaction. This field is only populated for check transactions.
  , transactionPaymentUnderscorechannel :: Text -- ^ The channel used to make a payment. `online:` transactions that took place online.  `in store:` transactions that were made at a physical location.  `other:` transactions that relate to banks, e.g. fees or deposits.  This field replaces the `transaction_type` field. 
  , transactionAuthorizedUnderscoredate :: Day -- ^ The date that the transaction was authorized. Dates are returned in an [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format ( `YYYY-MM-DD` ). The `authorized_date` field uses machine learning to determine a transaction date for transactions where the `date_transacted` is not available. If the `date_transacted` field is present and not `null`, the `authorized_date` field will have the same value as the `date_transacted` field.
  , transactionAuthorizedUnderscoredatetime :: UTCTime -- ^ Date and time when a transaction was authorized in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format ( `YYYY-MM-DDTHH:mm:ssZ` ).  This field is returned for select financial institutions and comes as provided by the institution. It may contain default time values (such as 00:00:00).
  , transactionDatetime :: UTCTime -- ^ Date and time when a transaction was posted in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format ( `YYYY-MM-DDTHH:mm:ssZ` ).  This field is returned for select financial institutions and comes as provided by the institution. It may contain default time values (such as 00:00:00).
  , transactionTransactionUnderscorecode :: TransactionCode -- ^ 
  , transactionPersonalUnderscorefinanceUnderscorecategory :: Maybe PersonalFinanceCategory -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON Transaction where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transaction")
instance ToJSON Transaction where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transaction")


-- | 
data TransactionAllOf = TransactionAllOf
  { transactionAllOfPaymentUnderscorechannel :: Text -- ^ The channel used to make a payment. `online:` transactions that took place online.  `in store:` transactions that were made at a physical location.  `other:` transactions that relate to banks, e.g. fees or deposits.  This field replaces the `transaction_type` field. 
  , transactionAllOfAuthorizedUnderscoredate :: Day -- ^ The date that the transaction was authorized. Dates are returned in an [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format ( `YYYY-MM-DD` ). The `authorized_date` field uses machine learning to determine a transaction date for transactions where the `date_transacted` is not available. If the `date_transacted` field is present and not `null`, the `authorized_date` field will have the same value as the `date_transacted` field.
  , transactionAllOfAuthorizedUnderscoredatetime :: UTCTime -- ^ Date and time when a transaction was authorized in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format ( `YYYY-MM-DDTHH:mm:ssZ` ).  This field is returned for select financial institutions and comes as provided by the institution. It may contain default time values (such as 00:00:00).
  , transactionAllOfDatetime :: UTCTime -- ^ Date and time when a transaction was posted in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format ( `YYYY-MM-DDTHH:mm:ssZ` ).  This field is returned for select financial institutions and comes as provided by the institution. It may contain default time values (such as 00:00:00).
  , transactionAllOfTransactionUnderscorecode :: TransactionCode -- ^ 
  , transactionAllOfPersonalUnderscorefinanceUnderscorecategory :: Maybe PersonalFinanceCategory -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransactionAllOf where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transactionAllOf")
instance ToJSON TransactionAllOf where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transactionAllOf")


-- | A representation of a transaction
newtype TransactionBase = TransactionBase { unTransactionBase :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An identifier classifying the transaction type.  This field is only populated for European institutions. For institutions in the US and Canada, this field is set to &#x60;null&#x60;.  &#x60;adjustment:&#x60; Bank adjustment  &#x60;atm:&#x60; Cash deposit or withdrawal via an automated teller machine  &#x60;bank charge:&#x60; Charge or fee levied by the institution  &#x60;bill payment&#x60;: Payment of a bill  &#x60;cash:&#x60; Cash deposit or withdrawal  &#x60;cashback:&#x60; Cash withdrawal while making a debit card purchase  &#x60;cheque:&#x60; Document ordering the payment of money to another person or organization  &#x60;direct debit:&#x60; Automatic withdrawal of funds initiated by a third party at a regular interval  &#x60;interest:&#x60; Interest earned or incurred  &#x60;purchase:&#x60; Purchase made with a debit or credit card  &#x60;standing order:&#x60; Payment instructed by the account holder to a third party at a regular interval  &#x60;transfer:&#x60; Transfer of money between accounts
data TransactionCode = TransactionCode
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransactionCode where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transactionCode")
instance ToJSON TransactionCode where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transactionCode")


-- | Information about the matched direct deposit transaction used to verify a user&#39;s payroll information.
newtype TransactionData = TransactionData { unTransactionData :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Data to populate as test transaction data. If not specified, random transactions will be generated instead.
newtype TransactionOverride = TransactionOverride { unTransactionOverride :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | A grouping of related transactions
newtype TransactionStream = TransactionStream { unTransactionStream :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Object with data pertaining to an amount on the transaction stream.
newtype TransactionStreamAmount = TransactionStreamAmount { unTransactionStreamAmount :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The current status of the transaction stream.  &#x60;MATURE&#x60;: A &#x60;MATURE&#x60; recurring stream should have at least 3 transactions and happen on a regular cadence.  &#x60;EARLY_DETECTION&#x60;: When a recurring transaction first appears in the transaction history and before it fulfills the requirement of a mature stream, the status will be &#x60;EARLY_DETECTION&#x60;.  &#x60;TOMBSTONED&#x60;: A stream that was previously in the &#x60;EARLY_DETECTION&#x60; status will move to the &#x60;TOMBSTONED&#x60; status when no further transactions were found at the next expected date.  &#x60;UNKNOWN&#x60;: A stream is assigned an &#x60;UNKNOWN&#x60; status when none of the other statuses are applicable.
data TransactionStreamStatus = TransactionStreamStatus
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransactionStreamStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transactionStreamStatus")
instance ToJSON TransactionStreamStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transactionStreamStatus")


-- | A representation of a transactions category rule.
data TransactionsCategoryRule = TransactionsCategoryRule
  { transactionsCategoryRuleId :: Maybe Text -- ^ A unique identifier of the rule created
  , transactionsCategoryRuleItemUnderscoreid :: Maybe Text -- ^ A unique identifier of the item the rule was created for
  , transactionsCategoryRuleCreatedUnderscoreat :: Maybe UTCTime -- ^ Date and time when a rule was created in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format ( `YYYY-MM-DDTHH:mm:ssZ` ). 
  , transactionsCategoryRulePersonalUnderscorefinanceUnderscorecategory :: Maybe Text -- ^ Personal finance category unique identifier.  In the personal finance category taxonomy, this field is represented by the detailed category field. 
  , transactionsCategoryRuleRuleUnderscoredetails :: Maybe TransactionsRuleDetails -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransactionsCategoryRule where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transactionsCategoryRule")
instance ToJSON TransactionsCategoryRule where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transactionsCategoryRule")


-- | TransactionsEnhanceGetRequest defines the request schema for &#x60;/transactions/enhance&#x60;.
data TransactionsEnhanceGetRequest = TransactionsEnhanceGetRequest
  { transactionsEnhanceGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , transactionsEnhanceGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , transactionsEnhanceGetRequestAccountUnderscoretype :: Text -- ^ The type of account for the requested transactions (`depository` or `credit`).
  , transactionsEnhanceGetRequestTransactions :: [ClientProvidedRawTransaction] -- ^ An array of raw transactions to be enhanced.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransactionsEnhanceGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transactionsEnhanceGetRequest")
instance ToJSON TransactionsEnhanceGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transactionsEnhanceGetRequest")


-- | TransactionsEnhanceGetResponse defines the response schema for &#x60;/transactions/enhance&#x60;.
newtype TransactionsEnhanceGetResponse = TransactionsEnhanceGetResponse { unTransactionsEnhanceGetResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | TransactionsGetRequest defines the request schema for &#x60;/transactions/get&#x60;
data TransactionsGetRequest = TransactionsGetRequest
  { transactionsGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , transactionsGetRequestOptions :: Maybe TransactionsGetRequestOptions -- ^ 
  , transactionsGetRequestAccessUnderscoretoken :: Text -- ^ The access token associated with the Item data is being requested for.
  , transactionsGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , transactionsGetRequestStartUnderscoredate :: Day -- ^ The earliest date for which data should be returned. Dates should be formatted as YYYY-MM-DD.
  , transactionsGetRequestEndUnderscoredate :: Day -- ^ The latest date for which data should be returned. Dates should be formatted as YYYY-MM-DD.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransactionsGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transactionsGetRequest")
instance ToJSON TransactionsGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transactionsGetRequest")


-- | An optional object to be used with the request. If specified, &#x60;options&#x60; must not be &#x60;null&#x60;.
data TransactionsGetRequestOptions = TransactionsGetRequestOptions
  { transactionsGetRequestOptionsAccountUnderscoreids :: Maybe [Text] -- ^ A list of `account_ids` to retrieve for the Item  Note: An error will be returned if a provided `account_id` is not associated with the Item.
  , transactionsGetRequestOptionsCount :: Maybe Int -- ^ The number of transactions to fetch.
  , transactionsGetRequestOptionsOffset :: Maybe Int -- ^ The number of transactions to skip. The default value is 0.
  , transactionsGetRequestOptionsIncludeUnderscoreoriginalUnderscoredescription :: Maybe Bool -- ^ Include the raw unparsed transaction description from the financial institution. This field is disabled by default. If you need this information in addition to the parsed data provided, contact your Plaid Account Manager.
  , transactionsGetRequestOptionsIncludeUnderscorepersonalUnderscorefinanceUnderscorecategoryUnderscorebeta :: Maybe Bool -- ^ Please use [`include_personal_finance_category`](https://plaid.com/docs/api/products/transactions/#transactions-get-request-options-include-personal-finance-category) instead.
  , transactionsGetRequestOptionsIncludeUnderscorepersonalUnderscorefinanceUnderscorecategory :: Maybe Bool -- ^ Include the [`personal_finance_category`](https://plaid.com/docs/api/products/transactions/#transactions-get-response-transactions-personal-finance-category) object in the response.  See the [`taxonomy csv file`](https://plaid.com/documents/transactions-personal-finance-category-taxonomy.csv) for a full list of personal finance categories.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransactionsGetRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transactionsGetRequestOptions")
instance ToJSON TransactionsGetRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transactionsGetRequestOptions")


-- | TransactionsGetResponse defines the response schema for &#x60;/transactions/get&#x60;
newtype TransactionsGetResponse = TransactionsGetResponse { unTransactionsGetResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | TransactionsRecurringGetRequest defines the request schema for &#x60;/transactions/recurring/get&#x60;
data TransactionsRecurringGetRequest = TransactionsRecurringGetRequest
  { transactionsRecurringGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , transactionsRecurringGetRequestAccessUnderscoretoken :: Text -- ^ The access token associated with the Item data is being requested for.
  , transactionsRecurringGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , transactionsRecurringGetRequestOptions :: Maybe TransactionsRecurringGetRequestOptions -- ^ 
  , transactionsRecurringGetRequestAccountUnderscoreids :: [Text] -- ^ A list of `account_ids` to retrieve for the Item  Note: An error will be returned if a provided `account_id` is not associated with the Item.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransactionsRecurringGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transactionsRecurringGetRequest")
instance ToJSON TransactionsRecurringGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transactionsRecurringGetRequest")


-- | An optional object to be used with the request. If specified, &#x60;options&#x60; must not be &#x60;null&#x60;.
data TransactionsRecurringGetRequestOptions = TransactionsRecurringGetRequestOptions
  { transactionsRecurringGetRequestOptionsIncludeUnderscorepersonalUnderscorefinanceUnderscorecategory :: Maybe Bool -- ^ Include the [`personal_finance_category`](https://plaid.com/docs/api/products/transactions/#transactions-get-response-transactions-personal-finance-category) object for each transaction stream in the response.  See the [`taxonomy csv file`](https://plaid.com/documents/transactions-personal-finance-category-taxonomy.csv) for a full list of personal finance categories.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransactionsRecurringGetRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transactionsRecurringGetRequestOptions")
instance ToJSON TransactionsRecurringGetRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transactionsRecurringGetRequestOptions")


-- | TransactionsRecurringGetResponse defines the response schema for &#x60;/transactions/recurring/get&#x60;
newtype TransactionsRecurringGetResponse = TransactionsRecurringGetResponse { unTransactionsRecurringGetResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | TransactionsRefreshRequest defines the request schema for &#x60;/transactions/refresh&#x60;
data TransactionsRefreshRequest = TransactionsRefreshRequest
  { transactionsRefreshRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , transactionsRefreshRequestAccessUnderscoretoken :: Text -- ^ The access token associated with the Item data is being requested for.
  , transactionsRefreshRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransactionsRefreshRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transactionsRefreshRequest")
instance ToJSON TransactionsRefreshRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transactionsRefreshRequest")


-- | TransactionsRefreshResponse defines the response schema for &#x60;/transactions/refresh&#x60;
newtype TransactionsRefreshResponse = TransactionsRefreshResponse { unTransactionsRefreshResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Fired when transaction(s) for an Item are deleted. The deleted transaction IDs are included in the webhook payload. Plaid will typically check for deleted transaction data several times a day.
newtype TransactionsRemovedWebhook = TransactionsRemovedWebhook { unTransactionsRemovedWebhook :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | A representation of transactions rule details.
data TransactionsRuleDetails = TransactionsRuleDetails
  { transactionsRuleDetailsField :: TransactionsRuleField -- ^ 
  , transactionsRuleDetailsType :: TransactionsRuleType -- ^ 
  , transactionsRuleDetailsQuery :: Text -- ^ For TRANSACTION_ID field, provide transaction_id. For NAME field, provide a string pattern. 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransactionsRuleDetails where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transactionsRuleDetails")
instance ToJSON TransactionsRuleDetails where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transactionsRuleDetails")


-- | Transaction field for which the rule is defined.
data TransactionsRuleField = TransactionsRuleField
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransactionsRuleField where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transactionsRuleField")
instance ToJSON TransactionsRuleField where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transactionsRuleField")


-- | Transaction rule&#39;s match type. For TRANSACTION_ID field, EXACT_MATCH is available. Matches are case sensitive. 
data TransactionsRuleType = TransactionsRuleType
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransactionsRuleType where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transactionsRuleType")
instance ToJSON TransactionsRuleType where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transactionsRuleType")


-- | TransactionsRulesCreateRequest defines the request schema for &#x60;beta/transactions/rules/v1/create&#x60;
data TransactionsRulesCreateRequest = TransactionsRulesCreateRequest
  { transactionsRulesCreateRequestClientUnderscoreid :: Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , transactionsRulesCreateRequestAccessUnderscoretoken :: Text -- ^ The access token associated with the Item data is being requested for.
  , transactionsRulesCreateRequestSecret :: Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , transactionsRulesCreateRequestPersonalUnderscorefinanceUnderscorecategory :: Text -- ^ Personal finance detailed category.  See the [`taxonomy csv file`](https://plaid.com/documents/transactions-personal-finance-category-taxonomy.csv) for a full list of personal finance categories. 
  , transactionsRulesCreateRequestRuleUnderscoredetails :: TransactionsRuleDetails -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransactionsRulesCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transactionsRulesCreateRequest")
instance ToJSON TransactionsRulesCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transactionsRulesCreateRequest")


-- | TransactionsRulesCreateResponse defines the response schema for &#x60;/beta/transactions/rules/v1/create&#x60;
newtype TransactionsRulesCreateResponse = TransactionsRulesCreateResponse { unTransactionsRulesCreateResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | TransactionsRulesListRequest defines the request schema for &#x60;/beta/transactions/rules/v1/list&#x60;
data TransactionsRulesListRequest = TransactionsRulesListRequest
  { transactionsRulesListRequestClientUnderscoreid :: Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , transactionsRulesListRequestAccessUnderscoretoken :: Text -- ^ The access token associated with the Item data is being requested for.
  , transactionsRulesListRequestSecret :: Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransactionsRulesListRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transactionsRulesListRequest")
instance ToJSON TransactionsRulesListRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transactionsRulesListRequest")


-- | TransactionsRulesListResponse defines the response schema for &#x60;/beta/transactions/rules/v1/list&#x60;
newtype TransactionsRulesListResponse = TransactionsRulesListResponse { unTransactionsRulesListResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | TransactionsRulesRemoveRequest defines the request schema for &#x60;/beta/transactions/rules/v1/remove&#x60;
data TransactionsRulesRemoveRequest = TransactionsRulesRemoveRequest
  { transactionsRulesRemoveRequestClientUnderscoreid :: Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , transactionsRulesRemoveRequestAccessUnderscoretoken :: Text -- ^ The access token associated with the Item data is being requested for.
  , transactionsRulesRemoveRequestSecret :: Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , transactionsRulesRemoveRequestRuleUnderscoreid :: Text -- ^ A rule's unique identifier
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransactionsRulesRemoveRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transactionsRulesRemoveRequest")
instance ToJSON TransactionsRulesRemoveRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transactionsRulesRemoveRequest")


-- | TransactionsRulesRemoveResponse defines the response schema for &#x60;/beta/transactions/rules/v1/remove&#x60;
newtype TransactionsRulesRemoveResponse = TransactionsRulesRemoveResponse { unTransactionsRulesRemoveResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | TransactionsSyncRequest defines the request schema for &#x60;/transactions/sync&#x60;
data TransactionsSyncRequest = TransactionsSyncRequest
  { transactionsSyncRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , transactionsSyncRequestAccessUnderscoretoken :: Text -- ^ The access token associated with the Item data is being requested for.
  , transactionsSyncRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , transactionsSyncRequestCursor :: Maybe Text -- ^ The cursor value represents the last update requested. Providing it will cause the response to only return changes after this update. If omitted, the entire history of updates will be returned, starting with the first-added transactions on the item. Note: The upper-bound length of this cursor is 256 characters of base64.
  , transactionsSyncRequestCount :: Maybe Int -- ^ The number of transaction updates to fetch.
  , transactionsSyncRequestOptions :: Maybe TransactionsSyncRequestOptions -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransactionsSyncRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transactionsSyncRequest")
instance ToJSON TransactionsSyncRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transactionsSyncRequest")


-- | An optional object to be used with the request. If specified, &#x60;options&#x60; must not be &#x60;null&#x60;.
data TransactionsSyncRequestOptions = TransactionsSyncRequestOptions
  { transactionsSyncRequestOptionsIncludeUnderscoreoriginalUnderscoredescription :: Maybe Bool -- ^ Include the raw unparsed transaction description from the financial institution. This field is disabled by default. If you need this information in addition to the parsed data provided, contact your Plaid Account Manager.
  , transactionsSyncRequestOptionsIncludeUnderscorepersonalUnderscorefinanceUnderscorecategory :: Maybe Bool -- ^ Include the [`personal_finance_category`](https://plaid.com/docs/api/products/transactions/#transactions-sync-response-transactions-personal-finance-category) object in the response.  See the [`taxonomy csv file`](https://plaid.com/documents/transactions-personal-finance-category-taxonomy.csv) for a full list of personal finance categories.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransactionsSyncRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transactionsSyncRequestOptions")
instance ToJSON TransactionsSyncRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transactionsSyncRequestOptions")


-- | TransactionsSyncResponse defines the response schema for &#x60;/transactions/sync&#x60;
newtype TransactionsSyncResponse = TransactionsSyncResponse { unTransactionsSyncResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Represents a transfer within the Transfers API.
newtype Transfer = Transfer { unTransfer :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Contains the authorization decision for a proposed transfer
newtype TransferAuthorization = TransferAuthorization { unTransferAuthorization :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Defines the request schema for &#x60;/transfer/authorization/create&#x60;
data TransferAuthorizationCreateRequest = TransferAuthorizationCreateRequest
  { transferAuthorizationCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , transferAuthorizationCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , transferAuthorizationCreateRequestAccessUnderscoretoken :: Text -- ^ The Plaid `access_token` for the account that will be debited or credited.
  , transferAuthorizationCreateRequestAccountUnderscoreid :: Text -- ^ The Plaid `account_id` for the account that will be debited or credited.
  , transferAuthorizationCreateRequestType :: TransferType -- ^ 
  , transferAuthorizationCreateRequestNetwork :: TransferNetwork -- ^ 
  , transferAuthorizationCreateRequestAmount :: Text -- ^ The amount of the transfer (decimal string with two digits of precision e.g. \"10.00\").
  , transferAuthorizationCreateRequestAchUnderscoreclass :: ACHClass -- ^ 
  , transferAuthorizationCreateRequestUser :: TransferUserInRequest -- ^ 
  , transferAuthorizationCreateRequestDevice :: Maybe TransferAuthorizationDevice -- ^ 
  , transferAuthorizationCreateRequestOriginationUnderscoreaccountUnderscoreid :: Maybe Text -- ^ Plaid's unique identifier for the origination account for this authorization. If not specified, the default account will be used.
  , transferAuthorizationCreateRequestIsoUnderscorecurrencyUnderscorecode :: Maybe Text -- ^ The currency of the transfer amount. The default value is \"USD\".
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferAuthorizationCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferAuthorizationCreateRequest")
instance ToJSON TransferAuthorizationCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferAuthorizationCreateRequest")


-- | Defines the response schema for &#x60;/transfer/authorization/create&#x60;
newtype TransferAuthorizationCreateResponse = TransferAuthorizationCreateResponse { unTransferAuthorizationCreateResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- |  A decision regarding the proposed transfer.  &#x60;approved&#x60; – The proposed transfer has received the end user&#39;s consent and has been approved for processing by Plaid. The &#x60;decision_rationale&#x60; field is set if Plaid was unable to fetch the account information. You may proceed with the transfer, but further review is recommended (i.e., use Link in update to re-authenticate your user when &#x60;decision_rationale.code&#x60; is &#x60;LOGIN_REQUIRED&#x60;). Refer to the &#x60;code&#x60; field in the &#x60;decision_rationale&#x60; object for details.  &#x60;declined&#x60; – Plaid reviewed the proposed transfer and declined processing. Refer to the &#x60;code&#x60; field in the &#x60;decision_rationale&#x60; object for details.
data TransferAuthorizationDecision = TransferAuthorizationDecision
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferAuthorizationDecision where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferAuthorizationDecision")
instance ToJSON TransferAuthorizationDecision where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferAuthorizationDecision")


-- | The rationale for Plaid&#39;s decision regarding a proposed transfer. It is always set for &#x60;declined&#x60; decisions, and may or may not be null for &#x60;approved&#x60; decisions.
newtype TransferAuthorizationDecisionRationale = TransferAuthorizationDecisionRationale { unTransferAuthorizationDecisionRationale :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | A code representing the rationale for approving or declining the proposed transfer. Possible values are:  &#x60;MANUALLY_VERIFIED_ITEM&#x60; – Item created via same-day micro deposits, limited information available. Plaid will offer &#x60;approved&#x60; as a transaction decision.  &#x60;LOGIN_REQUIRED&#x60; – Unable to collect the account information due to Item staleness. Can be rectified using Link in update mode. Plaid will offer &#x60;approved&#x60; as a transaction decision.  &#x60;ERROR&#x60; – Unable to collect the account information due to an error. Plaid will offer &#x60;approved&#x60; as a transaction decision.  &#x60;NSF&#x60; – Transaction likely to result in a return due to insufficient funds. Plaid will offer &#x60;declined&#x60; as a transaction decision.  &#x60;RISK&#x60; - Transaction is high-risk. Plaid will offer &#x60;declined&#x60; as a transaction decision.
data TransferAuthorizationDecisionRationaleCode = TransferAuthorizationDecisionRationaleCode
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferAuthorizationDecisionRationaleCode where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferAuthorizationDecisionRationaleCode")
instance ToJSON TransferAuthorizationDecisionRationaleCode where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferAuthorizationDecisionRationaleCode")


-- | Information about the device being used to initiate the authorization.
newtype TransferAuthorizationDevice = TransferAuthorizationDevice { unTransferAuthorizationDevice :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Indicates whether the transfer is guaranteed by Plaid (Guaranteed ACH customers only). This field will contain either &#x60;GUARANTEED&#x60; or &#x60;NOT_GUARANTEED&#x60; indicating whether Plaid will guarantee the transfer. If the transfer is not guaranteed, additional information will be provided in the &#x60;guarantee_decision_rationale&#x60; field. Refer to the &#x60;code&#x60; field in &#x60;guarantee_decision_rationale&#x60; for details.
data TransferAuthorizationGuaranteeDecision = TransferAuthorizationGuaranteeDecision
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferAuthorizationGuaranteeDecision where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferAuthorizationGuaranteeDecision")
instance ToJSON TransferAuthorizationGuaranteeDecision where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferAuthorizationGuaranteeDecision")


-- | The rationale for Plaid&#39;s decision to not guarantee a transfer. Will be &#x60;null&#x60; unless &#x60;guarantee_decision&#x60; is &#x60;NOT_GUARANTEED&#x60;.
newtype TransferAuthorizationGuaranteeDecisionRationale = TransferAuthorizationGuaranteeDecisionRationale { unTransferAuthorizationGuaranteeDecisionRationale :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | A code representing the reason Plaid declined to guarantee this transfer:  &#x60;RETURN_BANK&#x60;: The risk of a bank-initiated return (for example, an R01/NSF) is too high to guarantee this transfer.  &#x60;RETURN_CUSTOMER&#x60;: The risk of a customer-initiated return (for example, a R10/Unauthorized) is too high to guarantee this transfer.  &#x60;GUARANTEE_LIMIT_REACHED&#x60;: This transfer is low-risk, but Guaranteed ACH has exhausted an internal limit on the number or rate of guarantees that applies to this transfer.  &#x60;RISK_ESTIMATE_UNAVAILABLE&#x60;: A risk estimate is unavailable for this Item.
data TransferAuthorizationGuaranteeDecisionRationaleCode = TransferAuthorizationGuaranteeDecisionRationaleCode
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferAuthorizationGuaranteeDecisionRationaleCode where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferAuthorizationGuaranteeDecisionRationaleCode")
instance ToJSON TransferAuthorizationGuaranteeDecisionRationaleCode where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferAuthorizationGuaranteeDecisionRationaleCode")


-- | Details regarding the proposed transfer.
newtype TransferAuthorizationProposedTransfer = TransferAuthorizationProposedTransfer { unTransferAuthorizationProposedTransfer :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Defines the request schema for &#x60;/transfer/cancel&#x60;
data TransferCancelRequest = TransferCancelRequest
  { transferCancelRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , transferCancelRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , transferCancelRequestTransferUnderscoreid :: Text -- ^ Plaid’s unique identifier for a transfer.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferCancelRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferCancelRequest")
instance ToJSON TransferCancelRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferCancelRequest")


-- | Defines the response schema for &#x60;/transfer/cancel&#x60;
newtype TransferCancelResponse = TransferCancelResponse { unTransferCancelResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Defines the request schema for &#x60;/transfer/create&#x60;
data TransferCreateRequest = TransferCreateRequest
  { transferCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , transferCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , transferCreateRequestIdempotencyUnderscorekey :: Maybe Text -- ^ Deprecated. `authorization_id` is now used as idempotency instead.  A random key provided by the client, per unique transfer. Maximum of 50 characters.  The API supports idempotency for safely retrying requests without accidentally performing the same operation twice. For example, if a request to create a transfer fails due to a network connection error, you can retry the request with the same idempotency key to guarantee that only a single transfer is created.
  , transferCreateRequestAccessUnderscoretoken :: Text -- ^ The Plaid `access_token` for the account that will be debited or credited.
  , transferCreateRequestAccountUnderscoreid :: Text -- ^ The Plaid `account_id` for the account that will be debited or credited.
  , transferCreateRequestAuthorizationUnderscoreid :: Text -- ^ Plaid’s unique identifier for a transfer authorization. This parameter also serves the purpose of acting as an idempotency identifier.
  , transferCreateRequestType :: TransferType -- ^ 
  , transferCreateRequestNetwork :: TransferNetwork -- ^ 
  , transferCreateRequestAmount :: Text -- ^ The amount of the transfer (decimal string with two digits of precision e.g. \"10.00\").
  , transferCreateRequestDescription :: Text -- ^ The transfer description. Maximum of 10 characters.
  , transferCreateRequestAchUnderscoreclass :: ACHClass -- ^ 
  , transferCreateRequestUser :: TransferUserInRequest -- ^ 
  , transferCreateRequestMetadata :: Maybe (Map.Map String Text) -- ^ The Metadata object is a mapping of client-provided string fields to any string value. The following limitations apply: - The JSON values must be Strings (no nested JSON objects allowed) - Only ASCII characters may be used - Maximum of 50 key/value pairs - Maximum key length of 40 characters - Maximum value length of 500 characters 
  , transferCreateRequestOriginationUnderscoreaccountUnderscoreid :: Maybe Text -- ^ Plaid’s unique identifier for the origination account for this transfer. If you have more than one origination account, this value must be specified. Otherwise, this field should be left blank.
  , transferCreateRequestIsoUnderscorecurrencyUnderscorecode :: Maybe Text -- ^ The currency of the transfer amount. The default value is \"USD\".
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferCreateRequest")
instance ToJSON TransferCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferCreateRequest")


-- | Defines the response schema for &#x60;/transfer/create&#x60;
newtype TransferCreateResponse = TransferCreateResponse { unTransferCreateResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Represents an event in the Transfers API.
newtype TransferEvent = TransferEvent { unTransferEvent :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Defines the request schema for &#x60;/transfer/event/list&#x60;
data TransferEventListRequest = TransferEventListRequest
  { transferEventListRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , transferEventListRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , transferEventListRequestStartUnderscoredate :: Maybe UTCTime -- ^ The start datetime of transfers to list. This should be in RFC 3339 format (i.e. `2019-12-06T22:35:49Z`)
  , transferEventListRequestEndUnderscoredate :: Maybe UTCTime -- ^ The end datetime of transfers to list. This should be in RFC 3339 format (i.e. `2019-12-06T22:35:49Z`)
  , transferEventListRequestTransferUnderscoreid :: Maybe Text -- ^ Plaid’s unique identifier for a transfer.
  , transferEventListRequestAccountUnderscoreid :: Maybe Text -- ^ The account ID to get events for all transactions to/from an account.
  , transferEventListRequestTransferUnderscoretype :: Maybe TransferEventListTransferType -- ^ 
  , transferEventListRequestEventUnderscoretypes :: Maybe [TransferEventType] -- ^ Filter events by event type.
  , transferEventListRequestSweepUnderscoreid :: Maybe Text -- ^ Plaid’s unique identifier for a sweep.
  , transferEventListRequestCount :: Maybe Int -- ^ The maximum number of transfer events to return. If the number of events matching the above parameters is greater than `count`, the most recent events will be returned.
  , transferEventListRequestOffset :: Maybe Int -- ^ The offset into the list of transfer events. When `count`=25 and `offset`=0, the first 25 events will be returned. When `count`=25 and `offset`=25, the next 25 bank transfer events will be returned.
  , transferEventListRequestOriginationUnderscoreaccountUnderscoreid :: Maybe Text -- ^ The origination account ID to get events for transfers from a specific origination account.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferEventListRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferEventListRequest")
instance ToJSON TransferEventListRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferEventListRequest")


-- | Defines the response schema for &#x60;/transfer/event/list&#x60;
newtype TransferEventListResponse = TransferEventListResponse { unTransferEventListResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The type of transfer. This will be either &#x60;debit&#x60; or &#x60;credit&#x60;.  A &#x60;debit&#x60; indicates a transfer of money into your origination account; a &#x60;credit&#x60; indicates a transfer of money out of your origination account.
data TransferEventListTransferType = TransferEventListTransferType
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferEventListTransferType where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferEventListTransferType")
instance ToJSON TransferEventListTransferType where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferEventListTransferType")


-- | Defines the request schema for &#x60;/transfer/event/sync&#x60;
data TransferEventSyncRequest = TransferEventSyncRequest
  { transferEventSyncRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , transferEventSyncRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , transferEventSyncRequestAfterUnderscoreid :: Int -- ^ The latest (largest) `event_id` fetched via the sync endpoint, or 0 initially.
  , transferEventSyncRequestCount :: Maybe Int -- ^ The maximum number of transfer events to return.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferEventSyncRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferEventSyncRequest")
instance ToJSON TransferEventSyncRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferEventSyncRequest")


-- | Defines the response schema for &#x60;/transfer/event/sync&#x60;
newtype TransferEventSyncResponse = TransferEventSyncResponse { unTransferEventSyncResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The type of event that this transfer represents.  &#x60;pending&#x60;: A new transfer was created; it is in the pending state.  &#x60;cancelled&#x60;: The transfer was cancelled by the client.  &#x60;failed&#x60;: The transfer failed, no funds were moved.  &#x60;posted&#x60;: The transfer has been successfully submitted to the payment network.  &#x60;returned&#x60;: A posted transfer was returned.  &#x60;swept&#x60;: The transfer was swept to / from the sweep account.  &#x60;return_swept&#x60;: Due to the transfer being returned, funds were pulled from or pushed back to the sweep account.
data TransferEventType = TransferEventType
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferEventType where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferEventType")
instance ToJSON TransferEventType where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferEventType")


-- | Fired when new transfer events are available. Receiving this webhook indicates you should fetch the new events from &#x60;/transfer/event/sync&#x60;.
newtype TransferEventsUpdateWebhook = TransferEventsUpdateWebhook { unTransferEventsUpdateWebhook :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The failure reason if the event type for a transfer is &#x60;\&quot;failed\&quot;&#x60; or &#x60;\&quot;returned\&quot;&#x60;. Null value otherwise.
newtype TransferFailure = TransferFailure { unTransferFailure :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Defines the request schema for &#x60;/transfer/get&#x60;
data TransferGetRequest = TransferGetRequest
  { transferGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , transferGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , transferGetRequestTransferUnderscoreid :: Text -- ^ Plaid’s unique identifier for a transfer.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferGetRequest")
instance ToJSON TransferGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferGetRequest")


-- | Defines the response schema for &#x60;/transfer/get&#x60;
newtype TransferGetResponse = TransferGetResponse { unTransferGetResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- |  A decision regarding the proposed transfer.  &#x60;APPROVED&#x60; – The proposed transfer has received the end user&#39;s consent and has been approved for processing by Plaid. The &#x60;decision_rationale&#x60; field is set if Plaid was unable to fetch the account information. You may proceed with the transfer, but further review is recommended (i.e., use Link in update to re-authenticate your user when &#x60;decision_rationale.code&#x60; is &#x60;LOGIN_REQUIRED&#x60;). Refer to the &#x60;code&#x60; field in the &#x60;decision_rationale&#x60; object for details.  &#x60;DECLINED&#x60; – Plaid reviewed the proposed transfer and declined processing. Refer to the &#x60;code&#x60; field in the &#x60;decision_rationale&#x60; object for details.
data TransferIntentAuthorizationDecision = TransferIntentAuthorizationDecision
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferIntentAuthorizationDecision where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferIntentAuthorizationDecision")
instance ToJSON TransferIntentAuthorizationDecision where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferIntentAuthorizationDecision")


-- | Represents a transfer intent within Transfer UI.
newtype TransferIntentCreate = TransferIntentCreate { unTransferIntentCreate :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The direction of the flow of transfer funds.  - &#x60;PAYMENT&#x60; – Transfers funds from an end user&#39;s account to your business account.  - &#x60;DISBURSEMENT&#x60; – Transfers funds from your business account to an end user&#39;s account.
data TransferIntentCreateMode = TransferIntentCreateMode
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferIntentCreateMode where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferIntentCreateMode")
instance ToJSON TransferIntentCreateMode where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferIntentCreateMode")


-- | Defines the request schema for &#x60;/transfer/intent/create&#x60;
data TransferIntentCreateRequest = TransferIntentCreateRequest
  { transferIntentCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , transferIntentCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , transferIntentCreateRequestAccountUnderscoreid :: Maybe Text -- ^ The Plaid `account_id` for the account that will be debited or credited.
  , transferIntentCreateRequestMode :: TransferIntentCreateMode -- ^ 
  , transferIntentCreateRequestAmount :: Text -- ^ The amount of the transfer (decimal string with two digits of precision e.g. \"10.00\").
  , transferIntentCreateRequestDescription :: Text -- ^ A description for the underlying transfer. Maximum of 8 characters.
  , transferIntentCreateRequestAchUnderscoreclass :: ACHClass -- ^ 
  , transferIntentCreateRequestOriginationUnderscoreaccountUnderscoreid :: Maybe Text -- ^ Plaid’s unique identifier for the origination account for the intent. If not provided, the default account will be used.
  , transferIntentCreateRequestUser :: TransferUserInRequest -- ^ 
  , transferIntentCreateRequestMetadata :: Maybe (Map.Map String Text) -- ^ The Metadata object is a mapping of client-provided string fields to any string value. The following limitations apply: - The JSON values must be Strings (no nested JSON objects allowed) - Only ASCII characters may be used - Maximum of 50 key/value pairs - Maximum key length of 40 characters - Maximum value length of 500 characters 
  , transferIntentCreateRequestIsoUnderscorecurrencyUnderscorecode :: Maybe Text -- ^ The currency of the transfer amount, e.g. \"USD\"
  , transferIntentCreateRequestRequireUnderscoreguarantee :: Maybe Bool -- ^ When `true`, the transfer requires a `GUARANTEED` decision by Plaid to proceed (Guaranteed ACH customers only).
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferIntentCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferIntentCreateRequest")
instance ToJSON TransferIntentCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferIntentCreateRequest")


-- | Defines the response schema for &#x60;/transfer/intent/create&#x60;
newtype TransferIntentCreateResponse = TransferIntentCreateResponse { unTransferIntentCreateResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Represents a transfer intent within Transfer UI.
newtype TransferIntentGet = TransferIntentGet { unTransferIntentGet :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The reason for a failed transfer intent. Returned only if the transfer intent status is &#x60;failed&#x60;. Null otherwise.
newtype TransferIntentGetFailureReason = TransferIntentGetFailureReason { unTransferIntentGetFailureReason :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Defines the request schema for &#x60;/transfer/intent/get&#x60;
newtype TransferIntentGetRequest = TransferIntentGetRequest { unTransferIntentGetRequest :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Defines the response schema for &#x60;/transfer/intent/get&#x60;
newtype TransferIntentGetResponse = TransferIntentGetResponse { unTransferIntentGetResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The status of the transfer intent.  - &#x60;PENDING&#x60; – The transfer intent is pending. - &#x60;SUCCEEDED&#x60; – The transfer intent was successfully created. - &#x60;FAILED&#x60; – The transfer intent was unable to be created.
data TransferIntentStatus = TransferIntentStatus
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferIntentStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferIntentStatus")
instance ToJSON TransferIntentStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferIntentStatus")


-- | Defines the request schema for &#x60;/transfer/list&#x60;
data TransferListRequest = TransferListRequest
  { transferListRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , transferListRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , transferListRequestStartUnderscoredate :: Maybe UTCTime -- ^ The start datetime of transfers to list. This should be in RFC 3339 format (i.e. `2019-12-06T22:35:49Z`)
  , transferListRequestEndUnderscoredate :: Maybe UTCTime -- ^ The end datetime of transfers to list. This should be in RFC 3339 format (i.e. `2019-12-06T22:35:49Z`)
  , transferListRequestCount :: Maybe Int -- ^ The maximum number of transfers to return.
  , transferListRequestOffset :: Maybe Int -- ^ The number of transfers to skip before returning results.
  , transferListRequestOriginationUnderscoreaccountUnderscoreid :: Maybe Text -- ^ Filter transfers to only those originated through the specified origination account.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferListRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferListRequest")
instance ToJSON TransferListRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferListRequest")


-- | Defines the response schema for &#x60;/transfer/list&#x60;
newtype TransferListResponse = TransferListResponse { unTransferListResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Defines the request schema for &#x60;/transfer/migrate_account&#x60;
data TransferMigrateAccountRequest = TransferMigrateAccountRequest
  { transferMigrateAccountRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , transferMigrateAccountRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , transferMigrateAccountRequestAccountUnderscorenumber :: Text -- ^ The user's account number.
  , transferMigrateAccountRequestRoutingUnderscorenumber :: Text -- ^ The user's routing number.
  , transferMigrateAccountRequestWireUnderscoreroutingUnderscorenumber :: Maybe Text -- ^ The user's wire transfer routing number. This is the ABA number; for some institutions, this may differ from the ACH number used in `routing_number`.
  , transferMigrateAccountRequestAccountUnderscoretype :: Text -- ^ The type of the bank account (`checking` or `savings`).
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferMigrateAccountRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferMigrateAccountRequest")
instance ToJSON TransferMigrateAccountRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferMigrateAccountRequest")


-- | Defines the response schema for &#x60;/transfer/migrate_account&#x60;
newtype TransferMigrateAccountResponse = TransferMigrateAccountResponse { unTransferMigrateAccountResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The network or rails used for the transfer. Valid options are &#x60;ach&#x60; or &#x60;same-day-ach&#x60;.
data TransferNetwork = TransferNetwork
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferNetwork where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferNetwork")
instance ToJSON TransferNetwork where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferNetwork")


-- | A repayment is created automatically after one or more guaranteed transactions receive a return. If there are multiple eligible returns in a day, they are batched together into a single repayment.  Repayments are sent over ACH, with funds typically available on the next banking day.
newtype TransferRepayment = TransferRepayment { unTransferRepayment :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Defines the request schema for &#x60;/transfer/repayment/list&#x60;
data TransferRepaymentListRequest = TransferRepaymentListRequest
  { transferRepaymentListRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , transferRepaymentListRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , transferRepaymentListRequestStartUnderscoredate :: Maybe UTCTime -- ^ The start datetime of repayments to return (RFC 3339 format).
  , transferRepaymentListRequestEndUnderscoredate :: Maybe UTCTime -- ^ The end datetime of repayments to return (RFC 3339 format).
  , transferRepaymentListRequestCount :: Maybe Int -- ^ The maximum number of repayments to return.
  , transferRepaymentListRequestOffset :: Maybe Int -- ^ The number of repayments to skip before returning results.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferRepaymentListRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferRepaymentListRequest")
instance ToJSON TransferRepaymentListRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferRepaymentListRequest")


-- | Defines the response schema for &#x60;/transfer/repayments/list&#x60;
newtype TransferRepaymentListResponse = TransferRepaymentListResponse { unTransferRepaymentListResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Represents a return on a Guaranteed ACH transfer that is included in the specified repayment.
newtype TransferRepaymentReturn = TransferRepaymentReturn { unTransferRepaymentReturn :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Defines the request schema for &#x60;/transfer/repayment/return/list&#x60;
data TransferRepaymentReturnListRequest = TransferRepaymentReturnListRequest
  { transferRepaymentReturnListRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , transferRepaymentReturnListRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , transferRepaymentReturnListRequestRepaymentUnderscoreid :: Text -- ^ Identifier of the repayment to query.
  , transferRepaymentReturnListRequestCount :: Maybe Int -- ^ The maximum number of repayments to return.
  , transferRepaymentReturnListRequestOffset :: Maybe Int -- ^ The number of repayments to skip before returning results.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferRepaymentReturnListRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferRepaymentReturnListRequest")
instance ToJSON TransferRepaymentReturnListRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferRepaymentReturnListRequest")


-- | Defines the response schema for &#x60;/transfer/repayments/return/list&#x60;
newtype TransferRepaymentReturnListResponse = TransferRepaymentReturnListResponse { unTransferRepaymentReturnListResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The status of the transfer.
data TransferStatus = TransferStatus
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferStatus")
instance ToJSON TransferStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferStatus")


-- | Describes a sweep of funds to / from the sweep account.  A sweep is associated with many sweep events (events of type &#x60;swept&#x60; or &#x60;return_swept&#x60;) which can be retrieved by invoking the &#x60;/transfer/event/list&#x60; endpoint with the corresponding &#x60;sweep_id&#x60;.  &#x60;swept&#x60; events occur when the transfer amount is credited or debited from your sweep account, depending on the &#x60;type&#x60; of the transfer. &#x60;return_swept&#x60; events occur when a transfer is returned and Plaid undoes the credit or debit.  The total sum of the &#x60;swept&#x60; and &#x60;return_swept&#x60; events is equal to the &#x60;amount&#x60; of the sweep Plaid creates and matches the amount of the entry on your sweep account ledger.
newtype TransferSweep = TransferSweep { unTransferSweep :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Defines the request schema for &#x60;/transfer/sweep/get&#x60;
data TransferSweepGetRequest = TransferSweepGetRequest
  { transferSweepGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , transferSweepGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , transferSweepGetRequestSweepUnderscoreid :: Text -- ^ Plaid’s unique identifier for a sweep.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferSweepGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferSweepGetRequest")
instance ToJSON TransferSweepGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferSweepGetRequest")


-- | Defines the response schema for &#x60;/transfer/sweep/get&#x60;
newtype TransferSweepGetResponse = TransferSweepGetResponse { unTransferSweepGetResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Defines the request schema for &#x60;/transfer/sweep/list&#x60;
data TransferSweepListRequest = TransferSweepListRequest
  { transferSweepListRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , transferSweepListRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , transferSweepListRequestStartUnderscoredate :: Maybe UTCTime -- ^ The start datetime of sweeps to return (RFC 3339 format).
  , transferSweepListRequestEndUnderscoredate :: Maybe UTCTime -- ^ The end datetime of sweeps to return (RFC 3339 format).
  , transferSweepListRequestCount :: Maybe Int -- ^ The maximum number of sweeps to return.
  , transferSweepListRequestOffset :: Maybe Int -- ^ The number of sweeps to skip before returning results.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferSweepListRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferSweepListRequest")
instance ToJSON TransferSweepListRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferSweepListRequest")


-- | Defines the response schema for &#x60;/transfer/sweep/list&#x60;
newtype TransferSweepListResponse = TransferSweepListResponse { unTransferSweepListResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The status of the sweep for the transfer. &#x60;unswept&#x60;: The transfer hasn&#39;t been swept yet. &#x60;swept&#x60;: The transfer was swept to the sweep account. &#x60;return_swept&#x60;: The transfer was returned, funds were pulled back or pushed back to the sweep account. &#x60;null&#x60;: The transfer will never be swept (e.g. if the transfer is cancelled or returned before being swept)
data TransferSweepStatus = TransferSweepStatus
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferSweepStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferSweepStatus")
instance ToJSON TransferSweepStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferSweepStatus")


-- | The type of transfer. This will be either &#x60;debit&#x60; or &#x60;credit&#x60;.  A &#x60;debit&#x60; indicates a transfer of money into the origination account; a &#x60;credit&#x60; indicates a transfer of money out of the origination account.
data TransferType = TransferType
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON TransferType where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "transferType")
instance ToJSON TransferType where
  toJSON = genericToJSON (removeFieldLabelPrefix False "transferType")


-- | The address associated with the account holder.
newtype TransferUserAddressInRequest = TransferUserAddressInRequest { unTransferUserAddressInRequest :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The address associated with the account holder.
newtype TransferUserAddressInResponse = TransferUserAddressInResponse { unTransferUserAddressInResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The legal name and other information for the account holder.
newtype TransferUserInRequest = TransferUserInRequest { unTransferUserInRequest :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The legal name and other information for the account holder.
newtype TransferUserInResponse = TransferUserInResponse { unTransferUserInResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Request input for editing an entity watchlist screening
data UpdateEntityScreeningRequest = UpdateEntityScreeningRequest
  { updateEntityScreeningRequestEntityUnderscorewatchlistUnderscorescreeningUnderscoreid :: Text -- ^ ID of the associated entity screening.
  , updateEntityScreeningRequestSearchUnderscoreterms :: Maybe UpdateEntityScreeningRequestSearchTerms -- ^ 
  , updateEntityScreeningRequestAssignee :: Maybe Text -- ^ 
  , updateEntityScreeningRequestStatus :: Maybe WatchlistScreeningStatus -- ^ 
  , updateEntityScreeningRequestClientUnderscoreuserUnderscoreid :: Maybe Text -- ^ 
  , updateEntityScreeningRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , updateEntityScreeningRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , updateEntityScreeningRequestResetUnderscorefields :: Maybe [UpdateEntityScreeningRequestResettableField] -- ^ A list of fields to reset back to null
  } deriving (Show, Eq, Generic, Data)

instance FromJSON UpdateEntityScreeningRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "updateEntityScreeningRequest")
instance ToJSON UpdateEntityScreeningRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "updateEntityScreeningRequest")


-- | The name of a field that can be reset back to null
data UpdateEntityScreeningRequestResettableField = UpdateEntityScreeningRequestResettableField
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON UpdateEntityScreeningRequestResettableField where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "updateEntityScreeningRequestResettableField")
instance ToJSON UpdateEntityScreeningRequestResettableField where
  toJSON = genericToJSON (removeFieldLabelPrefix False "updateEntityScreeningRequestResettableField")


-- | Search terms for editing an entity watchlist screening
data UpdateEntityScreeningRequestSearchTerms = UpdateEntityScreeningRequestSearchTerms
  { updateEntityScreeningRequestSearchTermsEntityUnderscorewatchlistUnderscoreprogramUnderscoreid :: Text -- ^ ID of the associated entity program.
  , updateEntityScreeningRequestSearchTermsLegalUnderscorename :: Maybe Text -- ^ 
  , updateEntityScreeningRequestSearchTermsDocumentUnderscorenumber :: Maybe Text -- ^ 
  , updateEntityScreeningRequestSearchTermsEmailUnderscoreaddress :: Maybe Text -- ^ 
  , updateEntityScreeningRequestSearchTermsCountry :: Maybe Text -- ^ 
  , updateEntityScreeningRequestSearchTermsPhoneUnderscorenumber :: Maybe Text -- ^ 
  , updateEntityScreeningRequestSearchTermsUrl :: Maybe Text -- ^ 
  , updateEntityScreeningRequestSearchTermsClientUnderscoreid :: Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , updateEntityScreeningRequestSearchTermsSecret :: Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON UpdateEntityScreeningRequestSearchTerms where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "updateEntityScreeningRequestSearchTerms")
instance ToJSON UpdateEntityScreeningRequestSearchTerms where
  toJSON = genericToJSON (removeFieldLabelPrefix False "updateEntityScreeningRequestSearchTerms")


-- | Request input for editing an individual watchlist screening
data UpdateIndividualScreeningRequest = UpdateIndividualScreeningRequest
  { updateIndividualScreeningRequestWatchlistUnderscorescreeningUnderscoreid :: Text -- ^ ID of the associated screening.
  , updateIndividualScreeningRequestSearchUnderscoreterms :: Maybe UpdateIndividualScreeningRequestSearchTerms -- ^ 
  , updateIndividualScreeningRequestAssignee :: Maybe Text -- ^ 
  , updateIndividualScreeningRequestStatus :: Maybe WatchlistScreeningStatus -- ^ 
  , updateIndividualScreeningRequestClientUnderscoreuserUnderscoreid :: Maybe Text -- ^ 
  , updateIndividualScreeningRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , updateIndividualScreeningRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , updateIndividualScreeningRequestResetUnderscorefields :: Maybe [UpdateIndividualScreeningRequestResettableField] -- ^ A list of fields to reset back to null
  } deriving (Show, Eq, Generic, Data)

instance FromJSON UpdateIndividualScreeningRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "updateIndividualScreeningRequest")
instance ToJSON UpdateIndividualScreeningRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "updateIndividualScreeningRequest")


-- | The name of a field that can be reset back to null
data UpdateIndividualScreeningRequestResettableField = UpdateIndividualScreeningRequestResettableField
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON UpdateIndividualScreeningRequestResettableField where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "updateIndividualScreeningRequestResettableField")
instance ToJSON UpdateIndividualScreeningRequestResettableField where
  toJSON = genericToJSON (removeFieldLabelPrefix False "updateIndividualScreeningRequestResettableField")


-- | Search terms for editing an individual watchlist screening
data UpdateIndividualScreeningRequestSearchTerms = UpdateIndividualScreeningRequestSearchTerms
  { updateIndividualScreeningRequestSearchTermsWatchlistUnderscoreprogramUnderscoreid :: Maybe Text -- ^ 
  , updateIndividualScreeningRequestSearchTermsLegalUnderscorename :: Maybe Text -- ^ 
  , updateIndividualScreeningRequestSearchTermsDateUnderscoreofUnderscorebirth :: Maybe Day -- ^ 
  , updateIndividualScreeningRequestSearchTermsDocumentUnderscorenumber :: Maybe Text -- ^ 
  , updateIndividualScreeningRequestSearchTermsCountry :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON UpdateIndividualScreeningRequestSearchTerms where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "updateIndividualScreeningRequestSearchTerms")
instance ToJSON UpdateIndividualScreeningRequestSearchTerms where
  toJSON = genericToJSON (removeFieldLabelPrefix False "updateIndividualScreeningRequestSearchTerms")


-- | Home address for user supplied to &#x60;/identity_verification/create&#x60;
data UserAddress = UserAddress
  { userAddressStreet :: Text -- ^ The primary street portion of an address. If the user has submitted their address, this field will always be filled.
  , userAddressStreet2 :: Maybe Text -- ^ Extra street information, like an apartment or suite number.
  , userAddressCity :: Text -- ^ City from the end user's address
  , userAddressRegion :: Text -- ^ An ISO 3166-2 subdivision code. Related terms would be \"state\", \"province\", \"prefecture\", \"zone\", \"subdivision\", etc.
  , userAddressPostalUnderscorecode :: Text -- ^ The postal code for the associated address. Between 2 and 10 alphanumeric characters.
  , userAddressCountry :: Text -- ^ Valid, capitalized, two-letter ISO code representing the country of this object. Must be in ISO 3166-1 alpha-2 form.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON UserAddress where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "userAddress")
instance ToJSON UserAddress where
  toJSON = genericToJSON (removeFieldLabelPrefix False "userAddress")


-- | UserCreateRequest defines the request schema for &#x60;/user/create&#x60;
data UserCreateRequest = UserCreateRequest
  { userCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , userCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , userCreateRequestClientUnderscoreuserUnderscoreid :: Text -- ^ A unique ID representing the end user. Typically this will be a user ID number from your application. Personally identifiable information, such as an email address or phone number, should not be used in the `client_user_id`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON UserCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "userCreateRequest")
instance ToJSON UserCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "userCreateRequest")


-- | UserCreateResponse defines the response schema for &#x60;/user/create&#x60;
newtype UserCreateResponse = UserCreateResponse { unUserCreateResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Custom test accounts are configured with a JSON configuration object formulated according to the schema below. All fields are optional. Sending an empty object as a configuration will result in an account configured with random balances and transaction history.
newtype UserCustomPassword = UserCustomPassword { unUserCustomPassword :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | ID number submitted by the user, currently used only for the Identity Verification product. If the user has not submitted this data yet, this field will be &#x60;null&#x60;. Otherwise, both fields are guaranteed to be filled.
data UserIDNumber = UserIDNumber
  { userIDNumberValue :: Text -- ^ Value of identity document value typed in by user. Alpha-numeric, with all formatting characters stripped.
  , userIDNumberType :: IDNumberType -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON UserIDNumber where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "userIDNumber")
instance ToJSON UserIDNumber where
  toJSON = genericToJSON (removeFieldLabelPrefix False "userIDNumber")


-- | The full name provided by the user. If the user has not submitted their name, this field will be null. Otherwise, both fields are guaranteed to be filled.
data UserName = UserName
  { userNameGivenUnderscorename :: Text -- ^ A string with at least one non-whitespace character, with a max length of 100 characters.
  , userNameFamilyUnderscorename :: Text -- ^ A string with at least one non-whitespace character, with a max length of 100 characters.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON UserName where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "userName")
instance ToJSON UserName where
  toJSON = genericToJSON (removeFieldLabelPrefix False "userName")


-- | The &#x60;USER_PERMISSION_REVOKED&#x60; webhook is fired to when an end user has used the [my.plaid.com portal](https://my.plaid.com) to revoke the permission that they previously granted to access an Item. Once access to an Item has been revoked, it cannot be restored. If the user subsequently returns to your application, a new Item must be created for the user.
newtype UserPermissionRevokedWebhook = UserPermissionRevokedWebhook { unUserPermissionRevokedWebhook :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Details about a certain reason as to why a document could potentially be fraudulent
newtype VerificationAttribute = VerificationAttribute { unVerificationAttribute :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Fired when an Item was not verified via automated micro-deposits after seven days since the automated micro-deposit was made.
newtype VerificationExpiredWebhook = VerificationExpiredWebhook { unVerificationExpiredWebhook :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The verification refresh status. One of the following:  &#x60;\&quot;VERIFICATION_REFRESH_STATUS_USER_PRESENCE_REQUIRED\&quot;&#x60; User presence is required to refresh an income verification. &#x60;\&quot;VERIFICATION_REFRESH_SUCCESSFUL\&quot;&#x60; The income verification refresh was successful. &#x60;\&quot;VERIFICATION_REFRESH_NOT_FOUND\&quot;&#x60; No new data was found after the income verification refresh.
data VerificationRefreshStatus = VerificationRefreshStatus
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON VerificationRefreshStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "verificationRefreshStatus")
instance ToJSON VerificationRefreshStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "verificationRefreshStatus")


-- | The verification status. One of the following:  &#x60;\&quot;VERIFIED\&quot;&#x60;: The information was successfully verified.  &#x60;\&quot;UNVERIFIED\&quot;&#x60;: The verification has not yet been performed.  &#x60;\&quot;NEEDS_INFO\&quot;&#x60;: The verification was attempted but could not be completed due to missing information.  \&quot;&#x60;UNABLE_TO_VERIFY&#x60;\&quot;: The verification was performed and the information could not be verified.  &#x60;\&quot;UNKNOWN\&quot;&#x60;: The verification status is unknown.
data VerificationStatus = VerificationStatus
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON VerificationStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "verificationStatus")
instance ToJSON VerificationStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "verificationStatus")


-- | W2 is an object that represents income data taken from a W2 tax document.
newtype W2 = W2 { unW2 :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Data on the W2 Box 12
newtype W2Box12 = W2Box12 { unW2Box12 :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | W2 state and local wages
newtype W2StateAndLocalWages = W2StateAndLocalWages { unW2StateAndLocalWages :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object representing the e-wallet
newtype Wallet = Wallet { unWallet :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object representing the e-wallet balance
newtype WalletBalance = WalletBalance { unWalletBalance :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | WalletCreateRequest defines the request schema for &#x60;/wallet/create&#x60;
data WalletCreateRequest = WalletCreateRequest
  { walletCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , walletCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , walletCreateRequestIsoUnderscorecurrencyUnderscorecode :: WalletISOCurrencyCode -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON WalletCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "walletCreateRequest")
instance ToJSON WalletCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "walletCreateRequest")


-- | WalletCreateResponse defines the response schema for &#x60;/wallet/create&#x60;
newtype WalletCreateResponse = WalletCreateResponse { unWalletCreateResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | WalletGetRequest defines the request schema for &#x60;/wallet/get&#x60;
data WalletGetRequest = WalletGetRequest
  { walletGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , walletGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , walletGetRequestWalletUnderscoreid :: Text -- ^ The ID of the e-wallet
  } deriving (Show, Eq, Generic, Data)

instance FromJSON WalletGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "walletGetRequest")
instance ToJSON WalletGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "walletGetRequest")


-- | WalletGetResponse defines the response schema for &#x60;/wallet/get&#x60;
newtype WalletGetResponse = WalletGetResponse { unWalletGetResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An ISO-4217 currency code, used with e-wallets and transactions. Currently, only &#x60;\&quot;GBP\&quot;&#x60; is supported.
data WalletISOCurrencyCode = WalletISOCurrencyCode
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON WalletISOCurrencyCode where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "walletISOCurrencyCode")
instance ToJSON WalletISOCurrencyCode where
  toJSON = genericToJSON (removeFieldLabelPrefix False "walletISOCurrencyCode")


-- | WalletListRequest defines the request schema for &#x60;/wallet/list&#x60;
data WalletListRequest = WalletListRequest
  { walletListRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , walletListRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , walletListRequestIsoUnderscorecurrencyUnderscorecode :: Maybe WalletISOCurrencyCode -- ^ 
  , walletListRequestCursor :: Maybe Text -- ^ A base64 value representing the latest e-wallet that has already been requested. Set this to `next_cursor` received from the previous `/wallet/list` request. If provided, the response will only contain e-wallets created before that e-wallet. If omitted, the response will contain e-wallets starting from the most recent, and in descending order.
  , walletListRequestCount :: Maybe Int -- ^ The number of e-wallets to fetch
  } deriving (Show, Eq, Generic, Data)

instance FromJSON WalletListRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "walletListRequest")
instance ToJSON WalletListRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "walletListRequest")


-- | WalletListResponse defines the response schema for &#x60;/wallet/list&#x60;
newtype WalletListResponse = WalletListResponse { unWalletListResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object representing the e-wallet account numbers
newtype WalletNumbers = WalletNumbers { unWalletNumbers :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The transaction details
newtype WalletTransaction = WalletTransaction { unWalletTransaction :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The amount and currency of a transaction
newtype WalletTransactionAmount = WalletTransactionAmount { unWalletTransactionAmount :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object representing the e-wallet transaction&#39;s counterparty
newtype WalletTransactionCounterparty = WalletTransactionCounterparty { unWalletTransactionCounterparty :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The account number and sort code of the counterparty&#39;s account
data WalletTransactionCounterpartyBACS = WalletTransactionCounterpartyBACS
  { walletTransactionCounterpartyBACSAccount :: Maybe Text -- ^ The account number of the account. Maximum of 10 characters.
  , walletTransactionCounterpartyBACSSortUnderscorecode :: Maybe Text -- ^ The 6-character sort code of the account.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON WalletTransactionCounterpartyBACS where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "walletTransactionCounterpartyBACS")
instance ToJSON WalletTransactionCounterpartyBACS where
  toJSON = genericToJSON (removeFieldLabelPrefix False "walletTransactionCounterpartyBACS")


-- | The counterparty&#39;s bank account numbers
data WalletTransactionCounterpartyNumbers = WalletTransactionCounterpartyNumbers
  { walletTransactionCounterpartyNumbersBacs :: WalletTransactionCounterpartyBACS -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON WalletTransactionCounterpartyNumbers where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "walletTransactionCounterpartyNumbers")
instance ToJSON WalletTransactionCounterpartyNumbers where
  toJSON = genericToJSON (removeFieldLabelPrefix False "walletTransactionCounterpartyNumbers")


-- | WalletTransactionExecuteRequest defines the request schema for &#x60;/wallet/transaction/execute&#x60;
data WalletTransactionExecuteRequest = WalletTransactionExecuteRequest
  { walletTransactionExecuteRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , walletTransactionExecuteRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , walletTransactionExecuteRequestIdempotencyUnderscorekey :: Text -- ^ A random key provided by the client, per unique wallet transaction. Maximum of 128 characters.  The API supports idempotency for safely retrying requests without accidentally performing the same operation twice. If a request to execute a wallet transaction fails due to a network connection error, then after a minimum delay of one minute, you can retry the request with the same idempotency key to guarantee that only a single wallet transaction is created. If the request was successfully processed, it will prevent any transaction that uses the same idempotency key, and was received within 24 hours of the first request, from being processed.
  , walletTransactionExecuteRequestWalletUnderscoreid :: Text -- ^ The ID of the e-wallet to debit from
  , walletTransactionExecuteRequestCounterparty :: WalletTransactionCounterparty -- ^ 
  , walletTransactionExecuteRequestAmount :: WalletTransactionAmount -- ^ 
  , walletTransactionExecuteRequestReference :: Text -- ^ A reference for the transaction. This must be an alphanumeric string with at most 18 characters and must not contain any special characters or spaces.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON WalletTransactionExecuteRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "walletTransactionExecuteRequest")
instance ToJSON WalletTransactionExecuteRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "walletTransactionExecuteRequest")


-- | WalletTransactionExecuteResponse defines the response schema for &#x60;/wallet/transaction/execute&#x60;
newtype WalletTransactionExecuteResponse = WalletTransactionExecuteResponse { unWalletTransactionExecuteResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | WalletTransactionGetRequest defines the request schema for &#x60;/wallet/transaction/get&#x60;
data WalletTransactionGetRequest = WalletTransactionGetRequest
  { walletTransactionGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , walletTransactionGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , walletTransactionGetRequestTransactionUnderscoreid :: Text -- ^ The ID of the transaction to fetch
  } deriving (Show, Eq, Generic, Data)

instance FromJSON WalletTransactionGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "walletTransactionGetRequest")
instance ToJSON WalletTransactionGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "walletTransactionGetRequest")


-- | WalletTransactionGetResponse defines the response schema for &#x60;/wallet/transaction/get&#x60;
newtype WalletTransactionGetResponse = WalletTransactionGetResponse { unWalletTransactionGetResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The status of the transaction.  &#x60;INITIATED&#x60;: This is the initial state of all transactions. It indicates that the transaction has been initiated and is currently being processed.  &#x60;EXECUTED&#x60;: The transaction has been successfully executed.  &#x60;FAILED&#x60;: The transaction failed to process successfully. This is a terminal status.  &#x60;BLOCKED&#x60;: The transaction has been blocked for violating compliance rules. This is a terminal status.
data WalletTransactionStatus = WalletTransactionStatus
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON WalletTransactionStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "walletTransactionStatus")
instance ToJSON WalletTransactionStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "walletTransactionStatus")


-- | WalletTransactionsListRequest defines the request schema for &#x60;/wallet/transactions/list&#x60;
data WalletTransactionsListRequest = WalletTransactionsListRequest
  { walletTransactionsListRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , walletTransactionsListRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , walletTransactionsListRequestWalletUnderscoreid :: Text -- ^ The ID of the e-wallet to fetch transactions from
  , walletTransactionsListRequestCursor :: Maybe Text -- ^ A base64 value representing the latest transaction that has already been requested. Set this to `next_cursor` received from the previous `/wallet/transactions/list` request. If provided, the response will only contain transactions created before that transaction. If omitted, the response will contain transactions starting from the most recent, and in descending order by the `created_at` time.
  , walletTransactionsListRequestCount :: Maybe Int -- ^ The number of transactions to fetch
  } deriving (Show, Eq, Generic, Data)

instance FromJSON WalletTransactionsListRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "walletTransactionsListRequest")
instance ToJSON WalletTransactionsListRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "walletTransactionsListRequest")


-- | WalletTransactionsListResponse defines the response schema for &#x60;/wallet/transactions/list&#x60;
newtype WalletTransactionsListResponse = WalletTransactionsListResponse { unWalletTransactionsListResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | It is possible for an Asset Report to be returned with missing account owner information. In such cases, the Asset Report will contain warning data in the response, indicating why obtaining the owner information failed.
newtype Warning = Warning { unWarning :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Information about the last change made to the parent object specifying what caused the change as well as when it occurred.
data WatchlistScreeningAuditTrail = WatchlistScreeningAuditTrail
  { watchlistScreeningAuditTrailSource :: Source -- ^ 
  , watchlistScreeningAuditTrailDashboardUnderscoreuserUnderscoreid :: Text -- ^ 
  , watchlistScreeningAuditTrailTimestamp :: UTCTime -- ^ An ISO8601 formatted timestamp.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON WatchlistScreeningAuditTrail where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "watchlistScreeningAuditTrail")
instance ToJSON WatchlistScreeningAuditTrail where
  toJSON = genericToJSON (removeFieldLabelPrefix False "watchlistScreeningAuditTrail")


-- | Request input for creating an individual watchlist screening
data WatchlistScreeningCreateRequest = WatchlistScreeningCreateRequest
  { watchlistScreeningCreateRequestSearchUnderscoreterms :: WatchlistScreeningRequestSearchTerms -- ^ 
  , watchlistScreeningCreateRequestClientUnderscoreuserUnderscoreid :: Maybe Text -- ^ 
  , watchlistScreeningCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , watchlistScreeningCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON WatchlistScreeningCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "watchlistScreeningCreateRequest")
instance ToJSON WatchlistScreeningCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "watchlistScreeningCreateRequest")


-- | An official document, usually issued by a governing body or institution, with an associated identifier.
data WatchlistScreeningDocument = WatchlistScreeningDocument
  { watchlistScreeningDocumentType :: WatchlistScreeningDocumentType -- ^ 
  , watchlistScreeningDocumentNumber :: Text -- ^ The numeric or alphanumeric identifier associated with this document.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON WatchlistScreeningDocument where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "watchlistScreeningDocument")
instance ToJSON WatchlistScreeningDocument where
  toJSON = genericToJSON (removeFieldLabelPrefix False "watchlistScreeningDocument")


-- | The kind of official document represented by this object.  &#x60;birth_certificate&#x60; - A certificate of birth  &#x60;drivers_license&#x60; - A license to operate a motor vehicle  &#x60;immigration_number&#x60; - Immigration or residence documents  &#x60;military_id&#x60; - Identification issued by a military group  &#x60;other&#x60; - Any document not covered by other categories  &#x60;passport&#x60; - An official passport issue by a government  &#x60;personal_identification&#x60; - Any generic personal identification that is not covered by other categories  &#x60;ration_card&#x60; - Identification that entitles the holder to rations  &#x60;ssn&#x60; - United States Social Security Number  &#x60;student_id&#x60; - Identification issued by an educational institution  &#x60;tax_id&#x60; - Identification issued for the purpose of collecting taxes  &#x60;travel_document&#x60; - Visas, entry permits, refugee documents, etc.  &#x60;voter_id&#x60; - Identification issued for the purpose of voting
data WatchlistScreeningDocumentType = WatchlistScreeningDocumentType
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON WatchlistScreeningDocumentType where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "watchlistScreeningDocumentType")
instance ToJSON WatchlistScreeningDocumentType where
  toJSON = genericToJSON (removeFieldLabelPrefix False "watchlistScreeningDocumentType")


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


-- | Location information for the associated individual watchlist hit
data WatchlistScreeningHitLocations = WatchlistScreeningHitLocations
  { watchlistScreeningHitLocationsFull :: Text -- ^ The full location string, potentially including elements like street, city, postal codes and country codes. Note that this is not necessarily a complete or well-formatted address.
  , watchlistScreeningHitLocationsCountry :: Text -- ^ Valid, capitalized, two-letter ISO code representing the country of this object. Must be in ISO 3166-1 alpha-2 form.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON WatchlistScreeningHitLocations where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "watchlistScreeningHitLocations")
instance ToJSON WatchlistScreeningHitLocations where
  toJSON = genericToJSON (removeFieldLabelPrefix False "watchlistScreeningHitLocations")


-- | The current state of review. All watchlist screening hits begin in a &#x60;pending_review&#x60; state but can be changed by creating a review. When a hit is in the &#x60;pending_review&#x60; state, it will always show the latest version of the watchlist data Plaid has available and be compared against the latest customer information saved in the watchlist screening. Once a hit has been marked as &#x60;confirmed&#x60; or &#x60;dismissed&#x60; it will no longer be updated so that the state is as it was when the review was first conducted.
data WatchlistScreeningHitStatus = WatchlistScreeningHitStatus
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON WatchlistScreeningHitStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "watchlistScreeningHitStatus")
instance ToJSON WatchlistScreeningHitStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "watchlistScreeningHitStatus")


-- | The screening object allows you to represent a customer in your system, update their profile, and search for them on various watchlists. Note: Rejected customers will not receive new hits, regardless of program configuration.
data WatchlistScreeningIndividual = WatchlistScreeningIndividual
  { watchlistScreeningIndividualId :: Text -- ^ ID of the associated screening.
  , watchlistScreeningIndividualSearchUnderscoreterms :: WatchlistScreeningSearchTerms -- ^ 
  , watchlistScreeningIndividualAssignee :: Text -- ^ 
  , watchlistScreeningIndividualStatus :: WatchlistScreeningStatus -- ^ 
  , watchlistScreeningIndividualClientUnderscoreuserUnderscoreid :: Text -- ^ 
  , watchlistScreeningIndividualAuditUnderscoretrail :: WatchlistScreeningAuditTrail -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON WatchlistScreeningIndividual where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "watchlistScreeningIndividual")
instance ToJSON WatchlistScreeningIndividual where
  toJSON = genericToJSON (removeFieldLabelPrefix False "watchlistScreeningIndividual")


-- | The screening object allows you to represent a customer in your system, update their profile, and search for them on various watchlists. Note: Rejected customers will not receive new hits, regardless of program configuration.
newtype WatchlistScreeningIndividualResponse = WatchlistScreeningIndividualResponse { unWatchlistScreeningIndividualResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Search inputs for creating a watchlist screening
data WatchlistScreeningRequestSearchTerms = WatchlistScreeningRequestSearchTerms
  { watchlistScreeningRequestSearchTermsWatchlistUnderscoreprogramUnderscoreid :: Text -- ^ ID of the associated program.
  , watchlistScreeningRequestSearchTermsLegalUnderscorename :: Text -- ^ The legal name of the individual being screened.
  , watchlistScreeningRequestSearchTermsDateUnderscoreofUnderscorebirth :: Maybe Day -- ^ 
  , watchlistScreeningRequestSearchTermsDocumentUnderscorenumber :: Maybe Text -- ^ 
  , watchlistScreeningRequestSearchTermsCountry :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON WatchlistScreeningRequestSearchTerms where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "watchlistScreeningRequestSearchTerms")
instance ToJSON WatchlistScreeningRequestSearchTerms where
  toJSON = genericToJSON (removeFieldLabelPrefix False "watchlistScreeningRequestSearchTerms")


-- | A review submitted by a team member for an individual watchlist screening. A review can be either a comment on the current screening state, actions taken against hits attached to the watchlist screening, or both.
data WatchlistScreeningReview = WatchlistScreeningReview
  { watchlistScreeningReviewId :: Text -- ^ ID of the associated review.
  , watchlistScreeningReviewConfirmedUnderscorehits :: [Text] -- ^ Hits marked as a true positive after thorough manual review. These hits will never recur or be updated once dismissed. In most cases, confirmed hits indicate that the customer should be rejected.
  , watchlistScreeningReviewDismissedUnderscorehits :: [Text] -- ^ Hits marked as a false positive after thorough manual review. These hits will never recur or be updated once dismissed.
  , watchlistScreeningReviewComment :: Text -- ^ A comment submitted by a team member as part of reviewing a watchlist screening.
  , watchlistScreeningReviewAuditUnderscoretrail :: WatchlistScreeningAuditTrail -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON WatchlistScreeningReview where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "watchlistScreeningReview")
instance ToJSON WatchlistScreeningReview where
  toJSON = genericToJSON (removeFieldLabelPrefix False "watchlistScreeningReview")


-- | A review submitted by a team member for an individual watchlist screening. A review can be either a comment on the current screening state, actions taken against hits attached to the watchlist screening, or both.
newtype WatchlistScreeningReviewResponse = WatchlistScreeningReviewResponse { unWatchlistScreeningReviewResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Search terms for creating an individual watchlist screening
data WatchlistScreeningSearchTerms = WatchlistScreeningSearchTerms
  { watchlistScreeningSearchTermsWatchlistUnderscoreprogramUnderscoreid :: Text -- ^ ID of the associated program.
  , watchlistScreeningSearchTermsLegalUnderscorename :: Text -- ^ The legal name of the individual being screened.
  , watchlistScreeningSearchTermsDateUnderscoreofUnderscorebirth :: Day -- ^ 
  , watchlistScreeningSearchTermsDocumentUnderscorenumber :: Text -- ^ 
  , watchlistScreeningSearchTermsCountry :: Text -- ^ 
  , watchlistScreeningSearchTermsVersion :: Double -- ^ The current version of the search terms. Starts at `1` and increments with each edit to `search_terms`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON WatchlistScreeningSearchTerms where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "watchlistScreeningSearchTerms")
instance ToJSON WatchlistScreeningSearchTerms where
  toJSON = genericToJSON (removeFieldLabelPrefix False "watchlistScreeningSearchTerms")


-- | A status enum indicating whether a screening is still pending review, has been rejected, or has been cleared.
data WatchlistScreeningStatus = WatchlistScreeningStatus
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON WatchlistScreeningStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "watchlistScreeningStatus")
instance ToJSON WatchlistScreeningStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "watchlistScreeningStatus")


-- | Names that are explicitly marked as low quality either by their &#x60;source&#x60; list, or by &#x60;plaid&#x60; by a series of additional checks done by Plaid. Plaid does not ever surface a hit as a result of a weak name alone. If a name has no quality issues, this value will be &#x60;none&#x60;.
data WeakAliasDetermination = WeakAliasDetermination
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON WeakAliasDetermination where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "weakAliasDetermination")
instance ToJSON WeakAliasDetermination where
  toJSON = genericToJSON (removeFieldLabelPrefix False "weakAliasDetermination")


-- | The webhook types that can be fired by this test endpoint.
data WebhookType = WebhookType
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON WebhookType where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "webhookType")
instance ToJSON WebhookType where
  toJSON = genericToJSON (removeFieldLabelPrefix False "webhookType")


-- | Fired when an Item&#39;s webhook is updated. This will be sent to the newly specified webhook.
newtype WebhookUpdateAcknowledgedWebhook = WebhookUpdateAcknowledgedWebhook { unWebhookUpdateAcknowledgedWebhook :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | WebhookVerificationKeyGetRequest defines the request schema for &#x60;/webhook_verification_key/get&#x60;
data WebhookVerificationKeyGetRequest = WebhookVerificationKeyGetRequest
  { webhookVerificationKeyGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , webhookVerificationKeyGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , webhookVerificationKeyGetRequestKeyUnderscoreid :: Text -- ^ The key ID ( `kid` ) from the JWT header.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON WebhookVerificationKeyGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "webhookVerificationKeyGetRequest")
instance ToJSON WebhookVerificationKeyGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "webhookVerificationKeyGetRequest")


-- | WebhookVerificationKeyGetResponse defines the response schema for &#x60;/webhook_verification_key/get&#x60;
newtype WebhookVerificationKeyGetResponse = WebhookVerificationKeyGetResponse { unWebhookVerificationKeyGetResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Year-to-date pre-tax earnings, as reported on the paystub.
data YTDGrossIncomeSummaryFieldNumber = YTDGrossIncomeSummaryFieldNumber
  { yTDGrossIncomeSummaryFieldNumberValue :: Double -- ^ The value of the field.
  , yTDGrossIncomeSummaryFieldNumberVerificationUnderscorestatus :: VerificationStatus -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON YTDGrossIncomeSummaryFieldNumber where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "yTDGrossIncomeSummaryFieldNumber")
instance ToJSON YTDGrossIncomeSummaryFieldNumber where
  toJSON = genericToJSON (removeFieldLabelPrefix False "yTDGrossIncomeSummaryFieldNumber")


-- | Year-to-date earnings after any tax withholdings, benefit payments or deductions, as reported on the paystub.
data YTDNetIncomeSummaryFieldNumber = YTDNetIncomeSummaryFieldNumber
  { yTDNetIncomeSummaryFieldNumberValue :: Double -- ^ The value of the field.
  , yTDNetIncomeSummaryFieldNumberVerificationUnderscorestatus :: VerificationStatus -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON YTDNetIncomeSummaryFieldNumber where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "yTDNetIncomeSummaryFieldNumber")
instance ToJSON YTDNetIncomeSummaryFieldNumber where
  toJSON = genericToJSON (removeFieldLabelPrefix False "yTDNetIncomeSummaryFieldNumber")


uncapitalize :: String -> String
uncapitalize (first:rest) = Char.toLower first : rest
uncapitalize [] = []

-- | Remove a field label prefix during JSON parsing.
--   Also perform any replacements for special characters.
--   The @forParsing@ parameter is to distinguish between the cases in which we're using this
--   to power a @FromJSON@ or a @ToJSON@ instance. In the first case we're parsing, and we want
--   to replace special characters with their quoted equivalents (because we cannot have special
--   chars in identifier names), while we want to do vice versa when sending data instead.
removeFieldLabelPrefix :: Bool -> String -> Options
removeFieldLabelPrefix forParsing prefix =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = uncapitalize . fromMaybe (error ("did not find prefix " ++ prefix)) . stripPrefix prefix . replaceSpecialChars
    }
  where
    replaceSpecialChars field = foldl (&) field (map mkCharReplacement specialChars)
    specialChars =
      [ ("$", "'Dollar")
      , ("^", "'Caret")
      , ("|", "'Pipe")
      , ("=", "'Equal")
      , ("*", "'Star")
      , ("-", "'Dash")
      , ("&", "'Ampersand")
      , ("%", "'Percent")
      , ("#", "'Hash")
      , ("@", "'At")
      , ("!", "'Exclamation")
      , ("+", "'Plus")
      , (":", "'Colon")
      , (";", "'Semicolon")
      , (">", "'GreaterThan")
      , ("<", "'LessThan")
      , (".", "'Period")
      , ("_", "'Underscore")
      , ("?", "'Question_Mark")
      , (",", "'Comma")
      , ("'", "'Quote")
      , ("/", "'Slash")
      , ("(", "'Left_Parenthesis")
      , (")", "'Right_Parenthesis")
      , ("{", "'Left_Curly_Bracket")
      , ("}", "'Right_Curly_Bracket")
      , ("[", "'Left_Square_Bracket")
      , ("]", "'Right_Square_Bracket")
      , ("~", "'Tilde")
      , ("`", "'Backtick")
      , ("<=", "'Less_Than_Or_Equal_To")
      , (">=", "'Greater_Than_Or_Equal_To")
      , ("!=", "'Not_Equal")
      , ("~=", "'Tilde_Equal")
      , ("\\", "'Back_Slash")
      , ("\"", "'Double_Quote")
      ]
    mkCharReplacement (replaceStr, searchStr) = T.unpack . replacer (T.pack searchStr) (T.pack replaceStr) . T.pack
    replacer =
      if forParsing
        then flip T.replace
        else T.replace
