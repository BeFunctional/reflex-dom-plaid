{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types.Type1 (  
  ACHClass (..),
  APR (..),
  AccountAccess (..),
  AccountAssets (..),
  AccountAssetsAllOf (..),
  AccountBalance (..),
  AccountBase (..),
  AccountFilter (..),
  AccountFiltersResponse (..),
  AccountIdentity (..),
  AccountIdentityAllOf (..),
  AccountProductAccess (..),
  AccountProductAccessNullable (..),
  AccountSelectionCardinality (..),
  AccountSubtype (..),
  AccountType (..),
  AccountsBalanceGetRequest (..),
  AccountsBalanceGetRequestOptions (..),
  AccountsGetRequest (..),
  AccountsGetRequestOptions (..),
  AccountsGetResponse (..),
  Address (..),
  AddressData (..),
  AddressDataNullable (..),
  AddressNullable (..),
  AddressPurposeLabel (..),
  Application (..),
  ApplicationGetRequest (..),
  ApplicationGetResponse (..),
  AssetReport (..),
  AssetReportAuditCopyCreateRequest (..),
  AssetReportAuditCopyCreateResponse (..),
  AssetReportAuditCopyGetRequest (..),
  AssetReportAuditCopyRemoveRequest (..),
  AssetReportAuditCopyRemoveResponse (..),
  AssetReportCreateRequest (..),
  AssetReportCreateRequestOptions (..),
  AssetReportCreateResponse (..),
  AssetReportFilterRequest (..),
  AssetReportFilterResponse (..),
  AssetReportGetRequest (..),
  AssetReportGetResponse (..),
  AssetReportItem (..),
  AssetReportPDFGetRequest (..),
  AssetReportRefreshRequest (..),
  AssetReportRefreshRequestOptions (..),
  AssetReportRefreshResponse (..),
  AssetReportRelayCreateRequest (..),
  AssetReportRelayCreateResponse (..),
  AssetReportRelayGetRequest (..),
  AssetReportRelayRefreshRequest (..),
  AssetReportRelayRefreshResponse (..),
  AssetReportRelayRemoveRequest (..),
  AssetReportRelayRemoveResponse (..),
  AssetReportRemoveRequest (..),
  AssetReportRemoveResponse (..),
  AssetReportTransaction (..),
  AssetReportTransactionAllOf (..),
  AssetReportUser (..),
  AssetsErrorWebhook (..),
  AssetsProductReadyWebhook (..),
  AssetsRelayWebhook (..),
  AuthGetNumbers (..),
  AuthGetRequest (..),
  AuthGetRequestOptions (..),
  AuthGetResponse (..),
  AuthMetadata (..),
  AuthSupportedMethods (..),
  AutomaticallyVerifiedWebhook (..),
  BankInitiatedReturnRisk (..),
  BankTransfer (..),
  BankTransferBalance (..),
  BankTransferBalanceGetRequest (..),
  BankTransferBalanceGetResponse (..),
  BankTransferCancelRequest (..),
  BankTransferCancelResponse (..),
  BankTransferCreateRequest (..),
  BankTransferCreateResponse (..),
  BankTransferDirection (..),
  BankTransferEvent (..),
  BankTransferEventListBankTransferType (..),
  BankTransferEventListDirection (..),
  BankTransferEventListRequest (..),
  BankTransferEventListResponse (..),
  BankTransferEventSyncRequest (..),
  BankTransferEventSyncResponse (..),
  BankTransferEventType (..),
  BankTransferFailure (..),
  BankTransferGetRequest (..),
  BankTransferGetResponse (..),
  BankTransferListRequest (..),
  BankTransferListResponse (..),
  BankTransferMigrateAccountRequest (..),
  BankTransferMigrateAccountResponse (..),
  BankTransferNetwork (..),
  BankTransferStatus (..),
  BankTransferSweep (..),
  BankTransferSweepGetRequest (..),
  BankTransferSweepGetResponse (..),
  BankTransferSweepListRequest (..),
  BankTransferSweepListResponse (..),
  BankTransferType (..),
  BankTransferUser (..),
  BankTransfersEventsUpdateWebhook (..),
  CategoriesGetResponse (..),
  Category (..),
  Cause (..),
  CauseAllOf (..),
  ClientProvidedEnhancedTransaction (..),
  ClientProvidedRawTransaction (..),
  ConnectedApplication (..),
  CountryCode (..),
  CreateEntityScreeningRequest (..),
  CreateEntityWatchlistScreeningReviewRequest (..),
  CreateIndividualWatchlistScreeningReviewRequest (..),
  CreditAccountSubtype (..),
  CreditAuditCopyTokenCreateRequest (..),
  CreditAuditCopyTokenCreateResponse (..),
  CreditBankIncome (..),
  CreditBankIncomeAccount (..),
  CreditBankIncomeAccountType (..),
  CreditBankIncomeCategory (..),
  CreditBankIncomeCause (..),
  CreditBankIncomeErrorType (..),
  CreditBankIncomeGetRequest (..),
  CreditBankIncomeGetRequestOptions (..),
  CreditBankIncomeGetResponse (..),
  CreditBankIncomeHistoricalSummary (..),
  CreditBankIncomeItem (..),
  CreditBankIncomePayFrequency (..),
  CreditBankIncomeRefreshRequest (..),
  CreditBankIncomeRefreshRequestOptions (..),
  CreditBankIncomeRefreshResponse (..),
  CreditBankIncomeSource (..),
  CreditBankIncomeSummary (..),
  CreditBankIncomeTransaction (..),
  CreditBankIncomeWarning (..),
  CreditBankIncomeWarningCode (..),
  CreditBankIncomeWarningType (..),
  CreditCardLiability (..),
  CreditDocumentMetadata (..),
  CreditEmployerVerification (..),
  CreditEmploymentGetRequest (..),
  CreditEmploymentGetResponse (..),
  CreditEmploymentItem (..),
  CreditEmploymentVerification (..),
  CreditFilter (..),
  CreditPayStub (..),
  CreditPayStubAddress (..),
  CreditPayStubDeductions (..),
  CreditPayStubEarnings (..),
  CreditPayStubEmployee (..),
  CreditPayStubEmployer (..),
  CreditPayStubNetPay (..),
  CreditPayStubVerification (..),
  CreditPayrollIncomeGetRequest (..),
  CreditPayrollIncomeGetResponse (..),
  CreditPayrollIncomePrecheckRequest (..),
  CreditPayrollIncomePrecheckResponse (..),
  CreditPayrollIncomeRefreshRequest (..),
  CreditPayrollIncomeRefreshResponse (..),
  CreditPayrollIncomeRiskSignalsGetRequest (..),
  CreditPayrollIncomeRiskSignalsGetResponse (..),
  CreditPlatformIds (..),
  CreditRelayCreateRequest (..),
  CreditRelayCreateResponse (..),
  CreditW2 (..),
  CustomerInitiatedReturnRisk (..),
  DashboardUser (..),
  DashboardUserResponse (..),
  DashboardUserStatus (..),
  DateRange (..),
  Deductions (..),
  DeductionsBreakdown (..),
  DeductionsTotal (..),
  DefaultUpdateWebhook (..),
  DepositSwitchAddressData (..),
  DepositSwitchAltCreateRequest (..),
  DepositSwitchAltCreateResponse (..),
  DepositSwitchCreateRequest (..),
  DepositSwitchCreateRequestOptions (..),
  DepositSwitchCreateResponse (..),
  DepositSwitchGetRequest (..),
  DepositSwitchGetResponse (..),
  DepositSwitchStateUpdateWebhook (..),
  DepositSwitchTargetAccount (..),
  DepositSwitchTargetUser (..),
  DepositSwitchTokenCreateRequest (..),
  DepositSwitchTokenCreateResponse (..),
  DepositoryAccountSubtype (..),
  DepositoryFilter (..),
  DistributionBreakdown (..),
  DocType (..),
  DocumentAnalysis (..),
  DocumentAuthenticityMatchCode (..),
  DocumentDateOfBirthMatchCode (..),
  DocumentMetadata (..),
  DocumentNameMatchCode (..),
  DocumentRiskSignal (..),
  DocumentRiskSignalInstitutionMetadata (..),
  DocumentRiskSignalsObject (..),
  DocumentStatus (..),
  DocumentaryVerification (..),
  DocumentaryVerificationDocument (..),
  Earnings (..),
  EarningsBreakdown (..),
  EarningsBreakdownCanonicalDescription (..),
  EarningsTotal (..),
  Email (..),
  Employee (..),
  EmployeeIncomeSummaryFieldString (..),
  Employer (..),
  EmployerIncomeSummaryFieldString (..),
  EmployerVerification (..),
  EmployersSearchRequest (..),
  EmployersSearchResponse (..),
  EmploymentDetails (..),
  EmploymentVerification (..),
  EmploymentVerificationGetRequest (..),
  EmploymentVerificationGetResponse (..),
  EmploymentVerificationStatus (..),
  Enhancements (..),
  EntityDocument (..),
  EntityDocumentType (..),
  EntityScreeningHitAnalysis (..),
  EntityScreeningHitData (..),
  EntityScreeningHitDocumentsItems (..),
  EntityScreeningHitEmails (..),
  EntityScreeningHitEmailsItems (..),
  EntityScreeningHitNames (..),
  EntityScreeningHitNamesItems (..),
  EntityScreeningHitPhoneNumbers (..),
  EntityScreeningHitUrls (..),
  EntityScreeningHitUrlsItems (..),
  EntityScreeningHitsPhoneNumberItems (..),
  EntityScreeningStatusUpdatedWebhook (..),
  EntityWatchlistCode (..),
  EntityWatchlistProgram (..),
  EntityWatchlistProgramResponse (..),
  EntityWatchlistScreening (..),
  EntityWatchlistScreeningHit (..),
  EntityWatchlistScreeningResponse (..),
  EntityWatchlistScreeningReview (..),
  EntityWatchlistScreeningReviewResponse (..),
  EntityWatchlistScreeningSearchTerms (..),
  EntityWatchlistSearchTerms (..),
  Error (..),
  ExpirationDate (..),
  ExternalPaymentInitiationConsentOptions (..),
  ExternalPaymentOptions (..),
  ExternalPaymentRefundDetails (..),
  ExternalPaymentScheduleBase (..),
  ExternalPaymentScheduleGet (..),
  ExternalPaymentScheduleRequest (..),
  GenericScreeningHitLocationItems (..),
  GetDashboardUserRequest (..),
  GetEntityWatchlistScreeningRequest (..),
  GetIdentityVerificationRequest (..),
  GetIndividualWatchlistScreeningRequest (..),
  GetWatchlistScreeningEntityProgramRequest (..),
  GetWatchlistScreeningIndividualProgramRequest (..),
  HealthIncident (..),
  HistoricalBalance (..),
  HistoricalUpdateWebhook (..),
  Holding (..),
  HoldingsDefaultUpdateWebhook (..),
  HoldingsOverride (..),
  IDNumberType (..),
  IdentityDefaultUpdateWebhook (..),
  IdentityGetRequest (..),
  IdentityGetRequestOptions (..),
  IdentityGetResponse (..),
  IdentityUpdateTypes (..),
  IdentityVerification (..),
  IdentityVerificationCreateRequest (..),
  IdentityVerificationRequestUser (..),
  IdentityVerificationResponse (..),
  IdentityVerificationRetriedWebhook (..),
  IdentityVerificationRetryRequest (..),
  IdentityVerificationRetryRequestStepsObject (..),
  IdentityVerificationStatus (..),
  IdentityVerificationStatusUpdatedWebhook (..),
  IdentityVerificationStepStatus (..),
  IdentityVerificationStepSummary (..),
  IdentityVerificationStepUpdatedWebhook (..),
  IdentityVerificationTemplateReference (..),
  IdentityVerificationUserAddress (..),
  IdentityVerificationUserData (..),
  ImageQuality (..),
  IncidentUpdate (..),
  IncomeBreakdown (..),
  IncomeBreakdownType (..),
  IncomeOverride (..),
  IncomeSummary (..),
  IncomeSummaryFieldNumber (..),
  IncomeSummaryFieldString (..),
  IncomeVerificationCreateRequest (..),
  IncomeVerificationCreateRequestOptions (..),
  IncomeVerificationCreateResponse (..),
  IncomeVerificationDocumentsDownloadRequest (..),
  IncomeVerificationPayrollFlowType (..),
  IncomeVerificationPaystubsGetRequest (..),
  IncomeVerificationPaystubsGetResponse (..),
  IncomeVerificationPrecheckConfidence (..),
  IncomeVerificationPrecheckEmployer (..),
  IncomeVerificationPrecheckEmployerAddress (..),
  IncomeVerificationPrecheckEmployerAddressData (..),
  IncomeVerificationPrecheckMilitaryInfo (..),
  IncomeVerificationPrecheckRequest (..),
  IncomeVerificationPrecheckResponse (..),
  IncomeVerificationPrecheckUser (..),
  IncomeVerificationRefreshRequest (..),
  IncomeVerificationRefreshResponse (..),
  IncomeVerificationSourceType (..),
  IncomeVerificationStatusWebhook (..),
  IncomeVerificationTaxformsGetRequest (..),
  IncomeVerificationTaxformsGetResponse (..),
  IncomeVerificationWebhookStatus (..),
  IndividualScreeningHitNames (..),
  IndividualWatchlistCode (..),
  IndividualWatchlistProgram (..),
  IndividualWatchlistProgramResponse (..),
  InflowModel (..),
  InitialUpdateWebhook (..),
  Institution (..),
  InstitutionStatus (..),
  InstitutionsGetByIdRequest (..),
  InstitutionsGetByIdRequestOptions (..),
  InstitutionsGetByIdResponse (..),
  InstitutionsGetRequest (..),
  InstitutionsGetRequestOptions (..),
  InstitutionsGetResponse (..),
  InstitutionsSearchAccountFilter (..),
  InstitutionsSearchPaymentInitiationOptions (..),
  InstitutionsSearchRequest (..),
  InstitutionsSearchRequestOptions (..),
  InstitutionsSearchResponse (..),
  InvestmentAccountSubtype (..),
  InvestmentFilter (..),
  InvestmentHoldingsGetRequestOptions (..),
  InvestmentTransaction (..),
  InvestmentTransactionSubtype (..),
  InvestmentTransactionType (..),
  InvestmentsDefaultUpdateWebhook (..),
  InvestmentsHoldingsGetRequest (..),
  InvestmentsHoldingsGetResponse (..),
  InvestmentsTransactionsGetRequest (..),
  InvestmentsTransactionsGetRequestOptions (..),
  InvestmentsTransactionsGetResponse (..),
  InvestmentsTransactionsOverride (..),
  IssuingCountry (..),
  Item (..),
  ItemAccessTokenInvalidateRequest (..),
  ItemAccessTokenInvalidateResponse (..),
  ItemApplicationListRequest (..),
  ItemApplicationListResponse (..),
  ItemApplicationListUserAuth (..),
  ItemApplicationScopesUpdateRequest (..),
  ItemApplicationScopesUpdateResponse (..),
  ItemErrorWebhook (..),
  ItemGetRequest (..),
  ItemGetResponse (..),
  ItemImportRequest (..),
  ItemImportRequestOptions (..),
  ItemImportRequestUserAuth (..),
  ItemImportResponse (..),
  ItemProductReadyWebhook (..),
  ItemPublicTokenCreateRequest (..),
  ItemPublicTokenCreateResponse (..),
  ItemPublicTokenExchangeRequest (..),
  ItemPublicTokenExchangeResponse (..),
  ItemRemoveRequest (..),
  ItemRemoveResponse (..),
  ItemStatus (..),
  ItemStatusInvestments (..),
  ItemStatusLastWebhook (..),
  ItemStatusNullable (..),
  ItemStatusTransactions (..),
  ItemWebhookUpdateRequest (..),
  ItemWebhookUpdateResponse (..),
  JWKPublicKey (..),
  JWTHeader (..),
  KYCCheckAddressSummary (..),
  KYCCheckDateOfBirthSummary (..),
  KYCCheckDetails (..),
  KYCCheckIDNumberSummary (..),
  KYCCheckNameSummary (..),
  KYCCheckPhoneSummary (..),
  LiabilitiesDefaultUpdateWebhook (..),
  LiabilitiesGetRequest (..),
  LiabilitiesGetRequestOptions (..),
  LiabilitiesGetResponse (..),
  LiabilitiesObject (..),
  LiabilityOverride (..),
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

-- | Specifies the use case of the transfer. Required for transfers on an ACH network.  &#x60;\&quot;ccd\&quot;&#x60; - Corporate Credit or Debit - fund transfer between two corporate bank accounts  &#x60;\&quot;ppd\&quot;&#x60; - Prearranged Payment or Deposit - the transfer is part of a pre-existing relationship with a consumer, eg. bill payment  &#x60;\&quot;tel\&quot;&#x60; - Telephone-Initiated Entry  &#x60;\&quot;web\&quot;&#x60; - Internet-Initiated Entry - debits from a consumer’s account where their authorization is obtained over the Internet
data ACHClass = ACHClass
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ACHClass where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "aCHClass")
instance ToJSON ACHClass where
  toJSON = genericToJSON (removeFieldLabelPrefix False "aCHClass")


-- | Information about the APR on the account.
newtype APR = APR { unAPR :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Allow or disallow product access by account. Unlisted (e.g. missing) accounts will be considered &#x60;new_accounts&#x60;.
data AccountAccess = AccountAccess
  { accountAccessUniqueUnderscoreid :: Text -- ^ The unique account identifier for this account. This value must match that returned by the data access API for this account.
  , accountAccessAuthorized :: Maybe Bool -- ^ Allow the application to see this account (and associated details, including balance) in the list of accounts  If unset, defaults to `true`.
  , accountAccessAccountUnderscoreproductUnderscoreaccess :: Maybe AccountProductAccessNullable -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AccountAccess where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "accountAccess")
instance ToJSON AccountAccess where
  toJSON = genericToJSON (removeFieldLabelPrefix False "accountAccess")


-- | Asset information about an account
data AccountAssets = AccountAssets
  { accountAssetsAccountUnderscoreid :: Text -- ^ Plaid’s unique identifier for the account. This value will not change unless Plaid can't reconcile the account with the data returned by the financial institution. This may occur, for example, when the name of the account changes. If this happens a new `account_id` will be assigned to the account.  The `account_id` can also change if the `access_token` is deleted and the same credentials that were used to generate that `access_token` are used to generate a new `access_token` on a later date. In that case, the new `account_id` will be different from the old `account_id`.  If an account with a specific `account_id` disappears instead of changing, the account is likely closed. Closed accounts are not returned by the Plaid API.  Like all Plaid identifiers, the `account_id` is case sensitive.
  , accountAssetsBalances :: AccountBalance -- ^ 
  , accountAssetsMask :: Text -- ^ The last 2-4 alphanumeric characters of an account's official account number. Note that the mask may be non-unique between an Item's accounts, and it may also not match the mask that the bank displays to the user.
  , accountAssetsName :: Text -- ^ The name of the account, either assigned by the user or by the financial institution itself
  , accountAssetsOfficialUnderscorename :: Text -- ^ The official name of the account as given by the financial institution
  , accountAssetsType :: AccountType -- ^ 
  , accountAssetsSubtype :: AccountSubtype -- ^ 
  , accountAssetsVerificationUnderscorestatus :: Maybe Text -- ^ The current verification status of an Auth Item initiated through Automated or Manual micro-deposits.  Returned for Auth Items only.  `pending_automatic_verification`: The Item is pending automatic verification  `pending_manual_verification`: The Item is pending manual micro-deposit verification. Items remain in this state until the user successfully verifies the two amounts.  `automatically_verified`: The Item has successfully been automatically verified   `manually_verified`: The Item has successfully been manually verified  `verification_expired`: Plaid was unable to automatically verify the deposit within 7 calendar days and will no longer attempt to validate the Item. Users may retry by submitting their information again through Link.  `verification_failed`: The Item failed manual micro-deposit verification because the user exhausted all 3 verification attempts. Users may retry by submitting their information again through Link.   
  , accountAssetsDaysUnderscoreavailable :: Double -- ^ The duration of transaction history available for this Item, typically defined as the time since the date of the earliest transaction in that account. Only returned by Assets endpoints.
  , accountAssetsTransactions :: [AssetReportTransaction] -- ^ Transaction history associated with the account. Only returned by Assets endpoints. Transaction history returned by endpoints such as `/transactions/get` or `/investments/transactions/get` will be returned in the top-level `transactions` field instead.
  , accountAssetsOwners :: [Owner] -- ^ Data returned by the financial institution about the account owner or owners. Only returned by Identity or Assets endpoints. For business accounts, the name reported may be either the name of the individual or the name of the business, depending on the institution. Multiple owners on a single account will be represented in the same `owner` object, not in multiple owner objects within the array. In API versions 2018-05-22 and earlier, the `owners` object is not returned, and instead identity information is returned in the top level `identity` object. For more details, see [Plaid API versioning](https://plaid.com/docs/api/versioning/#version-2019-05-29)
  , accountAssetsHistoricalUnderscorebalances :: [HistoricalBalance] -- ^ Calculated data about the historical balances on the account. Only returned by Assets endpoints and currently not supported by `brokerage` or `investment` accounts.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AccountAssets where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "accountAssets")
instance ToJSON AccountAssets where
  toJSON = genericToJSON (removeFieldLabelPrefix False "accountAssets")


-- | 
data AccountAssetsAllOf = AccountAssetsAllOf
  { accountAssetsAllOfDaysUnderscoreavailable :: Double -- ^ The duration of transaction history available for this Item, typically defined as the time since the date of the earliest transaction in that account. Only returned by Assets endpoints.
  , accountAssetsAllOfTransactions :: [AssetReportTransaction] -- ^ Transaction history associated with the account. Only returned by Assets endpoints. Transaction history returned by endpoints such as `/transactions/get` or `/investments/transactions/get` will be returned in the top-level `transactions` field instead.
  , accountAssetsAllOfOwners :: [Owner] -- ^ Data returned by the financial institution about the account owner or owners. Only returned by Identity or Assets endpoints. For business accounts, the name reported may be either the name of the individual or the name of the business, depending on the institution. Multiple owners on a single account will be represented in the same `owner` object, not in multiple owner objects within the array. In API versions 2018-05-22 and earlier, the `owners` object is not returned, and instead identity information is returned in the top level `identity` object. For more details, see [Plaid API versioning](https://plaid.com/docs/api/versioning/#version-2019-05-29)
  , accountAssetsAllOfHistoricalUnderscorebalances :: [HistoricalBalance] -- ^ Calculated data about the historical balances on the account. Only returned by Assets endpoints and currently not supported by `brokerage` or `investment` accounts.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AccountAssetsAllOf where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "accountAssetsAllOf")
instance ToJSON AccountAssetsAllOf where
  toJSON = genericToJSON (removeFieldLabelPrefix False "accountAssetsAllOf")


-- | A set of fields describing the balance for an account. Balance information may be cached unless the balance object was returned by &#x60;/accounts/balance/get&#x60;.
newtype AccountBalance = AccountBalance { unAccountBalance :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | A single account at a financial institution.
newtype AccountBase = AccountBase { unAccountBase :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Enumerates the account subtypes that the application wishes for the user to be able to select from. For more details refer to Plaid documentation on account filters.
data AccountFilter = AccountFilter
  { accountFilterDepository :: Maybe [Text] -- ^ A list of account subtypes to be filtered.
  , accountFilterCredit :: Maybe [Text] -- ^ A list of account subtypes to be filtered.
  , accountFilterLoan :: Maybe [Text] -- ^ A list of account subtypes to be filtered.
  , accountFilterInvestment :: Maybe [Text] -- ^ A list of account subtypes to be filtered.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AccountFilter where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "accountFilter")
instance ToJSON AccountFilter where
  toJSON = genericToJSON (removeFieldLabelPrefix False "accountFilter")


-- | The &#x60;account_filters&#x60; specified in the original call to &#x60;/link/token/create&#x60;. 
newtype AccountFiltersResponse = AccountFiltersResponse { unAccountFiltersResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Identity information about an account
data AccountIdentity = AccountIdentity
  { accountIdentityAccountUnderscoreid :: Text -- ^ Plaid’s unique identifier for the account. This value will not change unless Plaid can't reconcile the account with the data returned by the financial institution. This may occur, for example, when the name of the account changes. If this happens a new `account_id` will be assigned to the account.  The `account_id` can also change if the `access_token` is deleted and the same credentials that were used to generate that `access_token` are used to generate a new `access_token` on a later date. In that case, the new `account_id` will be different from the old `account_id`.  If an account with a specific `account_id` disappears instead of changing, the account is likely closed. Closed accounts are not returned by the Plaid API.  Like all Plaid identifiers, the `account_id` is case sensitive.
  , accountIdentityBalances :: AccountBalance -- ^ 
  , accountIdentityMask :: Text -- ^ The last 2-4 alphanumeric characters of an account's official account number. Note that the mask may be non-unique between an Item's accounts, and it may also not match the mask that the bank displays to the user.
  , accountIdentityName :: Text -- ^ The name of the account, either assigned by the user or by the financial institution itself
  , accountIdentityOfficialUnderscorename :: Text -- ^ The official name of the account as given by the financial institution
  , accountIdentityType :: AccountType -- ^ 
  , accountIdentitySubtype :: AccountSubtype -- ^ 
  , accountIdentityVerificationUnderscorestatus :: Maybe Text -- ^ The current verification status of an Auth Item initiated through Automated or Manual micro-deposits.  Returned for Auth Items only.  `pending_automatic_verification`: The Item is pending automatic verification  `pending_manual_verification`: The Item is pending manual micro-deposit verification. Items remain in this state until the user successfully verifies the two amounts.  `automatically_verified`: The Item has successfully been automatically verified   `manually_verified`: The Item has successfully been manually verified  `verification_expired`: Plaid was unable to automatically verify the deposit within 7 calendar days and will no longer attempt to validate the Item. Users may retry by submitting their information again through Link.  `verification_failed`: The Item failed manual micro-deposit verification because the user exhausted all 3 verification attempts. Users may retry by submitting their information again through Link.   
  , accountIdentityOwners :: [Owner] -- ^ Data returned by the financial institution about the account owner or owners. Only returned by Identity or Assets endpoints. For business accounts, the name reported may be either the name of the individual or the name of the business, depending on the institution. Multiple owners on a single account will be represented in the same `owner` object, not in multiple owner objects within the array. In API versions 2018-05-22 and earlier, the `owners` object is not returned, and instead identity information is returned in the top level `identity` object. For more details, see [Plaid API versioning](https://plaid.com/docs/api/versioning/#version-2019-05-29)
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AccountIdentity where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "accountIdentity")
instance ToJSON AccountIdentity where
  toJSON = genericToJSON (removeFieldLabelPrefix False "accountIdentity")


-- | 
data AccountIdentityAllOf = AccountIdentityAllOf
  { accountIdentityAllOfOwners :: [Owner] -- ^ Data returned by the financial institution about the account owner or owners. Only returned by Identity or Assets endpoints. For business accounts, the name reported may be either the name of the individual or the name of the business, depending on the institution. Multiple owners on a single account will be represented in the same `owner` object, not in multiple owner objects within the array. In API versions 2018-05-22 and earlier, the `owners` object is not returned, and instead identity information is returned in the top level `identity` object. For more details, see [Plaid API versioning](https://plaid.com/docs/api/versioning/#version-2019-05-29)
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AccountIdentityAllOf where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "accountIdentityAllOf")
instance ToJSON AccountIdentityAllOf where
  toJSON = genericToJSON (removeFieldLabelPrefix False "accountIdentityAllOf")


-- | Allow the application to access specific products on this account
data AccountProductAccess = AccountProductAccess
  { accountProductAccessAccountUnderscoredata :: Maybe Bool -- ^ Allow the application to access account data. Only used by certain partners. If relevant to the partner and unset, defaults to `true`.
  , accountProductAccessStatements :: Maybe Bool -- ^ Allow the application to access bank statements. Only used by certain partners. If relevant to the partner and unset, defaults to `true`.
  , accountProductAccessTaxUnderscoredocuments :: Maybe Bool -- ^ Allow the application to access tax documents. Only used by certain partners. If relevant to the partner and unset, defaults to `true`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AccountProductAccess where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "accountProductAccess")
instance ToJSON AccountProductAccess where
  toJSON = genericToJSON (removeFieldLabelPrefix False "accountProductAccess")


-- | Allow the application to access specific products on this account
data AccountProductAccessNullable = AccountProductAccessNullable
  { accountProductAccessNullableAccountUnderscoredata :: Maybe Bool -- ^ Allow the application to access account data. Only used by certain partners. If relevant to the partner and unset, defaults to `true`.
  , accountProductAccessNullableStatements :: Maybe Bool -- ^ Allow the application to access bank statements. Only used by certain partners. If relevant to the partner and unset, defaults to `true`.
  , accountProductAccessNullableTaxUnderscoredocuments :: Maybe Bool -- ^ Allow the application to access tax documents. Only used by certain partners. If relevant to the partner and unset, defaults to `true`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AccountProductAccessNullable where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "accountProductAccessNullable")
instance ToJSON AccountProductAccessNullable where
  toJSON = genericToJSON (removeFieldLabelPrefix False "accountProductAccessNullable")


-- | The application requires that accounts be limited to a specific cardinality. &#x60;MULTI_SELECT&#x60;: indicates that the user should be allowed to pick multiple accounts. &#x60;SINGLE_SELECT&#x60;: indicates that the user should be allowed to pick only a single account. &#x60;ALL&#x60;: indicates that the user must share all of their accounts and should not be given the opportunity to de-select
data AccountSelectionCardinality = AccountSelectionCardinality
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AccountSelectionCardinality where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "accountSelectionCardinality")
instance ToJSON AccountSelectionCardinality where
  toJSON = genericToJSON (removeFieldLabelPrefix False "accountSelectionCardinality")


-- | See the [Account type schema](https://plaid.com/docs/api/accounts/#account-type-schema) for a full listing of account types and corresponding subtypes.
data AccountSubtype = AccountSubtype
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AccountSubtype where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "accountSubtype")
instance ToJSON AccountSubtype where
  toJSON = genericToJSON (removeFieldLabelPrefix False "accountSubtype")


-- | &#x60;investment:&#x60; Investment account. In API versions 2018-05-22 and earlier, this type is called &#x60;brokerage&#x60; instead.  &#x60;credit:&#x60; Credit card  &#x60;depository:&#x60; Depository account  &#x60;loan:&#x60; Loan account  &#x60;other:&#x60; Non-specified account type  See the [Account type schema](https://plaid.com/docs/api/accounts#account-type-schema) for a full listing of account types and corresponding subtypes.
data AccountType = AccountType
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AccountType where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "accountType")
instance ToJSON AccountType where
  toJSON = genericToJSON (removeFieldLabelPrefix False "accountType")


-- | AccountsBalanceGetRequest defines the request schema for &#x60;/accounts/balance/get&#x60;
data AccountsBalanceGetRequest = AccountsBalanceGetRequest
  { accountsBalanceGetRequestAccessUnderscoretoken :: Text -- ^ The access token associated with the Item data is being requested for.
  , accountsBalanceGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , accountsBalanceGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , accountsBalanceGetRequestOptions :: Maybe AccountsBalanceGetRequestOptions -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AccountsBalanceGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "accountsBalanceGetRequest")
instance ToJSON AccountsBalanceGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "accountsBalanceGetRequest")


-- | An optional object to filter &#x60;/accounts/balance/get&#x60; results.
data AccountsBalanceGetRequestOptions = AccountsBalanceGetRequestOptions
  { accountsBalanceGetRequestOptionsAccountUnderscoreids :: Maybe [Text] -- ^ A list of `account_ids` to retrieve for the Item. The default value is `null`.  Note: An error will be returned if a provided `account_id` is not associated with the Item.
  , accountsBalanceGetRequestOptionsMinUnderscorelastUnderscoreupdatedUnderscoredatetime :: Maybe UTCTime -- ^ Timestamp in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format (`YYYY-MM-DDTHH:mm:ssZ`) indicating the oldest acceptable balance when making a request to `/accounts/balance/get`.  If the balance that is pulled for `ins_128026` (Capital One) is older than the given timestamp, an `INVALID_REQUEST` error with the code of `LAST_UPDATED_DATETIME_OUT_OF_RANGE` will be returned with the most recent timestamp for the requested account contained in the response.  This field is only used when the institution is `ins_128026` (Capital One), in which case a value must be provided or an `INVALID_REQUEST` error with the code of `INVALID_FIELD` will be returned. For all other institutions, this field is ignored.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AccountsBalanceGetRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "accountsBalanceGetRequestOptions")
instance ToJSON AccountsBalanceGetRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "accountsBalanceGetRequestOptions")


-- | AccountsGetRequest defines the request schema for &#x60;/accounts/get&#x60;
data AccountsGetRequest = AccountsGetRequest
  { accountsGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , accountsGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , accountsGetRequestAccessUnderscoretoken :: Text -- ^ The access token associated with the Item data is being requested for.
  , accountsGetRequestOptions :: Maybe AccountsGetRequestOptions -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AccountsGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "accountsGetRequest")
instance ToJSON AccountsGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "accountsGetRequest")


-- | An optional object to filter &#x60;/accounts/get&#x60; results.
data AccountsGetRequestOptions = AccountsGetRequestOptions
  { accountsGetRequestOptionsAccountUnderscoreids :: Maybe [Text] -- ^ An array of `account_ids` to retrieve for the Account.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AccountsGetRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "accountsGetRequestOptions")
instance ToJSON AccountsGetRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "accountsGetRequestOptions")


-- | AccountsGetResponse defines the response schema for &#x60;/accounts/get&#x60; and &#x60;/accounts/balance/get&#x60;.
newtype AccountsGetResponse = AccountsGetResponse { unAccountsGetResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | A physical mailing address.
newtype Address = Address { unAddress :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Data about the components comprising an address.
newtype AddressData = AddressData { unAddressData :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Data about the components comprising an address.
data AddressDataNullable = AddressDataNullable
  { addressDataNullableCity :: Text -- ^ The full city name
  , addressDataNullableRegion :: Text -- ^ The region or state. In API versions 2018-05-22 and earlier, this field is called `state`. Example: `\"NC\"`
  , addressDataNullableStreet :: Text -- ^ The full street address Example: `\"564 Main Street, APT 15\"`
  , addressDataNullablePostalUnderscorecode :: Text -- ^ The postal code. In API versions 2018-05-22 and earlier, this field is called `zip`.
  , addressDataNullableCountry :: Text -- ^ The ISO 3166-1 alpha-2 country code
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AddressDataNullable where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "addressDataNullable")
instance ToJSON AddressDataNullable where
  toJSON = genericToJSON (removeFieldLabelPrefix False "addressDataNullable")


-- | A physical mailing address.
data AddressNullable = AddressNullable
  { addressNullableData :: AddressData -- ^ 
  , addressNullablePrimary :: Maybe Bool -- ^ When `true`, identifies the address as the primary address on an account.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AddressNullable where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "addressNullable")
instance ToJSON AddressNullable where
  toJSON = genericToJSON (removeFieldLabelPrefix False "addressNullable")


-- | Field describing whether the associated address is being used for commercial or residential purposes.  Note: This value will be &#x60;no_data&#x60; when Plaid does not have sufficient data to determine the address&#39;s use.
data AddressPurposeLabel = AddressPurposeLabel
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AddressPurposeLabel where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "addressPurposeLabel")
instance ToJSON AddressPurposeLabel where
  toJSON = genericToJSON (removeFieldLabelPrefix False "addressPurposeLabel")


-- | Metadata about the application
data Application = Application
  { applicationApplicationUnderscoreid :: Text -- ^ This field will map to the application ID that is returned from /item/applications/list, or provided to the institution in an oauth redirect.
  , applicationName :: Text -- ^ The name of the application
  , applicationDisplayUnderscorename :: Text -- ^ A human-readable name of the application for display purposes
  , applicationJoinUnderscoredate :: Day -- ^ The date this application was granted production access at Plaid in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) (YYYY-MM-DD) format in UTC.
  , applicationLogoUnderscoreurl :: Text -- ^ A URL that links to the application logo image.
  , applicationApplicationUnderscoreurl :: Text -- ^ The URL for the application's website
  , applicationReasonUnderscoreforUnderscoreaccess :: Text -- ^ A string provided by the connected app stating why they use their respective enabled products.
  , applicationUseUnderscorecase :: Text -- ^ A string representing client’s broad use case as assessed by Plaid.
  , applicationCompanyUnderscorelegalUnderscorename :: Text -- ^ A string representing the name of client’s legal entity.
  , applicationCity :: Text -- ^ A string representing the city of the client’s headquarters.
  , applicationRegion :: Text -- ^ A string representing the region of the client’s headquarters.
  , applicationPostalUnderscorecode :: Text -- ^ A string representing the postal code of the client’s headquarters.
  , applicationCountryUnderscorecode :: Text -- ^ A string representing the country code of the client’s headquarters.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON Application where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "application")
instance ToJSON Application where
  toJSON = genericToJSON (removeFieldLabelPrefix False "application")


-- | ApplicationGetRequest defines the schema for &#x60;/application/get&#x60;
data ApplicationGetRequest = ApplicationGetRequest
  { applicationGetRequestClientUnderscoreid :: Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , applicationGetRequestSecret :: Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , applicationGetRequestApplicationUnderscoreid :: Text -- ^ This field will map to the application ID that is returned from /item/applications/list, or provided to the institution in an oauth redirect.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ApplicationGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "applicationGetRequest")
instance ToJSON ApplicationGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "applicationGetRequest")


-- | ApplicationGetResponse defines the response schema for &#x60;/application/get&#x60;
newtype ApplicationGetResponse = ApplicationGetResponse { unApplicationGetResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object representing an Asset Report
newtype AssetReport = AssetReport { unAssetReport :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | AssetReportAuditCopyCreateRequest defines the request schema for &#x60;/asset_report/audit_copy/get&#x60;
data AssetReportAuditCopyCreateRequest = AssetReportAuditCopyCreateRequest
  { assetReportAuditCopyCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , assetReportAuditCopyCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , assetReportAuditCopyCreateRequestAssetUnderscorereportUnderscoretoken :: Text -- ^ A token that can be provided to endpoints such as `/asset_report/get` or `/asset_report/pdf/get` to fetch or update an Asset Report.
  , assetReportAuditCopyCreateRequestAuditorUnderscoreid :: Text -- ^ The `auditor_id` of the third party with whom you would like to share the Asset Report.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AssetReportAuditCopyCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "assetReportAuditCopyCreateRequest")
instance ToJSON AssetReportAuditCopyCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "assetReportAuditCopyCreateRequest")


-- | AssetReportAuditCopyCreateResponse defines the response schema for &#x60;/asset_report/audit_copy/get&#x60;
newtype AssetReportAuditCopyCreateResponse = AssetReportAuditCopyCreateResponse { unAssetReportAuditCopyCreateResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | AssetReportAuditCopyGetRequest defines the request schema for &#x60;/asset_report/audit_copy/get&#x60;
data AssetReportAuditCopyGetRequest = AssetReportAuditCopyGetRequest
  { assetReportAuditCopyGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , assetReportAuditCopyGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , assetReportAuditCopyGetRequestAuditUnderscorecopyUnderscoretoken :: Text -- ^ The `audit_copy_token` granting access to the Audit Copy you would like to get.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AssetReportAuditCopyGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "assetReportAuditCopyGetRequest")
instance ToJSON AssetReportAuditCopyGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "assetReportAuditCopyGetRequest")


-- | AssetReportAuditCopyRemoveRequest defines the request schema for &#x60;/asset_report/audit_copy/remove&#x60;
data AssetReportAuditCopyRemoveRequest = AssetReportAuditCopyRemoveRequest
  { assetReportAuditCopyRemoveRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , assetReportAuditCopyRemoveRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , assetReportAuditCopyRemoveRequestAuditUnderscorecopyUnderscoretoken :: Text -- ^ The `audit_copy_token` granting access to the Audit Copy you would like to revoke.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AssetReportAuditCopyRemoveRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "assetReportAuditCopyRemoveRequest")
instance ToJSON AssetReportAuditCopyRemoveRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "assetReportAuditCopyRemoveRequest")


-- | AssetReportAuditCopyRemoveResponse defines the response schema for &#x60;/asset_report/audit_copy/remove&#x60;
newtype AssetReportAuditCopyRemoveResponse = AssetReportAuditCopyRemoveResponse { unAssetReportAuditCopyRemoveResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | AssetReportCreateRequest defines the request schema for &#x60;/asset_report/create&#x60;
data AssetReportCreateRequest = AssetReportCreateRequest
  { assetReportCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , assetReportCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , assetReportCreateRequestAccessUnderscoretokens :: [Text] -- ^ An array of access tokens corresponding to the Items that will be included in the report. The `assets` product must have been initialized for the Items during link; the Assets product cannot be added after initialization.
  , assetReportCreateRequestDaysUnderscorerequested :: Int -- ^ The maximum integer number of days of history to include in the Asset Report. If using Fannie Mae Day 1 Certainty, `days_requested` must be at least 61 for new originations or at least 31 for refinancings.  An Asset Report requested with \"Additional History\" (that is, with more than 61 days of transaction history) will incur an Additional History fee.
  , assetReportCreateRequestOptions :: Maybe AssetReportCreateRequestOptions -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AssetReportCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "assetReportCreateRequest")
instance ToJSON AssetReportCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "assetReportCreateRequest")


-- | An optional object to filter &#x60;/asset_report/create&#x60; results. If provided, must be non-&#x60;null&#x60;. The optional &#x60;user&#x60; object is required for the report to be eligible for Fannie Mae&#39;s Day 1 Certainty program.
data AssetReportCreateRequestOptions = AssetReportCreateRequestOptions
  { assetReportCreateRequestOptionsClientUnderscorereportUnderscoreid :: Maybe Text -- ^ Client-generated identifier, which can be used by lenders to track loan applications.
  , assetReportCreateRequestOptionsWebhook :: Maybe Text -- ^ URL to which Plaid will send Assets webhooks, for example when the requested Asset Report is ready.
  , assetReportCreateRequestOptionsIncludeUnderscorefastUnderscorereport :: Maybe Bool -- ^ true to return balance and identity earlier as a fast report. Defaults to false if omitted.
  , assetReportCreateRequestOptionsUser :: Maybe AssetReportUser -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AssetReportCreateRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "assetReportCreateRequestOptions")
instance ToJSON AssetReportCreateRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "assetReportCreateRequestOptions")


-- | AssetReportCreateResponse defines the response schema for &#x60;/asset_report/create&#x60;
newtype AssetReportCreateResponse = AssetReportCreateResponse { unAssetReportCreateResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | AssetReportFilterRequest defines the request schema for &#x60;/asset_report/filter&#x60;
data AssetReportFilterRequest = AssetReportFilterRequest
  { assetReportFilterRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , assetReportFilterRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , assetReportFilterRequestAssetUnderscorereportUnderscoretoken :: Text -- ^ A token that can be provided to endpoints such as `/asset_report/get` or `/asset_report/pdf/get` to fetch or update an Asset Report.
  , assetReportFilterRequestAccountUnderscoreidsUnderscoretoUnderscoreexclude :: [Text] -- ^ The accounts to exclude from the Asset Report, identified by `account_id`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AssetReportFilterRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "assetReportFilterRequest")
instance ToJSON AssetReportFilterRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "assetReportFilterRequest")


-- | AssetReportFilterResponse defines the response schema for &#x60;/asset_report/filter&#x60;
newtype AssetReportFilterResponse = AssetReportFilterResponse { unAssetReportFilterResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | AssetReportGetRequest defines the request schema for &#x60;/asset_report/get&#x60;
data AssetReportGetRequest = AssetReportGetRequest
  { assetReportGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , assetReportGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , assetReportGetRequestAssetUnderscorereportUnderscoretoken :: Text -- ^ A token that can be provided to endpoints such as `/asset_report/get` or `/asset_report/pdf/get` to fetch or update an Asset Report.
  , assetReportGetRequestIncludeUnderscoreinsights :: Maybe Bool -- ^ `true` if you would like to retrieve the Asset Report with Insights, `false` otherwise. This field defaults to `false` if omitted.
  , assetReportGetRequestFastUnderscorereport :: Maybe Bool -- ^ `true` to fetch \"fast\" version of asset report. Defaults to false if omitted.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AssetReportGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "assetReportGetRequest")
instance ToJSON AssetReportGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "assetReportGetRequest")


-- | AssetReportGetResponse defines the response schema for &#x60;/asset_report/get&#x60;
newtype AssetReportGetResponse = AssetReportGetResponse { unAssetReportGetResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | A representation of an Item within an Asset Report.
newtype AssetReportItem = AssetReportItem { unAssetReportItem :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | AssetReportPDFGetRequest defines the request schema for &#x60;/asset_report/pdf/get&#x60;
data AssetReportPDFGetRequest = AssetReportPDFGetRequest
  { assetReportPDFGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , assetReportPDFGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , assetReportPDFGetRequestAssetUnderscorereportUnderscoretoken :: Text -- ^ A token that can be provided to endpoints such as `/asset_report/get` or `/asset_report/pdf/get` to fetch or update an Asset Report.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AssetReportPDFGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "assetReportPDFGetRequest")
instance ToJSON AssetReportPDFGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "assetReportPDFGetRequest")


-- | AssetReportRefreshRequest defines the request schema for &#x60;/asset_report/refresh&#x60;
data AssetReportRefreshRequest = AssetReportRefreshRequest
  { assetReportRefreshRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , assetReportRefreshRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , assetReportRefreshRequestAssetUnderscorereportUnderscoretoken :: Text -- ^ The `asset_report_token` returned by the original call to `/asset_report/create`
  , assetReportRefreshRequestDaysUnderscorerequested :: Maybe Int -- ^ The maximum number of days of history to include in the Asset Report. Must be an integer. If not specified, the value from the original call to `/asset_report/create` will be used.
  , assetReportRefreshRequestOptions :: Maybe AssetReportRefreshRequestOptions -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AssetReportRefreshRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "assetReportRefreshRequest")
instance ToJSON AssetReportRefreshRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "assetReportRefreshRequest")


-- | An optional object to filter &#x60;/asset_report/refresh&#x60; results. If provided, cannot be &#x60;null&#x60;. If not specified, the &#x60;options&#x60; from the original call to &#x60;/asset_report/create&#x60; will be used.
data AssetReportRefreshRequestOptions = AssetReportRefreshRequestOptions
  { assetReportRefreshRequestOptionsClientUnderscorereportUnderscoreid :: Maybe Text -- ^ Client-generated identifier, which can be used by lenders to track loan applications.
  , assetReportRefreshRequestOptionsWebhook :: Maybe Text -- ^ URL to which Plaid will send Assets webhooks, for example when the requested Asset Report is ready.
  , assetReportRefreshRequestOptionsUser :: Maybe AssetReportUser -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AssetReportRefreshRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "assetReportRefreshRequestOptions")
instance ToJSON AssetReportRefreshRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "assetReportRefreshRequestOptions")


-- | AssetReportRefreshResponse defines the response schema for &#x60;/asset_report/refresh&#x60;
newtype AssetReportRefreshResponse = AssetReportRefreshResponse { unAssetReportRefreshResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | AssetReportRelayCreateRequest defines the request schema for &#x60;/asset_report/relay/create&#x60;
data AssetReportRelayCreateRequest = AssetReportRelayCreateRequest
  { assetReportRelayCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , assetReportRelayCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , assetReportRelayCreateRequestAssetUnderscorereportUnderscoretoken :: Text -- ^ A token that can be provided to endpoints such as `/asset_report/get` or `/asset_report/pdf/get` to fetch or update an Asset Report.
  , assetReportRelayCreateRequestSecondaryUnderscoreclientUnderscoreid :: Text -- ^ The `secondary_client_id` is the client id of the third party with whom you would like to share the Asset Report.
  , assetReportRelayCreateRequestWebhook :: Maybe Text -- ^ URL to which Plaid will send webhooks when the Secondary Client successfully retrieves an Asset Report by calling `asset_report/relay/get`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AssetReportRelayCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "assetReportRelayCreateRequest")
instance ToJSON AssetReportRelayCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "assetReportRelayCreateRequest")


-- | AssetReportRelayCreateResponse defines the response schema for &#x60;/asset_report/relay/create&#x60;
newtype AssetReportRelayCreateResponse = AssetReportRelayCreateResponse { unAssetReportRelayCreateResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | AssetReportRelayGetRequest defines the request schema for &#x60;/asset_report/relay/get&#x60;
data AssetReportRelayGetRequest = AssetReportRelayGetRequest
  { assetReportRelayGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , assetReportRelayGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , assetReportRelayGetRequestAssetUnderscorerelayUnderscoretoken :: Text -- ^ The `asset_relay_token` granting access to the Asset Report you would like to get.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AssetReportRelayGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "assetReportRelayGetRequest")
instance ToJSON AssetReportRelayGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "assetReportRelayGetRequest")


-- | AssetReportRelayRefreshRequest defines the request schema for &#x60;/asset_report/relay/refresh&#x60;
data AssetReportRelayRefreshRequest = AssetReportRelayRefreshRequest
  { assetReportRelayRefreshRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , assetReportRelayRefreshRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , assetReportRelayRefreshRequestAssetUnderscorerelayUnderscoretoken :: Text -- ^ 
  , assetReportRelayRefreshRequestWebhook :: Maybe Text -- ^ The URL registered to receive webhooks when the Asset Report of a Relay Token has been refreshed.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AssetReportRelayRefreshRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "assetReportRelayRefreshRequest")
instance ToJSON AssetReportRelayRefreshRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "assetReportRelayRefreshRequest")


-- | AssetReportRelayRefreshResponse defines the response schema for &#x60;/asset_report/relay/refresh&#x60;
newtype AssetReportRelayRefreshResponse = AssetReportRelayRefreshResponse { unAssetReportRelayRefreshResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | AssetReportRelayRemoveRequest defines the request schema for &#x60;/asset_report/relay/remove&#x60;
data AssetReportRelayRemoveRequest = AssetReportRelayRemoveRequest
  { assetReportRelayRemoveRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , assetReportRelayRemoveRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , assetReportRelayRemoveRequestAssetUnderscorerelayUnderscoretoken :: Text -- ^ The `asset_relay_token` you would like to revoke.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AssetReportRelayRemoveRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "assetReportRelayRemoveRequest")
instance ToJSON AssetReportRelayRemoveRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "assetReportRelayRemoveRequest")


-- | AssetReportRelayRemoveResponse defines the response schema for &#x60;/asset_report/relay/remove&#x60;
newtype AssetReportRelayRemoveResponse = AssetReportRelayRemoveResponse { unAssetReportRelayRemoveResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | AssetReportRemoveRequest defines the request schema for &#x60;/asset_report/remove&#x60;
data AssetReportRemoveRequest = AssetReportRemoveRequest
  { assetReportRemoveRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , assetReportRemoveRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , assetReportRemoveRequestAssetUnderscorereportUnderscoretoken :: Text -- ^ A token that can be provided to endpoints such as `/asset_report/get` or `/asset_report/pdf/get` to fetch or update an Asset Report.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AssetReportRemoveRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "assetReportRemoveRequest")
instance ToJSON AssetReportRemoveRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "assetReportRemoveRequest")


-- | AssetReportRemoveResponse defines the response schema for &#x60;/asset_report/remove&#x60;
newtype AssetReportRemoveResponse = AssetReportRemoveResponse { unAssetReportRemoveResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | A transaction on the asset report
data AssetReportTransaction = AssetReportTransaction
  { assetReportTransactionTransactionUnderscoretype :: Maybe Text -- ^ Please use the `payment_channel` field, `transaction_type` will be deprecated in the future.  `digital:` transactions that took place online.  `place:` transactions that were made at a physical location.  `special:` transactions that relate to banks, e.g. fees or deposits.  `unresolved:` transactions that do not fit into the other three types. 
  , assetReportTransactionPendingUnderscoretransactionUnderscoreid :: Maybe Text -- ^ The ID of a posted transaction's associated pending transaction, where applicable.
  , assetReportTransactionCategoryUnderscoreid :: Maybe Text -- ^ The ID of the category to which this transaction belongs. For a full list of categories, see [`/categories/get`](https://plaid.com/docs/api/products/transactions/#categoriesget).  If the `transactions` object was returned by an Assets endpoint such as `/asset_report/get/` or `/asset_report/pdf/get`, this field will only appear in an Asset Report with Insights.
  , assetReportTransactionCategory :: Maybe [Text] -- ^ A hierarchical array of the categories to which this transaction belongs. For a full list of categories, see [`/categories/get`](https://plaid.com/docs/api/products/transactions/#categoriesget).  If the `transactions` object was returned by an Assets endpoint such as `/asset_report/get/` or `/asset_report/pdf/get`, this field will only appear in an Asset Report with Insights.
  , assetReportTransactionLocation :: Maybe Location -- ^ 
  , assetReportTransactionPaymentUnderscoremeta :: Maybe PaymentMeta -- ^ 
  , assetReportTransactionAccountUnderscoreowner :: Maybe Text -- ^ The name of the account owner. This field is not typically populated and only relevant when dealing with sub-accounts.
  , assetReportTransactionName :: Maybe Text -- ^ The merchant name or transaction description.  If the `transactions` object was returned by a Transactions endpoint such as `/transactions/get`, this field will always appear. If the `transactions` object was returned by an Assets endpoint such as `/asset_report/get/` or `/asset_report/pdf/get`, this field will only appear in an Asset Report with Insights.
  , assetReportTransactionOriginalUnderscoredescription :: Text -- ^ The string returned by the financial institution to describe the transaction. For transactions returned by `/transactions/get`, this field is in beta and will be omitted unless the client is both enrolled in the closed beta program and has set `options.include_original_description` to `true`.
  , assetReportTransactionAccountUnderscoreid :: Text -- ^ The ID of the account in which this transaction occurred.
  , assetReportTransactionAmount :: Double -- ^ The settled value of the transaction, denominated in the account's currency, as stated in `iso_currency_code` or `unofficial_currency_code`. Positive values when money moves out of the account; negative values when money moves in. For example, debit card purchases are positive; credit card payments, direct deposits, and refunds are negative.
  , assetReportTransactionIsoUnderscorecurrencyUnderscorecode :: Text -- ^ The ISO-4217 currency code of the transaction. Always `null` if `unofficial_currency_code` is non-null.
  , assetReportTransactionUnofficialUnderscorecurrencyUnderscorecode :: Text -- ^ The unofficial currency code associated with the transaction. Always `null` if `iso_currency_code` is non-`null`. Unofficial currency codes are used for currencies that do not have official ISO currency codes, such as cryptocurrencies and the currencies of certain countries.  See the [currency code schema](https://plaid.com/docs/api/accounts#currency-code-schema) for a full listing of supported `iso_currency_code`s.
  , assetReportTransactionDate :: Day -- ^ For pending transactions, the date that the transaction occurred; for posted transactions, the date that the transaction posted. Both dates are returned in an [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format ( `YYYY-MM-DD` ).
  , assetReportTransactionPending :: Bool -- ^ When `true`, identifies the transaction as pending or unsettled. Pending transaction details (name, type, amount, category ID) may change before they are settled.
  , assetReportTransactionTransactionUnderscoreid :: Text -- ^ The unique ID of the transaction. Like all Plaid identifiers, the `transaction_id` is case sensitive.
  , assetReportTransactionMerchantUnderscorename :: Maybe Text -- ^ The merchant name, as extracted by Plaid from the `name` field.
  , assetReportTransactionCheckUnderscorenumber :: Maybe Text -- ^ The check number of the transaction. This field is only populated for check transactions.
  , assetReportTransactionDateUnderscoretransacted :: Maybe Text -- ^ The date on which the transaction took place, in IS0 8601 format.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AssetReportTransaction where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "assetReportTransaction")
instance ToJSON AssetReportTransaction where
  toJSON = genericToJSON (removeFieldLabelPrefix False "assetReportTransaction")


-- | 
data AssetReportTransactionAllOf = AssetReportTransactionAllOf
  { assetReportTransactionAllOfDateUnderscoretransacted :: Maybe Text -- ^ The date on which the transaction took place, in IS0 8601 format.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AssetReportTransactionAllOf where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "assetReportTransactionAllOf")
instance ToJSON AssetReportTransactionAllOf where
  toJSON = genericToJSON (removeFieldLabelPrefix False "assetReportTransactionAllOf")


-- | The user object allows you to provide additional information about the user to be appended to the Asset Report. All fields are optional. The &#x60;first_name&#x60;, &#x60;last_name&#x60;, and &#x60;ssn&#x60; fields are required if you would like the Report to be eligible for Fannie Mae’s Day 1 Certainty™ program.
newtype AssetReportUser = AssetReportUser { unAssetReportUser :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Fired when Asset Report generation has failed. The resulting &#x60;error&#x60; will have an &#x60;error_type&#x60; of &#x60;ASSET_REPORT_ERROR&#x60;.
newtype AssetsErrorWebhook = AssetsErrorWebhook { unAssetsErrorWebhook :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Fired when the Asset Report has been generated and &#x60;/asset_report/get&#x60; is ready to be called.  If you attempt to retrieve an Asset Report before this webhook has fired, you’ll receive a response with the HTTP status code 400 and a Plaid error code of &#x60;PRODUCT_NOT_READY&#x60;.
newtype AssetsProductReadyWebhook = AssetsProductReadyWebhook { unAssetsProductReadyWebhook :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Fired when the Secondary Client successfully retrieves an Asset Report by calling &#x60;asset_report/relay/get&#x60;.
newtype AssetsRelayWebhook = AssetsRelayWebhook { unAssetsRelayWebhook :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object containing identifying numbers used for making electronic transfers to and from the &#x60;accounts&#x60;. The identifying number type (ACH, EFT, IBAN, or BACS) used will depend on the country of the account. An account may have more than one number type. If a particular identifying number type is not used by any &#x60;accounts&#x60; for which data has been requested, the array for that type will be empty.
newtype AuthGetNumbers = AuthGetNumbers { unAuthGetNumbers :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | AuthGetRequest defines the request schema for &#x60;/auth/get&#x60;
data AuthGetRequest = AuthGetRequest
  { authGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , authGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , authGetRequestAccessUnderscoretoken :: Text -- ^ The access token associated with the Item data is being requested for.
  , authGetRequestOptions :: Maybe AuthGetRequestOptions -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AuthGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "authGetRequest")
instance ToJSON AuthGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "authGetRequest")


-- | An optional object to filter &#x60;/auth/get&#x60; results.
data AuthGetRequestOptions = AuthGetRequestOptions
  { authGetRequestOptionsAccountUnderscoreids :: Maybe [Text] -- ^ A list of `account_ids` to retrieve for the Item. Note: An error will be returned if a provided `account_id` is not associated with the Item.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AuthGetRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "authGetRequestOptions")
instance ToJSON AuthGetRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "authGetRequestOptions")


-- | AuthGetResponse defines the response schema for &#x60;/auth/get&#x60;
newtype AuthGetResponse = AuthGetResponse { unAuthGetResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Metadata that captures information about the Auth features of an institution.
newtype AuthMetadata = AuthMetadata { unAuthMetadata :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Metadata specifically related to which auth methods an institution supports.
newtype AuthSupportedMethods = AuthSupportedMethods { unAuthSupportedMethods :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Fired when an Item is verified via automated micro-deposits. We recommend communicating to your users when this event is received to notify them that their account is verified and ready for use.
newtype AutomaticallyVerifiedWebhook = AutomaticallyVerifiedWebhook { unAutomaticallyVerifiedWebhook :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The object contains a risk score and a risk tier that evaluate the transaction return risk because an account is overdrawn or because an ineligible account is used. Common return codes in this category include: \&quot;R01\&quot;, \&quot;R02\&quot;, \&quot;R03\&quot;, \&quot;R04\&quot;, \&quot;R06\&quot;, \&quot;R08\&quot;,  \&quot;R09\&quot;, \&quot;R13\&quot;, \&quot;R16\&quot;, \&quot;R17\&quot;, \&quot;R20\&quot;, \&quot;R23\&quot;. These returns have a turnaround time of 2 banking days.
data BankInitiatedReturnRisk = BankInitiatedReturnRisk
  { bankInitiatedReturnRiskScore :: Int -- ^ A score from 0-99 that indicates the transaction return risk: a higher risk score suggests a higher return likelihood.
  , bankInitiatedReturnRiskRiskUnderscoretier :: Int -- ^ In the `bank_initiated_return_risk` object, there are eight risk tiers corresponding to the scores:   1: Predicted bank-initiated return incidence rate between 0.0% - 0.5%   2: Predicted bank-initiated return incidence rate between 0.5% - 1.5%   3: Predicted bank-initiated return incidence rate between 1.5% - 3%   4: Predicted bank-initiated return incidence rate between 3% - 5%   5: Predicted bank-initiated return incidence rate between 5% - 10%   6: Predicted bank-initiated return incidence rate between 10% - 15%   7: Predicted bank-initiated return incidence rate between 15% and 50%   8: Predicted bank-initiated return incidence rate greater than 50% 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON BankInitiatedReturnRisk where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "bankInitiatedReturnRisk")
instance ToJSON BankInitiatedReturnRisk where
  toJSON = genericToJSON (removeFieldLabelPrefix False "bankInitiatedReturnRisk")


-- | Represents a bank transfer within the Bank Transfers API.
newtype BankTransfer = BankTransfer { unBankTransfer :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Information about the balance of a bank transfer
newtype BankTransferBalance = BankTransferBalance { unBankTransferBalance :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Defines the request schema for &#x60;/bank_transfer/balance/get&#x60;
data BankTransferBalanceGetRequest = BankTransferBalanceGetRequest
  { bankTransferBalanceGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , bankTransferBalanceGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , bankTransferBalanceGetRequestOriginationUnderscoreaccountUnderscoreid :: Maybe Text -- ^ If multiple origination accounts are available, `origination_account_id` must be used to specify the account for which balance will be returned.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON BankTransferBalanceGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "bankTransferBalanceGetRequest")
instance ToJSON BankTransferBalanceGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "bankTransferBalanceGetRequest")


-- | Defines the response schema for &#x60;/bank_transfer/balance/get&#x60;
newtype BankTransferBalanceGetResponse = BankTransferBalanceGetResponse { unBankTransferBalanceGetResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Defines the request schema for &#x60;/bank_transfer/cancel&#x60;
data BankTransferCancelRequest = BankTransferCancelRequest
  { bankTransferCancelRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , bankTransferCancelRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , bankTransferCancelRequestBankUnderscoretransferUnderscoreid :: Text -- ^ Plaid’s unique identifier for a bank transfer.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON BankTransferCancelRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "bankTransferCancelRequest")
instance ToJSON BankTransferCancelRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "bankTransferCancelRequest")


-- | Defines the response schema for &#x60;/bank_transfer/cancel&#x60;
newtype BankTransferCancelResponse = BankTransferCancelResponse { unBankTransferCancelResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Defines the request schema for &#x60;/bank_transfer/create&#x60;
data BankTransferCreateRequest = BankTransferCreateRequest
  { bankTransferCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , bankTransferCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , bankTransferCreateRequestIdempotencyUnderscorekey :: Text -- ^ A random key provided by the client, per unique bank transfer. Maximum of 50 characters.  The API supports idempotency for safely retrying requests without accidentally performing the same operation twice. For example, if a request to create a bank transfer fails due to a network connection error, you can retry the request with the same idempotency key to guarantee that only a single bank transfer is created.
  , bankTransferCreateRequestAccessUnderscoretoken :: Text -- ^ The Plaid `access_token` for the account that will be debited or credited.
  , bankTransferCreateRequestAccountUnderscoreid :: Text -- ^ The Plaid `account_id` for the account that will be debited or credited.
  , bankTransferCreateRequestType :: BankTransferType -- ^ 
  , bankTransferCreateRequestNetwork :: BankTransferNetwork -- ^ 
  , bankTransferCreateRequestAmount :: Text -- ^ The amount of the bank transfer (decimal string with two digits of precision e.g. \"10.00\").
  , bankTransferCreateRequestIsoUnderscorecurrencyUnderscorecode :: Text -- ^ The currency of the transfer amount – should be set to \"USD\".
  , bankTransferCreateRequestDescription :: Text -- ^ The transfer description. Maximum of 10 characters.
  , bankTransferCreateRequestAchUnderscoreclass :: Maybe ACHClass -- ^ 
  , bankTransferCreateRequestUser :: BankTransferUser -- ^ 
  , bankTransferCreateRequestCustomUnderscoretag :: Maybe Text -- ^ An arbitrary string provided by the client for storage with the bank transfer. May be up to 100 characters.
  , bankTransferCreateRequestMetadata :: Maybe (Map.Map String Text) -- ^ The Metadata object is a mapping of client-provided string fields to any string value. The following limitations apply: - The JSON values must be Strings (no nested JSON objects allowed) - Only ASCII characters may be used - Maximum of 50 key/value pairs - Maximum key length of 40 characters - Maximum value length of 500 characters 
  , bankTransferCreateRequestOriginationUnderscoreaccountUnderscoreid :: Maybe Text -- ^ Plaid’s unique identifier for the origination account for this transfer. If you have more than one origination account, this value must be specified. Otherwise, this field should be left blank.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON BankTransferCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "bankTransferCreateRequest")
instance ToJSON BankTransferCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "bankTransferCreateRequest")


-- | Defines the response schema for &#x60;/bank_transfer/create&#x60;
newtype BankTransferCreateResponse = BankTransferCreateResponse { unBankTransferCreateResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Indicates the direction of the transfer: &#x60;outbound&#x60; for API-initiated transfers, or &#x60;inbound&#x60; for payments received by the FBO account.
data BankTransferDirection = BankTransferDirection
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON BankTransferDirection where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "bankTransferDirection")
instance ToJSON BankTransferDirection where
  toJSON = genericToJSON (removeFieldLabelPrefix False "bankTransferDirection")


-- | Represents an event in the Bank Transfers API.
newtype BankTransferEvent = BankTransferEvent { unBankTransferEvent :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The type of bank transfer. This will be either &#x60;debit&#x60; or &#x60;credit&#x60;.  A &#x60;debit&#x60; indicates a transfer of money into your origination account; a &#x60;credit&#x60; indicates a transfer of money out of your origination account.
data BankTransferEventListBankTransferType = BankTransferEventListBankTransferType
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON BankTransferEventListBankTransferType where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "bankTransferEventListBankTransferType")
instance ToJSON BankTransferEventListBankTransferType where
  toJSON = genericToJSON (removeFieldLabelPrefix False "bankTransferEventListBankTransferType")


-- | Indicates the direction of the transfer: &#x60;outbound&#x60;: for API-initiated transfers &#x60;inbound&#x60;: for payments received by the FBO account.
data BankTransferEventListDirection = BankTransferEventListDirection
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON BankTransferEventListDirection where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "bankTransferEventListDirection")
instance ToJSON BankTransferEventListDirection where
  toJSON = genericToJSON (removeFieldLabelPrefix False "bankTransferEventListDirection")


-- | Defines the request schema for &#x60;/bank_transfer/event/list&#x60;
data BankTransferEventListRequest = BankTransferEventListRequest
  { bankTransferEventListRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , bankTransferEventListRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , bankTransferEventListRequestStartUnderscoredate :: Maybe UTCTime -- ^ The start datetime of bank transfers to list. This should be in RFC 3339 format (i.e. `2019-12-06T22:35:49Z`)
  , bankTransferEventListRequestEndUnderscoredate :: Maybe UTCTime -- ^ The end datetime of bank transfers to list. This should be in RFC 3339 format (i.e. `2019-12-06T22:35:49Z`)
  , bankTransferEventListRequestBankUnderscoretransferUnderscoreid :: Maybe Text -- ^ Plaid’s unique identifier for a bank transfer.
  , bankTransferEventListRequestAccountUnderscoreid :: Maybe Text -- ^ The account ID to get events for all transactions to/from an account.
  , bankTransferEventListRequestBankUnderscoretransferUnderscoretype :: Maybe BankTransferEventListBankTransferType -- ^ 
  , bankTransferEventListRequestEventUnderscoretypes :: Maybe [BankTransferEventType] -- ^ Filter events by event type.
  , bankTransferEventListRequestCount :: Maybe Int -- ^ The maximum number of bank transfer events to return. If the number of events matching the above parameters is greater than `count`, the most recent events will be returned.
  , bankTransferEventListRequestOffset :: Maybe Int -- ^ The offset into the list of bank transfer events. When `count`=25 and `offset`=0, the first 25 events will be returned. When `count`=25 and `offset`=25, the next 25 bank transfer events will be returned.
  , bankTransferEventListRequestOriginationUnderscoreaccountUnderscoreid :: Maybe Text -- ^ The origination account ID to get events for transfers from a specific origination account.
  , bankTransferEventListRequestDirection :: Maybe BankTransferEventListDirection -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON BankTransferEventListRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "bankTransferEventListRequest")
instance ToJSON BankTransferEventListRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "bankTransferEventListRequest")


-- | Defines the response schema for &#x60;/bank_transfer/event/list&#x60;
newtype BankTransferEventListResponse = BankTransferEventListResponse { unBankTransferEventListResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Defines the request schema for &#x60;/bank_transfer/event/sync&#x60;
data BankTransferEventSyncRequest = BankTransferEventSyncRequest
  { bankTransferEventSyncRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , bankTransferEventSyncRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , bankTransferEventSyncRequestAfterUnderscoreid :: Int -- ^ The latest (largest) `event_id` fetched via the sync endpoint, or 0 initially.
  , bankTransferEventSyncRequestCount :: Maybe Int -- ^ The maximum number of bank transfer events to return.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON BankTransferEventSyncRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "bankTransferEventSyncRequest")
instance ToJSON BankTransferEventSyncRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "bankTransferEventSyncRequest")


-- | Defines the response schema for &#x60;/bank_transfer/event/sync&#x60;
newtype BankTransferEventSyncResponse = BankTransferEventSyncResponse { unBankTransferEventSyncResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The type of event that this bank transfer represents.  &#x60;pending&#x60;: A new transfer was created; it is in the pending state.  &#x60;cancelled&#x60;: The transfer was cancelled by the client.  &#x60;failed&#x60;: The transfer failed, no funds were moved.  &#x60;posted&#x60;: The transfer has been successfully submitted to the payment network.  &#x60;reversed&#x60;: A posted transfer was reversed.
data BankTransferEventType = BankTransferEventType
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON BankTransferEventType where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "bankTransferEventType")
instance ToJSON BankTransferEventType where
  toJSON = genericToJSON (removeFieldLabelPrefix False "bankTransferEventType")


-- | The failure reason if the type of this transfer is &#x60;\&quot;failed\&quot;&#x60; or &#x60;\&quot;reversed\&quot;&#x60;. Null value otherwise.
newtype BankTransferFailure = BankTransferFailure { unBankTransferFailure :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Defines the request schema for &#x60;/bank_transfer/get&#x60;
data BankTransferGetRequest = BankTransferGetRequest
  { bankTransferGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , bankTransferGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , bankTransferGetRequestBankUnderscoretransferUnderscoreid :: Text -- ^ Plaid’s unique identifier for a bank transfer.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON BankTransferGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "bankTransferGetRequest")
instance ToJSON BankTransferGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "bankTransferGetRequest")


-- | Defines the response schema for &#x60;/bank_transfer/get&#x60;
newtype BankTransferGetResponse = BankTransferGetResponse { unBankTransferGetResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Defines the request schema for &#x60;/bank_transfer/list&#x60;
data BankTransferListRequest = BankTransferListRequest
  { bankTransferListRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , bankTransferListRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , bankTransferListRequestStartUnderscoredate :: Maybe UTCTime -- ^ The start datetime of bank transfers to list. This should be in RFC 3339 format (i.e. `2019-12-06T22:35:49Z`)
  , bankTransferListRequestEndUnderscoredate :: Maybe UTCTime -- ^ The end datetime of bank transfers to list. This should be in RFC 3339 format (i.e. `2019-12-06T22:35:49Z`)
  , bankTransferListRequestCount :: Maybe Int -- ^ The maximum number of bank transfers to return.
  , bankTransferListRequestOffset :: Maybe Int -- ^ The number of bank transfers to skip before returning results.
  , bankTransferListRequestOriginationUnderscoreaccountUnderscoreid :: Maybe Text -- ^ Filter bank transfers to only those originated through the specified origination account.
  , bankTransferListRequestDirection :: Maybe BankTransferDirection -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON BankTransferListRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "bankTransferListRequest")
instance ToJSON BankTransferListRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "bankTransferListRequest")


-- | Defines the response schema for &#x60;/bank_transfer/list&#x60;
newtype BankTransferListResponse = BankTransferListResponse { unBankTransferListResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Defines the request schema for &#x60;/bank_transfer/migrate_account&#x60;
data BankTransferMigrateAccountRequest = BankTransferMigrateAccountRequest
  { bankTransferMigrateAccountRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , bankTransferMigrateAccountRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , bankTransferMigrateAccountRequestAccountUnderscorenumber :: Text -- ^ The user's account number.
  , bankTransferMigrateAccountRequestRoutingUnderscorenumber :: Text -- ^ The user's routing number.
  , bankTransferMigrateAccountRequestWireUnderscoreroutingUnderscorenumber :: Maybe Text -- ^ The user's wire transfer routing number. This is the ABA number; for some institutions, this may differ from the ACH number used in `routing_number`.
  , bankTransferMigrateAccountRequestAccountUnderscoretype :: Text -- ^ The type of the bank account (`checking` or `savings`).
  } deriving (Show, Eq, Generic, Data)

instance FromJSON BankTransferMigrateAccountRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "bankTransferMigrateAccountRequest")
instance ToJSON BankTransferMigrateAccountRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "bankTransferMigrateAccountRequest")


-- | Defines the response schema for &#x60;/bank_transfer/migrate_account&#x60;
newtype BankTransferMigrateAccountResponse = BankTransferMigrateAccountResponse { unBankTransferMigrateAccountResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The network or rails used for the transfer. Valid options are &#x60;ach&#x60;, &#x60;same-day-ach&#x60;, or &#x60;wire&#x60;.
data BankTransferNetwork = BankTransferNetwork
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON BankTransferNetwork where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "bankTransferNetwork")
instance ToJSON BankTransferNetwork where
  toJSON = genericToJSON (removeFieldLabelPrefix False "bankTransferNetwork")


-- | The status of the transfer.
data BankTransferStatus = BankTransferStatus
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON BankTransferStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "bankTransferStatus")
instance ToJSON BankTransferStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "bankTransferStatus")


-- | BankTransferSweep describes a sweep transfer.
newtype BankTransferSweep = BankTransferSweep { unBankTransferSweep :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Defines the request schema for &#x60;/bank_transfer/sweep/get&#x60;
data BankTransferSweepGetRequest = BankTransferSweepGetRequest
  { bankTransferSweepGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , bankTransferSweepGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , bankTransferSweepGetRequestSweepUnderscoreid :: Text -- ^ Identifier of the sweep.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON BankTransferSweepGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "bankTransferSweepGetRequest")
instance ToJSON BankTransferSweepGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "bankTransferSweepGetRequest")


-- | BankTransferSweepGetResponse defines the response schema for &#x60;/bank_transfer/sweep/get&#x60;
newtype BankTransferSweepGetResponse = BankTransferSweepGetResponse { unBankTransferSweepGetResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | BankTransferSweepListRequest defines the request schema for &#x60;/bank_transfer/sweep/list&#x60;
data BankTransferSweepListRequest = BankTransferSweepListRequest
  { bankTransferSweepListRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , bankTransferSweepListRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , bankTransferSweepListRequestOriginationUnderscoreaccountUnderscoreid :: Maybe Text -- ^ If multiple origination accounts are available, `origination_account_id` must be used to specify the account that the sweeps belong to.
  , bankTransferSweepListRequestStartUnderscoretime :: Maybe UTCTime -- ^ The start datetime of sweeps to return (RFC 3339 format).
  , bankTransferSweepListRequestEndUnderscoretime :: Maybe UTCTime -- ^ The end datetime of sweeps to return (RFC 3339 format).
  , bankTransferSweepListRequestCount :: Maybe Int -- ^ The maximum number of sweeps to return.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON BankTransferSweepListRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "bankTransferSweepListRequest")
instance ToJSON BankTransferSweepListRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "bankTransferSweepListRequest")


-- | BankTransferSweepListResponse defines the response schema for &#x60;/bank_transfer/sweep/list&#x60;
newtype BankTransferSweepListResponse = BankTransferSweepListResponse { unBankTransferSweepListResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The type of bank transfer. This will be either &#x60;debit&#x60; or &#x60;credit&#x60;.  A &#x60;debit&#x60; indicates a transfer of money into the origination account; a &#x60;credit&#x60; indicates a transfer of money out of the origination account.
data BankTransferType = BankTransferType
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON BankTransferType where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "bankTransferType")
instance ToJSON BankTransferType where
  toJSON = genericToJSON (removeFieldLabelPrefix False "bankTransferType")


-- | The legal name and other information for the account holder.
newtype BankTransferUser = BankTransferUser { unBankTransferUser :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Fired when new bank transfer events are available. Receiving this webhook indicates you should fetch the new events from &#x60;/bank_transfer/event/sync&#x60;.
newtype BankTransfersEventsUpdateWebhook = BankTransfersEventsUpdateWebhook { unBankTransfersEventsUpdateWebhook :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | CategoriesGetResponse defines the response schema for &#x60;/categories/get&#x60;
newtype CategoriesGetResponse = CategoriesGetResponse { unCategoriesGetResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Information describing a transaction category
newtype Category = Category { unCategory :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An error object and associated &#x60;item_id&#x60; used to identify a specific Item and error when a batch operation operating on multiple Items has encountered an error in one of the Items.
newtype Cause = Cause { unCause :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | 
data CauseAllOf = CauseAllOf
  { causeAllOfItemUnderscoreid :: Maybe Text -- ^ The `item_id` of the Item associated with this webhook, warning, or error
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CauseAllOf where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "causeAllOf")
instance ToJSON CauseAllOf where
  toJSON = genericToJSON (removeFieldLabelPrefix False "causeAllOf")


-- | A client-provided transaction that Plaid has enhanced.
newtype ClientProvidedEnhancedTransaction = ClientProvidedEnhancedTransaction { unClientProvidedEnhancedTransaction :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | A client-provided transaction for Plaid to enhance.
newtype ClientProvidedRawTransaction = ClientProvidedRawTransaction { unClientProvidedRawTransaction :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Describes the connected application for a particular end user.
data ConnectedApplication = ConnectedApplication
  { connectedApplicationApplicationUnderscoreid :: Text -- ^ This field will map to the application ID that is returned from /item/applications/list, or provided to the institution in an oauth redirect.
  , connectedApplicationName :: Text -- ^ The name of the application
  , connectedApplicationDisplayUnderscorename :: Maybe Text -- ^ A human-readable name of the application for display purposes
  , connectedApplicationLogoUnderscoreurl :: Maybe Text -- ^ A URL that links to the application logo image.
  , connectedApplicationApplicationUnderscoreurl :: Maybe Text -- ^ The URL for the application's website
  , connectedApplicationReasonUnderscoreforUnderscoreaccess :: Maybe Text -- ^ A string provided by the connected app stating why they use their respective enabled products.
  , connectedApplicationCreatedUnderscoreat :: Day -- ^ The date this application was linked in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) (YYYY-MM-DD) format in UTC.
  , connectedApplicationScopes :: Maybe ScopesNullable -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ConnectedApplication where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "connectedApplication")
instance ToJSON ConnectedApplication where
  toJSON = genericToJSON (removeFieldLabelPrefix False "connectedApplication")


-- | ISO-3166-1 alpha-2 country code standard.
data CountryCode = CountryCode
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CountryCode where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "countryCode")
instance ToJSON CountryCode where
  toJSON = genericToJSON (removeFieldLabelPrefix False "countryCode")


-- | Request input for creating an entity screening review
data CreateEntityScreeningRequest = CreateEntityScreeningRequest
  { createEntityScreeningRequestSearchUnderscoreterms :: EntityWatchlistSearchTerms -- ^ 
  , createEntityScreeningRequestClientUnderscoreuserUnderscoreid :: Maybe Text -- ^ 
  , createEntityScreeningRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , createEntityScreeningRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreateEntityScreeningRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "createEntityScreeningRequest")
instance ToJSON CreateEntityScreeningRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "createEntityScreeningRequest")


-- | Request input for creating a review for an entity screening
data CreateEntityWatchlistScreeningReviewRequest = CreateEntityWatchlistScreeningReviewRequest
  { createEntityWatchlistScreeningReviewRequestConfirmedUnderscorehits :: [Text] -- ^ Hits to mark as a true positive after thorough manual review. These hits will never recur or be updated once dismissed. In most cases, confirmed hits indicate that the customer should be rejected.
  , createEntityWatchlistScreeningReviewRequestDismissedUnderscorehits :: [Text] -- ^ Hits to mark as a false positive after thorough manual review. These hits will never recur or be updated once dismissed.
  , createEntityWatchlistScreeningReviewRequestComment :: Maybe Text -- ^ A comment submitted by a team member as part of reviewing a watchlist screening.
  , createEntityWatchlistScreeningReviewRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , createEntityWatchlistScreeningReviewRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , createEntityWatchlistScreeningReviewRequestEntityUnderscorewatchlistUnderscorescreeningUnderscoreid :: Text -- ^ ID of the associated entity screening.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreateEntityWatchlistScreeningReviewRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "createEntityWatchlistScreeningReviewRequest")
instance ToJSON CreateEntityWatchlistScreeningReviewRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "createEntityWatchlistScreeningReviewRequest")


-- | Request input for creating a screening review
data CreateIndividualWatchlistScreeningReviewRequest = CreateIndividualWatchlistScreeningReviewRequest
  { createIndividualWatchlistScreeningReviewRequestConfirmedUnderscorehits :: [Text] -- ^ Hits to mark as a true positive after thorough manual review. These hits will never recur or be updated once dismissed. In most cases, confirmed hits indicate that the customer should be rejected.
  , createIndividualWatchlistScreeningReviewRequestDismissedUnderscorehits :: [Text] -- ^ Hits to mark as a false positive after thorough manual review. These hits will never recur or be updated once dismissed.
  , createIndividualWatchlistScreeningReviewRequestComment :: Maybe Text -- ^ A comment submitted by a team member as part of reviewing a watchlist screening.
  , createIndividualWatchlistScreeningReviewRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , createIndividualWatchlistScreeningReviewRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , createIndividualWatchlistScreeningReviewRequestWatchlistUnderscorescreeningUnderscoreid :: Text -- ^ ID of the associated screening.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreateIndividualWatchlistScreeningReviewRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "createIndividualWatchlistScreeningReviewRequest")
instance ToJSON CreateIndividualWatchlistScreeningReviewRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "createIndividualWatchlistScreeningReviewRequest")


-- | Valid account subtypes for credit accounts. For a list containing descriptions of each subtype, see [Account schemas](https://plaid.com/docs/api/accounts/#StandaloneAccountType-credit).
data CreditAccountSubtype = CreditAccountSubtype
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditAccountSubtype where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditAccountSubtype")
instance ToJSON CreditAccountSubtype where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditAccountSubtype")


-- | CreditAuditCopyTokenCreateRequest defines the request schema for &#x60;/credit/audit_copy_token/create&#x60;
data CreditAuditCopyTokenCreateRequest = CreditAuditCopyTokenCreateRequest
  { creditAuditCopyTokenCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , creditAuditCopyTokenCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , creditAuditCopyTokenCreateRequestReportUnderscoretokens :: [ReportToken] -- ^ List of report tokens; can include both Asset Report tokens and Income Report tokens.
  , creditAuditCopyTokenCreateRequestAuditorUnderscoreid :: Text -- ^ The `auditor_id` of the third party with whom you would like to share the Asset Report and/or Income Report.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditAuditCopyTokenCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditAuditCopyTokenCreateRequest")
instance ToJSON CreditAuditCopyTokenCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditAuditCopyTokenCreateRequest")


-- | CreditAuditCopyTokenCreateResponse defines the response schema for &#x60;/credit/audit_copy_token/get&#x60;
newtype CreditAuditCopyTokenCreateResponse = CreditAuditCopyTokenCreateResponse { unCreditAuditCopyTokenCreateResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The report of the Bank Income data for an end user.
data CreditBankIncome = CreditBankIncome
  { creditBankIncomeBankUnderscoreincomeUnderscoreid :: Maybe Text -- ^ The unique identifier associated with the Bank Income Report.
  , creditBankIncomeGeneratedUnderscoretime :: Maybe UTCTime -- ^ The time when the Bank Income Report was generated.
  , creditBankIncomeDaysUnderscorerequested :: Maybe Int -- ^ The number of days requested by the customer for the Bank Income Report.
  , creditBankIncomeItems :: Maybe [CreditBankIncomeItem] -- ^ The list of Items in the report along with the associated metadata about the Item.
  , creditBankIncomeBankUnderscoreincomeUnderscoresummary :: Maybe CreditBankIncomeSummary -- ^ 
  , creditBankIncomeWarnings :: Maybe [CreditBankIncomeWarning] -- ^ If data from the Bank Income report was unable to be retrieved, the warnings will contain information about the error that caused the data to be incomplete.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditBankIncome where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditBankIncome")
instance ToJSON CreditBankIncome where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditBankIncome")


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


-- | The account type. This will always be &#x60;depository&#x60;.
data CreditBankIncomeAccountType = CreditBankIncomeAccountType
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditBankIncomeAccountType where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditBankIncomeAccountType")
instance ToJSON CreditBankIncomeAccountType where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditBankIncomeAccountType")


-- | The income category.
data CreditBankIncomeCategory = CreditBankIncomeCategory
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditBankIncomeCategory where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditBankIncomeCategory")
instance ToJSON CreditBankIncomeCategory where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditBankIncomeCategory")


-- | An error object and associated &#x60;item_id&#x60; used to identify a specific Item and error when a batch operation operating on multiple Items has encountered an error in one of the Items.
data CreditBankIncomeCause = CreditBankIncomeCause
  { creditBankIncomeCauseErrorUnderscoretype :: Maybe CreditBankIncomeErrorType -- ^ 
  , creditBankIncomeCauseErrorUnderscorecode :: Maybe Text -- ^ We use standard HTTP response codes for success and failure notifications, and our errors are further classified by `error_type`. In general, 200 HTTP codes correspond to success, 40X codes are for developer- or user-related failures, and 50X codes are for Plaid-related issues. Error fields will be `null` if no error has occurred.
  , creditBankIncomeCauseErrorUnderscoremessage :: Maybe Text -- ^ A developer-friendly representation of the error code. This may change over time and is not safe for programmatic use.
  , creditBankIncomeCauseDisplayUnderscoremessage :: Maybe Text -- ^ A user-friendly representation of the error code. null if the error is not related to user action. This may change over time and is not safe for programmatic use.
  , creditBankIncomeCauseItemUnderscoreid :: Maybe Text -- ^ The `item_id` of the Item associated with this warning.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditBankIncomeCause where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditBankIncomeCause")
instance ToJSON CreditBankIncomeCause where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditBankIncomeCause")


-- | A broad categorization of the error. Safe for programmatic use.
data CreditBankIncomeErrorType = CreditBankIncomeErrorType
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditBankIncomeErrorType where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditBankIncomeErrorType")
instance ToJSON CreditBankIncomeErrorType where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditBankIncomeErrorType")


-- | CreditBankIncomeGetRequest defines the request schema for &#x60;/credit/bank_income/get&#x60;.
data CreditBankIncomeGetRequest = CreditBankIncomeGetRequest
  { creditBankIncomeGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , creditBankIncomeGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , creditBankIncomeGetRequestUserUnderscoretoken :: Maybe Text -- ^ The user token associated with the User data is being requested for.
  , creditBankIncomeGetRequestOptions :: Maybe CreditBankIncomeGetRequestOptions -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditBankIncomeGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditBankIncomeGetRequest")
instance ToJSON CreditBankIncomeGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditBankIncomeGetRequest")


-- | An optional object for &#x60;/credit/bank_income/get&#x60; request options.
data CreditBankIncomeGetRequestOptions = CreditBankIncomeGetRequestOptions
  { creditBankIncomeGetRequestOptionsCount :: Maybe Int -- ^ How many Bank Income Reports should be fetched. Multiple reports may be available if the report has been re-created or refreshed. If more than one report is available, the most recent reports will be returned first.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditBankIncomeGetRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditBankIncomeGetRequestOptions")
instance ToJSON CreditBankIncomeGetRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditBankIncomeGetRequestOptions")


-- | CreditBankIncomeGetResponse defines the response schema for &#x60;/credit/bank_income/get&#x60;
newtype CreditBankIncomeGetResponse = CreditBankIncomeGetResponse { unCreditBankIncomeGetResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The end user&#39;s monthly summary for the income source(s).
data CreditBankIncomeHistoricalSummary = CreditBankIncomeHistoricalSummary
  { creditBankIncomeHistoricalSummaryTotalUnderscoreamount :: Maybe Double -- ^ Total amount of earnings for the income source(s) of the user for the month in the summary.
  , creditBankIncomeHistoricalSummaryIsoUnderscorecurrencyUnderscorecode :: Maybe Text -- ^ The ISO 4217 currency code of the amount or balance.
  , creditBankIncomeHistoricalSummaryUnofficialUnderscorecurrencyUnderscorecode :: Maybe Text -- ^ The unofficial currency code associated with the amount or balance. Always `null` if `iso_currency_code` is non-null. Unofficial currency codes are used for currencies that do not have official ISO currency codes, such as cryptocurrencies and the currencies of certain countries.
  , creditBankIncomeHistoricalSummaryStartUnderscoredate :: Maybe Day -- ^ The start date of the period covered in this monthly summary. This date will be the first day of the month, unless the month being covered is a partial month because it is the first month included in the summary and the date range being requested does not begin with the first day of the month. The date will be returned in an ISO 8601 format (YYYY-MM-DD).
  , creditBankIncomeHistoricalSummaryEndUnderscoredate :: Maybe Day -- ^ The end date of the period included in this monthly summary. This date will be the last day of the month, unless the month being covered is a partial month because it is the last month included in the summary and the date range being requested does not end with the last day of the month. The date will be returned in an ISO 8601 format (YYYY-MM-DD).
  , creditBankIncomeHistoricalSummaryTransactions :: Maybe [CreditBankIncomeTransaction] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditBankIncomeHistoricalSummary where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditBankIncomeHistoricalSummary")
instance ToJSON CreditBankIncomeHistoricalSummary where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditBankIncomeHistoricalSummary")


-- | The details and metadata for an end user&#39;s Item.
data CreditBankIncomeItem = CreditBankIncomeItem
  { creditBankIncomeItemBankUnderscoreincomeUnderscoreaccounts :: Maybe [CreditBankIncomeAccount] -- ^ The Item's accounts that have Bank Income data.
  , creditBankIncomeItemBankUnderscoreincomeUnderscoresources :: Maybe [CreditBankIncomeSource] -- ^ The income sources for this Item. Each entry in the array is a single income source.
  , creditBankIncomeItemLastUnderscoreupdatedUnderscoretime :: Maybe UTCTime -- ^ The time when this Item's data was last retrieved from the financial institution.
  , creditBankIncomeItemInstitutionUnderscoreid :: Maybe Text -- ^ The unique identifier of the institution associated with the Item.
  , creditBankIncomeItemInstitutionUnderscorename :: Maybe Text -- ^ The name of the institution associated with the Item.
  , creditBankIncomeItemItemUnderscoreid :: Maybe Text -- ^ The unique identifier for the Item.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditBankIncomeItem where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditBankIncomeItem")
instance ToJSON CreditBankIncomeItem where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditBankIncomeItem")


-- | The income pay frequency.
data CreditBankIncomePayFrequency = CreditBankIncomePayFrequency
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditBankIncomePayFrequency where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditBankIncomePayFrequency")
instance ToJSON CreditBankIncomePayFrequency where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditBankIncomePayFrequency")


-- | CreditBankIncomeRefreshRequest defines the request schema for &#x60;/credit/bank_income/refresh&#x60;.
data CreditBankIncomeRefreshRequest = CreditBankIncomeRefreshRequest
  { creditBankIncomeRefreshRequestClientUnderscoreid :: Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , creditBankIncomeRefreshRequestSecret :: Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , creditBankIncomeRefreshRequestUserUnderscoretoken :: Text -- ^ The user token associated with the User data is being requested for.
  , creditBankIncomeRefreshRequestOptions :: Maybe CreditBankIncomeRefreshRequestOptions -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditBankIncomeRefreshRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditBankIncomeRefreshRequest")
instance ToJSON CreditBankIncomeRefreshRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditBankIncomeRefreshRequest")


-- | An optional object for &#x60;/credit/bank_income/refresh&#x60; request options.
data CreditBankIncomeRefreshRequestOptions = CreditBankIncomeRefreshRequestOptions
  { creditBankIncomeRefreshRequestOptionsDaysUnderscorerequested :: Maybe Int -- ^ How many days of data to include in the refresh. If not specified, this will default to the days requested in the most recently generated bank income report for the user.
  , creditBankIncomeRefreshRequestOptionsWebhook :: Maybe Text -- ^ The URL where Plaid will send the bank income webhook.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditBankIncomeRefreshRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditBankIncomeRefreshRequestOptions")
instance ToJSON CreditBankIncomeRefreshRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditBankIncomeRefreshRequestOptions")


-- | CreditBankIncomeRefreshResponse defines the response schema for &#x60;/credit/bank_income/refresh&#x60;.
newtype CreditBankIncomeRefreshResponse = CreditBankIncomeRefreshResponse { unCreditBankIncomeRefreshResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Detailed information for the income source.
data CreditBankIncomeSource = CreditBankIncomeSource
  { creditBankIncomeSourceIncomeUnderscoresourceUnderscoreid :: Maybe Text -- ^ A unique identifier for an income source.
  , creditBankIncomeSourceIncomeUnderscoredescription :: Maybe Text -- ^ The most common name or original description for the underlying income transactions.
  , creditBankIncomeSourceIncomeUnderscorecategory :: Maybe CreditBankIncomeCategory -- ^ 
  , creditBankIncomeSourceAccountUnderscoreid :: Maybe Text -- ^ Plaid's unique idenfier for the account.
  , creditBankIncomeSourceStartUnderscoredate :: Maybe Day -- ^ Minimum of all dates within the specific income sources in the user's bank account for days requested by the client. The date will be returned in an ISO 8601 format (YYYY-MM-DD).
  , creditBankIncomeSourceEndUnderscoredate :: Maybe Day -- ^ Maximum of all dates within the specific income sources in the user’s bank account for days requested by the client. The date will be returned in an ISO 8601 format (YYYY-MM-DD).
  , creditBankIncomeSourcePayUnderscorefrequency :: Maybe CreditBankIncomePayFrequency -- ^ 
  , creditBankIncomeSourceTotalUnderscoreamount :: Maybe Double -- ^ Total amount of earnings in the user’s bank account for the specific income source for days requested by the client.
  , creditBankIncomeSourceTransactionUnderscorecount :: Maybe Int -- ^ Number of transactions for the income source within the start and end date.
  , creditBankIncomeSourceHistoricalUnderscoresummary :: Maybe [CreditBankIncomeHistoricalSummary] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditBankIncomeSource where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditBankIncomeSource")
instance ToJSON CreditBankIncomeSource where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditBankIncomeSource")


-- | Summary for bank income across all income sources and items (max history of 730 days).
data CreditBankIncomeSummary = CreditBankIncomeSummary
  { creditBankIncomeSummaryTotalUnderscoreamount :: Maybe Double -- ^ Total amount of earnings across all the income sources in the end user's Items for the days requested by the client.
  , creditBankIncomeSummaryIsoUnderscorecurrencyUnderscorecode :: Maybe Text -- ^ The ISO 4217 currency code of the amount or balance.
  , creditBankIncomeSummaryUnofficialUnderscorecurrencyUnderscorecode :: Maybe Text -- ^ The unofficial currency code associated with the amount or balance. Always `null` if `iso_currency_code` is non-null. Unofficial currency codes are used for currencies that do not have official ISO currency codes, such as cryptocurrencies and the currencies of certain countries.
  , creditBankIncomeSummaryStartUnderscoredate :: Maybe Day -- ^ The earliest date within the days requested in which all income sources identified by Plaid appear in a user's account. The date will be returned in an ISO 8601 format (YYYY-MM-DD).
  , creditBankIncomeSummaryEndUnderscoredate :: Maybe Day -- ^ The latest date in which all income sources identified by Plaid appear in the user's account. The date will be returned in an ISO 8601 format (YYYY-MM-DD).
  , creditBankIncomeSummaryIncomeUnderscoresourcesUnderscorecount :: Maybe Int -- ^ Number of income sources per end user.
  , creditBankIncomeSummaryIncomeUnderscorecategoriesUnderscorecount :: Maybe Int -- ^ Number of income categories per end user.
  , creditBankIncomeSummaryIncomeUnderscoretransactionsUnderscorecount :: Maybe Int -- ^ Number of income transactions per end user.
  , creditBankIncomeSummaryHistoricalUnderscoresummary :: Maybe [CreditBankIncomeHistoricalSummary] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditBankIncomeSummary where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditBankIncomeSummary")
instance ToJSON CreditBankIncomeSummary where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditBankIncomeSummary")


-- | The transactions data for the end user&#39;s income source(s).
data CreditBankIncomeTransaction = CreditBankIncomeTransaction
  { creditBankIncomeTransactionAmount :: Maybe Double -- ^ The settled value of the transaction, denominated in the account's currency as stated in `iso_currency_code` or `unofficial_currency_code`. Positive values when money moves out of the account; negative values when money moves in. For example, credit card purchases are positive; credit card payment, direct deposits, and refunds are negative.
  , creditBankIncomeTransactionDate :: Maybe Day -- ^ For pending transactions, the date that the transaction occurred; for posted transactions, the date that the transaction posted. Both dates are returned in an ISO 8601 format (YYYY-MM-DD).
  , creditBankIncomeTransactionName :: Maybe Text -- ^ The merchant name or transaction description.
  , creditBankIncomeTransactionOriginalUnderscoredescription :: Maybe Text -- ^ The string returned by the financial institution to describe the transaction.
  , creditBankIncomeTransactionPending :: Maybe Bool -- ^ When true, identifies the transaction as pending or unsettled. Pending transaction details (name, type, amount, category ID) may change before they are settled.
  , creditBankIncomeTransactionTransactionUnderscoreid :: Maybe Text -- ^ The unique ID of the transaction. Like all Plaid identifiers, the `transaction_id` is case sensitive.
  , creditBankIncomeTransactionCheckUnderscorenumber :: Maybe Text -- ^ The check number of the transaction. This field is only populated for check transactions.
  , creditBankIncomeTransactionIsoUnderscorecurrencyUnderscorecode :: Maybe Text -- ^ The ISO 4217 currency code of the amount or balance.
  , creditBankIncomeTransactionUnofficialUnderscorecurrencyUnderscorecode :: Maybe Text -- ^ The unofficial currency code associated with the amount or balance. Always `null` if `iso_currency_code` is non-null. Unofficial currency codes are used for currencies that do not have official ISO currency codes, such as cryptocurrencies and the currencies of certain countries.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditBankIncomeTransaction where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditBankIncomeTransaction")
instance ToJSON CreditBankIncomeTransaction where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditBankIncomeTransaction")


-- | The warning associated with the data that was unavailable for the Bank Income Report.
data CreditBankIncomeWarning = CreditBankIncomeWarning
  { creditBankIncomeWarningWarningUnderscoretype :: Maybe CreditBankIncomeWarningType -- ^ 
  , creditBankIncomeWarningWarningUnderscorecode :: Maybe CreditBankIncomeWarningCode -- ^ 
  , creditBankIncomeWarningCause :: Maybe CreditBankIncomeCause -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditBankIncomeWarning where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditBankIncomeWarning")
instance ToJSON CreditBankIncomeWarning where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditBankIncomeWarning")


-- | The warning code identifies a specific kind of warning. &#x60;IDENTITY_UNAVAILABLE&#x60;: Unable to extract identity for the Item &#x60;TRANSACTIONS_UNAVAILABLE&#x60;: Unable to extract transactions for the Item &#x60;ITEM_UNAPPROVED&#x60;: User did not grant permission to share income data for the Item &#x60;REPORT_DELETED&#x60;: Report deleted due to customer or consumer request
data CreditBankIncomeWarningCode = CreditBankIncomeWarningCode
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditBankIncomeWarningCode where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditBankIncomeWarningCode")
instance ToJSON CreditBankIncomeWarningCode where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditBankIncomeWarningCode")


-- | The warning type which will always be &#x60;BANK_INCOME_WARNING&#x60;.
data CreditBankIncomeWarningType = CreditBankIncomeWarningType
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditBankIncomeWarningType where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditBankIncomeWarningType")
instance ToJSON CreditBankIncomeWarningType where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditBankIncomeWarningType")


-- | An object representing a credit card account.
newtype CreditCardLiability = CreditCardLiability { unCreditCardLiability :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Object representing metadata pertaining to the document.
newtype CreditDocumentMetadata = CreditDocumentMetadata { unCreditDocumentMetadata :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object containing employer data.
newtype CreditEmployerVerification = CreditEmployerVerification { unCreditEmployerVerification :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | CreditEmploymentGetRequest defines the request schema for &#x60;/credit/employment/get&#x60;.
data CreditEmploymentGetRequest = CreditEmploymentGetRequest
  { creditEmploymentGetRequestClientUnderscoreid :: Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , creditEmploymentGetRequestSecret :: Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , creditEmploymentGetRequestUserUnderscoretoken :: Text -- ^ The user token associated with the User data is being requested for.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditEmploymentGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditEmploymentGetRequest")
instance ToJSON CreditEmploymentGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditEmploymentGetRequest")


-- | CreditEmploymentGetResponse defines the response schema for &#x60;/credit/employment/get&#x60;.
newtype CreditEmploymentGetResponse = CreditEmploymentGetResponse { unCreditEmploymentGetResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The object containing employment items.
newtype CreditEmploymentItem = CreditEmploymentItem { unCreditEmploymentItem :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The object containing proof of employment data for an individual.
newtype CreditEmploymentVerification = CreditEmploymentVerification { unCreditEmploymentVerification :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | A filter to apply to &#x60;credit&#x60;-type accounts
newtype CreditFilter = CreditFilter { unCreditFilter :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object representing an end user&#39;s pay stub.
newtype CreditPayStub = CreditPayStub { unCreditPayStub :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Address on the pay stub.
newtype CreditPayStubAddress = CreditPayStubAddress { unCreditPayStubAddress :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object with the deduction information found on a pay stub.
newtype CreditPayStubDeductions = CreditPayStubDeductions { unCreditPayStubDeductions :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object representing both a breakdown of earnings on a pay stub and the total earnings.
newtype CreditPayStubEarnings = CreditPayStubEarnings { unCreditPayStubEarnings :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Data about the employee.
newtype CreditPayStubEmployee = CreditPayStubEmployee { unCreditPayStubEmployee :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Information about the employer on the pay stub.
newtype CreditPayStubEmployer = CreditPayStubEmployer { unCreditPayStubEmployer :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object representing information about the net pay amount on the pay stub.
newtype CreditPayStubNetPay = CreditPayStubNetPay { unCreditPayStubNetPay :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object containing details on the paystub&#39;s verification status. This object will only be populated if the [&#x60;income_verification.access_tokens&#x60;](/docs/api/tokens/#link-token-create-request-income-verification-access-tokens) parameter was provided during the &#x60;/link/token/create&#x60; call or if a problem was detected with the information supplied by the user; otherwise it will be &#x60;null&#x60;.
newtype CreditPayStubVerification = CreditPayStubVerification { unCreditPayStubVerification :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | CreditPayrollIncomeGetRequest defines the request schema for &#x60;/credit/payroll_income/get&#x60;.
data CreditPayrollIncomeGetRequest = CreditPayrollIncomeGetRequest
  { creditPayrollIncomeGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , creditPayrollIncomeGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , creditPayrollIncomeGetRequestUserUnderscoretoken :: Maybe Text -- ^ The user token associated with the User data is being requested for.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditPayrollIncomeGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditPayrollIncomeGetRequest")
instance ToJSON CreditPayrollIncomeGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditPayrollIncomeGetRequest")


-- | Defines the response body for &#x60;/credit/payroll_income/get&#x60;.
newtype CreditPayrollIncomeGetResponse = CreditPayrollIncomeGetResponse { unCreditPayrollIncomeGetResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Defines the request schema for &#x60;/credit/payroll_income/precheck&#x60;.
data CreditPayrollIncomePrecheckRequest = CreditPayrollIncomePrecheckRequest
  { creditPayrollIncomePrecheckRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , creditPayrollIncomePrecheckRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , creditPayrollIncomePrecheckRequestUserUnderscoretoken :: Maybe Text -- ^ The user token associated with the User data is being requested for.
  , creditPayrollIncomePrecheckRequestAccessUnderscoretokens :: Maybe [Text] -- ^ An array of access tokens corresponding to Items belonging to the user whose eligibility is being checked. Note that if the Items specified here are not already initialized with `transactions`, providing them in this field will cause these Items to be initialized with (and billed for) the Transactions product.
  , creditPayrollIncomePrecheckRequestEmployer :: Maybe IncomeVerificationPrecheckEmployer -- ^ 
  , creditPayrollIncomePrecheckRequestUsUnderscoremilitaryUnderscoreinfo :: Maybe IncomeVerificationPrecheckMilitaryInfo -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditPayrollIncomePrecheckRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditPayrollIncomePrecheckRequest")
instance ToJSON CreditPayrollIncomePrecheckRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditPayrollIncomePrecheckRequest")


-- | Defines the response schema for &#x60;/credit/payroll_income/precheck&#x60;.
newtype CreditPayrollIncomePrecheckResponse = CreditPayrollIncomePrecheckResponse { unCreditPayrollIncomePrecheckResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | CreditPayrollIncomeRefreshRequest defines the request schema for &#x60;/credit/payroll_income/refresh&#x60;
data CreditPayrollIncomeRefreshRequest = CreditPayrollIncomeRefreshRequest
  { creditPayrollIncomeRefreshRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , creditPayrollIncomeRefreshRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , creditPayrollIncomeRefreshRequestUserUnderscoretoken :: Maybe Text -- ^ The user token associated with the User data is being requested for.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditPayrollIncomeRefreshRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditPayrollIncomeRefreshRequest")
instance ToJSON CreditPayrollIncomeRefreshRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditPayrollIncomeRefreshRequest")


-- | CreditPayrollIncomeRefreshResponse defines the response schema for &#x60;/credit/payroll_income/refresh&#x60;
newtype CreditPayrollIncomeRefreshResponse = CreditPayrollIncomeRefreshResponse { unCreditPayrollIncomeRefreshResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | CreditPayrollIncomeRiskSignalsGetRequest defines the request schema for &#x60;/beta/credit/payroll_income/risk_signals/get&#x60;
newtype CreditPayrollIncomeRiskSignalsGetRequest = CreditPayrollIncomeRiskSignalsGetRequest { unCreditPayrollIncomeRiskSignalsGetRequest :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | CreditPayrollIncomeRiskSignalsGetRequest defines the response schema for &#x60;/beta/credit/payroll_income/risk_signals/get&#x60;
newtype CreditPayrollIncomeRiskSignalsGetResponse = CreditPayrollIncomeRiskSignalsGetResponse { unCreditPayrollIncomeRiskSignalsGetResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The object containing a set of ids related to an employee.
newtype CreditPlatformIds = CreditPlatformIds { unCreditPlatformIds :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | CreditRelayCreateRequest defines the request schema for &#x60;/credit/relay/create&#x60;
data CreditRelayCreateRequest = CreditRelayCreateRequest
  { creditRelayCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , creditRelayCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , creditRelayCreateRequestReportUnderscoretokens :: [ReportToken] -- ^ List of report tokens, with at most one token of each report type. Currently only Asset Report token is supported.
  , creditRelayCreateRequestSecondaryUnderscoreclientUnderscoreid :: Text -- ^ The `secondary_client_id` is the client id of the third party with whom you would like to share the Relay Token.
  , creditRelayCreateRequestWebhook :: Maybe Text -- ^ URL to which Plaid will send webhooks when the Secondary Client successfully retrieves an Asset Report by calling `/credit/relay/get`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreditRelayCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "creditRelayCreateRequest")
instance ToJSON CreditRelayCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "creditRelayCreateRequest")


-- | CreditRelayCreateResponse defines the response schema for &#x60;/credit/relay/create&#x60;
newtype CreditRelayCreateResponse = CreditRelayCreateResponse { unCreditRelayCreateResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | W2 is an object that represents income data taken from a W2 tax document.
newtype CreditW2 = CreditW2 { unCreditW2 :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The object contains a risk score and a risk tier that evaluate the transaction return risk of an unauthorized debit. Common return codes in this category include: \&quot;R05\&quot;, \&quot;R07\&quot;, \&quot;R10\&quot;, \&quot;R11\&quot;, \&quot;R29\&quot;. These returns typically have a return time frame of up to 60 calendar days. During this period, the customer of financial institutions can dispute a transaction as unauthorized.
data CustomerInitiatedReturnRisk = CustomerInitiatedReturnRisk
  { customerInitiatedReturnRiskScore :: Int -- ^ A score from 0-99 that indicates the transaction return risk: a higher risk score suggests a higher return likelihood.
  , customerInitiatedReturnRiskRiskUnderscoretier :: Int -- ^ A tier corresponding to the projected likelihood that the transaction, if initiated, will be subject to a return.  In the `customer_initiated_return_risk` object, there are five risk tiers corresponding to the scores:   1: Predicted customer-initiated return incidence rate between 0.00% - 0.02%   2: Predicted customer-initiated return incidence rate between 0.02% - 0.05%   3: Predicted customer-initiated return incidence rate between 0.05% - 0.1%   4: Predicted customer-initiated return incidence rate between 0.1% - 0.5%   5: Predicted customer-initiated return incidence rate greater than 0.5% 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CustomerInitiatedReturnRisk where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "customerInitiatedReturnRisk")
instance ToJSON CustomerInitiatedReturnRisk where
  toJSON = genericToJSON (removeFieldLabelPrefix False "customerInitiatedReturnRisk")


-- | Account information associated with a team member with access to the Plaid dashboard.
data DashboardUser = DashboardUser
  { dashboardUserId :: Text -- ^ ID of the associated user.
  , dashboardUserCreatedUnderscoreat :: UTCTime -- ^ An ISO8601 formatted timestamp.
  , dashboardUserEmailUnderscoreaddress :: Text -- ^ A valid email address.
  , dashboardUserStatus :: DashboardUserStatus -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON DashboardUser where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "dashboardUser")
instance ToJSON DashboardUser where
  toJSON = genericToJSON (removeFieldLabelPrefix False "dashboardUser")


-- | Account information associated with a team member with access to the Plaid dashboard.
newtype DashboardUserResponse = DashboardUserResponse { unDashboardUserResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The current status of the user.
data DashboardUserStatus = DashboardUserStatus
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON DashboardUserStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "dashboardUserStatus")
instance ToJSON DashboardUserStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "dashboardUserStatus")


-- | A date range with a start and end date
data DateRange = DateRange
  { dateRangeBeginning :: Day -- ^ A date in the format YYYY-MM-DD (RFC 3339 Section 5.6).
  , dateRangeEnding :: Day -- ^ A date in the format YYYY-MM-DD (RFC 3339 Section 5.6).
  } deriving (Show, Eq, Generic, Data)

instance FromJSON DateRange where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "dateRange")
instance ToJSON DateRange where
  toJSON = genericToJSON (removeFieldLabelPrefix False "dateRange")


-- | An object with the deduction information found on a paystub.
newtype Deductions = Deductions { unDeductions :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object representing the deduction line items for the pay period
newtype DeductionsBreakdown = DeductionsBreakdown { unDeductionsBreakdown :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object representing the total deductions for the pay period
newtype DeductionsTotal = DeductionsTotal { unDeductionsTotal :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Fired when new transaction data is available for an Item. Plaid will typically check for new transaction data several times a day. 
newtype DefaultUpdateWebhook = DefaultUpdateWebhook { unDefaultUpdateWebhook :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The user&#39;s address.
newtype DepositSwitchAddressData = DepositSwitchAddressData { unDepositSwitchAddressData :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | DepositSwitchAltCreateRequest defines the request schema for &#x60;/deposit_switch/alt/create&#x60;
data DepositSwitchAltCreateRequest = DepositSwitchAltCreateRequest
  { depositSwitchAltCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , depositSwitchAltCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , depositSwitchAltCreateRequestTargetUnderscoreaccount :: DepositSwitchTargetAccount -- ^ 
  , depositSwitchAltCreateRequestTargetUnderscoreuser :: DepositSwitchTargetUser -- ^ 
  , depositSwitchAltCreateRequestOptions :: Maybe DepositSwitchCreateRequestOptions -- ^ 
  , depositSwitchAltCreateRequestCountryUnderscorecode :: Maybe Text -- ^ ISO-3166-1 alpha-2 country code standard.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON DepositSwitchAltCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "depositSwitchAltCreateRequest")
instance ToJSON DepositSwitchAltCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "depositSwitchAltCreateRequest")


-- | DepositSwitchAltCreateResponse defines the response schema for &#x60;/deposit_switch/alt/create&#x60;
newtype DepositSwitchAltCreateResponse = DepositSwitchAltCreateResponse { unDepositSwitchAltCreateResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | DepositSwitchCreateRequest defines the request schema for &#x60;/deposit_switch/create&#x60;
data DepositSwitchCreateRequest = DepositSwitchCreateRequest
  { depositSwitchCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , depositSwitchCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , depositSwitchCreateRequestTargetUnderscoreaccessUnderscoretoken :: Text -- ^ Access token for the target Item, typically provided in the Import Item response. 
  , depositSwitchCreateRequestTargetUnderscoreaccountUnderscoreid :: Text -- ^ Plaid Account ID that specifies the target bank account. This account will become the recipient for a user's direct deposit.
  , depositSwitchCreateRequestCountryUnderscorecode :: Maybe Text -- ^ ISO-3166-1 alpha-2 country code standard.
  , depositSwitchCreateRequestOptions :: Maybe DepositSwitchCreateRequestOptions -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON DepositSwitchCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "depositSwitchCreateRequest")
instance ToJSON DepositSwitchCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "depositSwitchCreateRequest")


-- | Options to configure the &#x60;/deposit_switch/create&#x60; request. If provided, cannot be &#x60;null&#x60;.
data DepositSwitchCreateRequestOptions = DepositSwitchCreateRequestOptions
  { depositSwitchCreateRequestOptionsWebhook :: Maybe Text -- ^ The URL registered to receive webhooks when the status of a deposit switch request has changed. 
  , depositSwitchCreateRequestOptionsTransactionUnderscoreitemUnderscoreaccessUnderscoretokens :: Maybe [Text] -- ^ An array of access tokens corresponding to transaction items to use when attempting to match the user to their Payroll Provider. These tokens must be created by the same client id as the one creating the switch, and have access to the transactions product.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON DepositSwitchCreateRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "depositSwitchCreateRequestOptions")
instance ToJSON DepositSwitchCreateRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "depositSwitchCreateRequestOptions")


-- | DepositSwitchCreateResponse defines the response schema for &#x60;/deposit_switch/create&#x60;
newtype DepositSwitchCreateResponse = DepositSwitchCreateResponse { unDepositSwitchCreateResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | DepositSwitchGetRequest defines the request schema for &#x60;/deposit_switch/get&#x60;
data DepositSwitchGetRequest = DepositSwitchGetRequest
  { depositSwitchGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , depositSwitchGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , depositSwitchGetRequestDepositUnderscoreswitchUnderscoreid :: Text -- ^ The ID of the deposit switch
  } deriving (Show, Eq, Generic, Data)

instance FromJSON DepositSwitchGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "depositSwitchGetRequest")
instance ToJSON DepositSwitchGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "depositSwitchGetRequest")


-- | DepositSwitchGetResponse defines the response schema for &#x60;/deposit_switch/get&#x60;
newtype DepositSwitchGetResponse = DepositSwitchGetResponse { unDepositSwitchGetResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Fired when the status of a deposit switch request has changed.
data DepositSwitchStateUpdateWebhook = DepositSwitchStateUpdateWebhook
  { depositSwitchStateUpdateWebhookWebhookUnderscoretype :: Maybe Text -- ^ `\"DEPOSIT_SWITCH\"`
  , depositSwitchStateUpdateWebhookWebhookUnderscorecode :: Maybe Text -- ^ `\"SWITCH_STATE_UPDATE\"`
  , depositSwitchStateUpdateWebhookState :: Maybe Text -- ^  The state, or status, of the deposit switch.  `initialized`: The deposit switch has been initialized with the user entering the information required to submit the deposit switch request.  `processing`: The deposit switch request has been submitted and is being processed.  `completed`: The user's employer has fulfilled and completed the deposit switch request.  `error`: There was an error processing the deposit switch request.  For more information, see the [Deposit Switch API reference](/docs/deposit-switch/reference#deposit_switchget).
  , depositSwitchStateUpdateWebhookDepositUnderscoreswitchUnderscoreid :: Maybe Text -- ^ The ID of the deposit switch.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON DepositSwitchStateUpdateWebhook where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "depositSwitchStateUpdateWebhook")
instance ToJSON DepositSwitchStateUpdateWebhook where
  toJSON = genericToJSON (removeFieldLabelPrefix False "depositSwitchStateUpdateWebhook")


-- | The deposit switch destination account
newtype DepositSwitchTargetAccount = DepositSwitchTargetAccount { unDepositSwitchTargetAccount :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The deposit switch target user
newtype DepositSwitchTargetUser = DepositSwitchTargetUser { unDepositSwitchTargetUser :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | DepositSwitchTokenCreateRequest defines the request schema for &#x60;/deposit_switch/token/create&#x60;
data DepositSwitchTokenCreateRequest = DepositSwitchTokenCreateRequest
  { depositSwitchTokenCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , depositSwitchTokenCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , depositSwitchTokenCreateRequestDepositUnderscoreswitchUnderscoreid :: Text -- ^ The ID of the deposit switch
  } deriving (Show, Eq, Generic, Data)

instance FromJSON DepositSwitchTokenCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "depositSwitchTokenCreateRequest")
instance ToJSON DepositSwitchTokenCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "depositSwitchTokenCreateRequest")


-- | DepositSwitchTokenCreateResponse defines the response schema for &#x60;/deposit_switch/token/create&#x60;
newtype DepositSwitchTokenCreateResponse = DepositSwitchTokenCreateResponse { unDepositSwitchTokenCreateResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Valid account subtypes for depository accounts. For a list containing descriptions of each subtype, see [Account schemas](https://plaid.com/docs/api/accounts/#StandaloneAccountType-depository).
data DepositoryAccountSubtype = DepositoryAccountSubtype
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON DepositoryAccountSubtype where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "depositoryAccountSubtype")
instance ToJSON DepositoryAccountSubtype where
  toJSON = genericToJSON (removeFieldLabelPrefix False "depositoryAccountSubtype")


-- | A filter to apply to &#x60;depository&#x60;-type accounts
newtype DepositoryFilter = DepositoryFilter { unDepositoryFilter :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Information about the accounts that the payment was distributed to.
newtype DistributionBreakdown = DistributionBreakdown { unDistributionBreakdown :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The type of document.  &#x60;DOCUMENT_TYPE_PAYSTUB&#x60;: A paystub.  &#x60;DOCUMENT_TYPE_BANK_STATEMENT&#x60;: A bank statement.  &#x60;DOCUMENT_TYPE_US_TAX_W2&#x60;: A W-2 wage and tax statement provided by a US employer reflecting wages earned by the employee.  &#x60;DOCUMENT_TYPE_US_MILITARY_ERAS&#x60;: An electronic Retirement Account Statement (eRAS) issued by the US military.  &#x60;DOCUMENT_TYPE_US_MILITARY_LES&#x60;: A Leave and Earnings Statement (LES) issued by the US military.  &#x60;DOCUMENT_TYPE_US_MILITARY_CLES&#x60;: A Civilian Leave and Earnings Statment (CLES) issued by the US military.  &#x60;DOCUMENT_TYPE_GIG&#x60;: Used to indicate that the income is related to gig work. Does not necessarily correspond to a specific document type.  &#x60;DOCUMENT_TYPE_NONE&#x60;: Used to indicate that there is no underlying document for the data.  &#x60;UNKNOWN&#x60;: Document type could not be determined.
data DocType = DocType
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON DocType where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "docType")
instance ToJSON DocType where
  toJSON = genericToJSON (removeFieldLabelPrefix False "docType")


-- | High level descriptions of how the associated document was processed. If a document fails verification, the details in the &#x60;analysis&#x60; object should help clarify why the document was rejected.
data DocumentAnalysis = DocumentAnalysis
  { documentAnalysisAuthenticity :: DocumentAuthenticityMatchCode -- ^ 
  , documentAnalysisImageUnderscorequality :: ImageQuality -- ^ 
  , documentAnalysisExtractedUnderscoredata :: PhysicalDocumentExtractedDataAnalysis -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON DocumentAnalysis where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "documentAnalysis")
instance ToJSON DocumentAnalysis where
  toJSON = genericToJSON (removeFieldLabelPrefix False "documentAnalysis")


-- | High level summary of whether the document in the provided image matches the formatting rules and security checks for the associated jurisdiction.  For example, most identity documents have formatting rules like the following:   The image of the person&#39;s face must have a certain contrast in order to highlight skin tone   The subject in the document&#39;s image must remove eye glasses and pose in a certain way   The informational fields (name, date of birth, ID number, etc.) must be colored and aligned according to specific rules   Security features like watermarks and background patterns must be present  So a &#x60;match&#x60; status for this field indicates that the document in the provided image seems to conform to the various formatting and security rules associated with the detected document.
data DocumentAuthenticityMatchCode = DocumentAuthenticityMatchCode
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON DocumentAuthenticityMatchCode where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "documentAuthenticityMatchCode")
instance ToJSON DocumentAuthenticityMatchCode where
  toJSON = genericToJSON (removeFieldLabelPrefix False "documentAuthenticityMatchCode")


-- | A match summary describing the cross comparison between the subject&#39;s date of birth, extracted from the document image, and the date of birth they separately provided to the identity verification attempt.
data DocumentDateOfBirthMatchCode = DocumentDateOfBirthMatchCode
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON DocumentDateOfBirthMatchCode where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "documentDateOfBirthMatchCode")
instance ToJSON DocumentDateOfBirthMatchCode where
  toJSON = genericToJSON (removeFieldLabelPrefix False "documentDateOfBirthMatchCode")


-- | An object representing metadata from the end user&#39;s uploaded document.
newtype DocumentMetadata = DocumentMetadata { unDocumentMetadata :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | A match summary describing the cross comparison between the subject&#39;s name, extracted from the document image, and the name they separately provided to identity verification attempt.
data DocumentNameMatchCode = DocumentNameMatchCode
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON DocumentNameMatchCode where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "documentNameMatchCode")
instance ToJSON DocumentNameMatchCode where
  toJSON = genericToJSON (removeFieldLabelPrefix False "documentNameMatchCode")


-- | Details about a certain reason as to why a document could potentially be fraudulent.
newtype DocumentRiskSignal = DocumentRiskSignal { unDocumentRiskSignal :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object which contains additional metadata about the instutution used to compute the verification attribute
newtype DocumentRiskSignalInstitutionMetadata = DocumentRiskSignalInstitutionMetadata { unDocumentRiskSignalInstitutionMetadata :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Object containing fraud risk data for a set of income documents
newtype DocumentRiskSignalsObject = DocumentRiskSignalsObject { unDocumentRiskSignalsObject :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An outcome status for this specific document submission. Distinct from the overall &#x60;documentary_verification.status&#x60; that summarizes the verification outcome from one or more documents.
data DocumentStatus = DocumentStatus
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON DocumentStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "documentStatus")
instance ToJSON DocumentStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "documentStatus")


-- | data, images, analysis, and results from the &#x60;documentary_verification&#x60; step.
data DocumentaryVerification = DocumentaryVerification
  { documentaryVerificationStatus :: Text -- ^ The outcome status for the associated Identity Verification attempt's `documentary_verification` step. This field will always have the same value as `steps.documentary_verification`.
  , documentaryVerificationDocuments :: [DocumentaryVerificationDocument] -- ^ An array of documents submitted to the `documentary_verification` step. Each entry represents one user submission, where each submission will contain both a front and back image, or just a front image, depending on the document type.  Note: Plaid will automatically let a user submit a new set of document images up to three times if we detect that a previous attempt might have failed due to user error. For example, if the first set of document images are blurry or obscured by glare, the user will be asked to capture their documents again, resulting in at least two separate entries within `documents`. If the overall `documentary_verification` is `failed`, the user has exhausted their retry attempts.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON DocumentaryVerification where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "documentaryVerification")
instance ToJSON DocumentaryVerification where
  toJSON = genericToJSON (removeFieldLabelPrefix False "documentaryVerification")


-- | Images, extracted data, and analysis from a user&#39;s identity document
data DocumentaryVerificationDocument = DocumentaryVerificationDocument
  { documentaryVerificationDocumentStatus :: DocumentStatus -- ^ 
  , documentaryVerificationDocumentAttempt :: Double -- ^ The `attempt` field begins with 1 and increments with each subsequent document upload.
  , documentaryVerificationDocumentImages :: PhysicalDocumentImages -- ^ 
  , documentaryVerificationDocumentExtractedUnderscoredata :: PhysicalDocumentExtractedData -- ^ 
  , documentaryVerificationDocumentAnalysis :: DocumentAnalysis -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON DocumentaryVerificationDocument where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "documentaryVerificationDocument")
instance ToJSON DocumentaryVerificationDocument where
  toJSON = genericToJSON (removeFieldLabelPrefix False "documentaryVerificationDocument")


-- | An object representing both a breakdown of earnings on a paystub and the total earnings.
newtype Earnings = Earnings { unEarnings :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object representing the earnings line items for the pay period.
newtype EarningsBreakdown = EarningsBreakdown { unEarningsBreakdown :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Commonly used term to describe the earning line item.
data EarningsBreakdownCanonicalDescription = EarningsBreakdownCanonicalDescription
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON EarningsBreakdownCanonicalDescription where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "earningsBreakdownCanonicalDescription")
instance ToJSON EarningsBreakdownCanonicalDescription where
  toJSON = genericToJSON (removeFieldLabelPrefix False "earningsBreakdownCanonicalDescription")


-- | An object representing both the current pay period and year to date amount for an earning category.
newtype EarningsTotal = EarningsTotal { unEarningsTotal :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object representing an email address
newtype Email = Email { unEmail :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Data about the employee.
newtype Employee = Employee { unEmployee :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The name of the employee, as reported on the paystub.
data EmployeeIncomeSummaryFieldString = EmployeeIncomeSummaryFieldString
  { employeeIncomeSummaryFieldStringValue :: Text -- ^ The value of the field.
  , employeeIncomeSummaryFieldStringVerificationUnderscorestatus :: VerificationStatus -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON EmployeeIncomeSummaryFieldString where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "employeeIncomeSummaryFieldString")
instance ToJSON EmployeeIncomeSummaryFieldString where
  toJSON = genericToJSON (removeFieldLabelPrefix False "employeeIncomeSummaryFieldString")


-- | Data about the employer.
newtype Employer = Employer { unEmployer :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The name of the employer, as reported on the paystub.
data EmployerIncomeSummaryFieldString = EmployerIncomeSummaryFieldString
  { employerIncomeSummaryFieldStringValue :: Text -- ^ The value of the field.
  , employerIncomeSummaryFieldStringVerificationUnderscorestatus :: VerificationStatus -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON EmployerIncomeSummaryFieldString where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "employerIncomeSummaryFieldString")
instance ToJSON EmployerIncomeSummaryFieldString where
  toJSON = genericToJSON (removeFieldLabelPrefix False "employerIncomeSummaryFieldString")


-- | An object containing employer data.
newtype EmployerVerification = EmployerVerification { unEmployerVerification :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | EmployersSearchRequest defines the request schema for &#x60;/employers/search&#x60;.
data EmployersSearchRequest = EmployersSearchRequest
  { employersSearchRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , employersSearchRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , employersSearchRequestQuery :: Text -- ^ The employer name to be searched for.
  , employersSearchRequestProducts :: [Text] -- ^ The Plaid products the returned employers should support. Currently, this field must be set to `\"deposit_switch\"`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON EmployersSearchRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "employersSearchRequest")
instance ToJSON EmployersSearchRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "employersSearchRequest")


-- | EmployersSearchResponse defines the response schema for &#x60;/employers/search&#x60;.
newtype EmployersSearchResponse = EmployersSearchResponse { unEmployersSearchResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object representing employment details found on a paystub.
newtype EmploymentDetails = EmploymentDetails { unEmploymentDetails :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object containing proof of employment data for an individual
newtype EmploymentVerification = EmploymentVerification { unEmploymentVerification :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | EmploymentVerificationGetRequest defines the request schema for &#x60;/employment/verification/get&#x60;.
data EmploymentVerificationGetRequest = EmploymentVerificationGetRequest
  { employmentVerificationGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , employmentVerificationGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , employmentVerificationGetRequestAccessUnderscoretoken :: Text -- ^ The access token associated with the Item data is being requested for.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON EmploymentVerificationGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "employmentVerificationGetRequest")
instance ToJSON EmploymentVerificationGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "employmentVerificationGetRequest")


-- | EmploymentVerificationGetResponse defines the response schema for &#x60;/employment/verification/get&#x60;.
newtype EmploymentVerificationGetResponse = EmploymentVerificationGetResponse { unEmploymentVerificationGetResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Current employment status.
data EmploymentVerificationStatus = EmploymentVerificationStatus
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON EmploymentVerificationStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "employmentVerificationStatus")
instance ToJSON EmploymentVerificationStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "employmentVerificationStatus")


-- | A grouping of the Plaid produced transaction enhancement fields.
newtype Enhancements = Enhancements { unEnhancements :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An official document, usually issued by a governing body or institution, with an associated identifier.
data EntityDocument = EntityDocument
  { entityDocumentType :: EntityDocumentType -- ^ 
  , entityDocumentNumber :: Text -- ^ The numeric or alphanumeric identifier associated with this document.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON EntityDocument where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "entityDocument")
instance ToJSON EntityDocument where
  toJSON = genericToJSON (removeFieldLabelPrefix False "entityDocument")


-- | The kind of official document represented by this object.  &#x60;bik&#x60; - Russian bank code  &#x60;business_number&#x60; - A number that uniquely identifies the business within a category of businesses  &#x60;imo&#x60; - Number assigned to the entity by the International Maritime Organization  &#x60;other&#x60; - Any document not covered by other categories  &#x60;swift&#x60; - Number identifying a bank and branch.  &#x60;tax_id&#x60; - Identification issued for the purpose of collecting taxes
data EntityDocumentType = EntityDocumentType
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON EntityDocumentType where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "entityDocumentType")
instance ToJSON EntityDocumentType where
  toJSON = genericToJSON (removeFieldLabelPrefix False "entityDocumentType")


-- | Analysis information describing why a screening hit matched the provided entity information
data EntityScreeningHitAnalysis = EntityScreeningHitAnalysis
  { entityScreeningHitAnalysisDocuments :: Maybe MatchSummaryCode -- ^ 
  , entityScreeningHitAnalysisEmailUnderscoreaddresses :: Maybe MatchSummaryCode -- ^ 
  , entityScreeningHitAnalysisLocations :: Maybe MatchSummaryCode -- ^ 
  , entityScreeningHitAnalysisNames :: Maybe MatchSummaryCode -- ^ 
  , entityScreeningHitAnalysisPhoneUnderscorenumbers :: Maybe MatchSummaryCode -- ^ 
  , entityScreeningHitAnalysisUrls :: Maybe MatchSummaryCode -- ^ 
  , entityScreeningHitAnalysisSearchUnderscoretermsUnderscoreversion :: Double -- ^ The version of the entity screening's `search_terms` that were compared when the entity screening hit was added. entity screening hits are immutable once they have been reviewed. If changes are detected due to updates to the entity screening's `search_terms`, the associated entity program, or the list's source data prior to review, the entity screening hit will be updated to reflect those changes.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON EntityScreeningHitAnalysis where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "entityScreeningHitAnalysis")
instance ToJSON EntityScreeningHitAnalysis where
  toJSON = genericToJSON (removeFieldLabelPrefix False "entityScreeningHitAnalysis")


-- | Information associated with the entity watchlist hit
data EntityScreeningHitData = EntityScreeningHitData
  { entityScreeningHitDataDocuments :: Maybe [EntityScreeningHitDocumentsItems] -- ^ Documents associated with the watchlist hit
  , entityScreeningHitDataEmailUnderscoreaddresses :: Maybe [EntityScreeningHitEmailsItems] -- ^ Email addresses associated with the watchlist hit
  , entityScreeningHitDataLocations :: Maybe [GenericScreeningHitLocationItems] -- ^ Locations associated with the watchlist hit
  , entityScreeningHitDataNames :: Maybe [EntityScreeningHitNamesItems] -- ^ Names associated with the watchlist hit
  , entityScreeningHitDataPhoneUnderscorenumbers :: Maybe [EntityScreeningHitsPhoneNumberItems] -- ^ Phone numbers associated with the watchlist hit
  , entityScreeningHitDataUrls :: Maybe [EntityScreeningHitUrlsItems] -- ^ URLs associated with the watchlist hit
  } deriving (Show, Eq, Generic, Data)

instance FromJSON EntityScreeningHitData where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "entityScreeningHitData")
instance ToJSON EntityScreeningHitData where
  toJSON = genericToJSON (removeFieldLabelPrefix False "entityScreeningHitData")


-- | Analyzed documents for the associated hit
data EntityScreeningHitDocumentsItems = EntityScreeningHitDocumentsItems
  { entityScreeningHitDocumentsItemsAnalysis :: Maybe MatchSummary -- ^ 
  , entityScreeningHitDocumentsItemsData :: Maybe EntityDocument -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON EntityScreeningHitDocumentsItems where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "entityScreeningHitDocumentsItems")
instance ToJSON EntityScreeningHitDocumentsItems where
  toJSON = genericToJSON (removeFieldLabelPrefix False "entityScreeningHitDocumentsItems")


-- | Email address information for the associated entity watchlist hit
data EntityScreeningHitEmails = EntityScreeningHitEmails
  { entityScreeningHitEmailsEmailUnderscoreaddress :: Text -- ^ A valid email address.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON EntityScreeningHitEmails where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "entityScreeningHitEmails")
instance ToJSON EntityScreeningHitEmails where
  toJSON = genericToJSON (removeFieldLabelPrefix False "entityScreeningHitEmails")


-- | Analyzed emails for the associated hit
data EntityScreeningHitEmailsItems = EntityScreeningHitEmailsItems
  { entityScreeningHitEmailsItemsAnalysis :: Maybe MatchSummary -- ^ 
  , entityScreeningHitEmailsItemsData :: Maybe EntityScreeningHitEmails -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON EntityScreeningHitEmailsItems where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "entityScreeningHitEmailsItems")
instance ToJSON EntityScreeningHitEmailsItems where
  toJSON = genericToJSON (removeFieldLabelPrefix False "entityScreeningHitEmailsItems")


-- | Name information for the associated entity watchlist hit
data EntityScreeningHitNames = EntityScreeningHitNames
  { entityScreeningHitNamesFull :: Text -- ^ The full name of the entity.
  , entityScreeningHitNamesIsUnderscoreprimary :: Bool -- ^ Primary names are those most commonly used to refer to this entity. Only one name will ever be marked as primary.
  , entityScreeningHitNamesWeakUnderscorealiasUnderscoredetermination :: WeakAliasDetermination -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON EntityScreeningHitNames where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "entityScreeningHitNames")
instance ToJSON EntityScreeningHitNames where
  toJSON = genericToJSON (removeFieldLabelPrefix False "entityScreeningHitNames")


-- | Analyzed names for the associated hit
data EntityScreeningHitNamesItems = EntityScreeningHitNamesItems
  { entityScreeningHitNamesItemsAnalysis :: Maybe MatchSummary -- ^ 
  , entityScreeningHitNamesItemsData :: Maybe EntityScreeningHitNames -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON EntityScreeningHitNamesItems where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "entityScreeningHitNamesItems")
instance ToJSON EntityScreeningHitNamesItems where
  toJSON = genericToJSON (removeFieldLabelPrefix False "entityScreeningHitNamesItems")


-- | Phone number information associated with the entity screening hit
data EntityScreeningHitPhoneNumbers = EntityScreeningHitPhoneNumbers
  { entityScreeningHitPhoneNumbersType :: PhoneType -- ^ 
  , entityScreeningHitPhoneNumbersPhoneUnderscorenumber :: Text -- ^ A phone number in E.164 format.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON EntityScreeningHitPhoneNumbers where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "entityScreeningHitPhoneNumbers")
instance ToJSON EntityScreeningHitPhoneNumbers where
  toJSON = genericToJSON (removeFieldLabelPrefix False "entityScreeningHitPhoneNumbers")


-- | URLs associated with the entity screening hit
data EntityScreeningHitUrls = EntityScreeningHitUrls
  { entityScreeningHitUrlsUrl :: Text -- ^ An 'http' or 'https' URL (must begin with either of those).
  } deriving (Show, Eq, Generic, Data)

instance FromJSON EntityScreeningHitUrls where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "entityScreeningHitUrls")
instance ToJSON EntityScreeningHitUrls where
  toJSON = genericToJSON (removeFieldLabelPrefix False "entityScreeningHitUrls")


-- | Analyzed URLs for the associated hit
data EntityScreeningHitUrlsItems = EntityScreeningHitUrlsItems
  { entityScreeningHitUrlsItemsAnalysis :: Maybe MatchSummary -- ^ 
  , entityScreeningHitUrlsItemsData :: Maybe EntityScreeningHitUrls -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON EntityScreeningHitUrlsItems where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "entityScreeningHitUrlsItems")
instance ToJSON EntityScreeningHitUrlsItems where
  toJSON = genericToJSON (removeFieldLabelPrefix False "entityScreeningHitUrlsItems")


-- | Analyzed phone numbers for the associated hit
data EntityScreeningHitsPhoneNumberItems = EntityScreeningHitsPhoneNumberItems
  { entityScreeningHitsPhoneNumberItemsAnalysis :: Maybe MatchSummary -- ^ 
  , entityScreeningHitsPhoneNumberItemsData :: Maybe EntityScreeningHitPhoneNumbers -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON EntityScreeningHitsPhoneNumberItems where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "entityScreeningHitsPhoneNumberItems")
instance ToJSON EntityScreeningHitsPhoneNumberItems where
  toJSON = genericToJSON (removeFieldLabelPrefix False "entityScreeningHitsPhoneNumberItems")


-- | Fired when an entity screening status has changed, which can occur manually via the dashboard or during ongoing monitoring.
newtype EntityScreeningStatusUpdatedWebhook = EntityScreeningStatusUpdatedWebhook { unEntityScreeningStatusUpdatedWebhook :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Shorthand identifier for a specific screening list for entities.
data EntityWatchlistCode = EntityWatchlistCode
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON EntityWatchlistCode where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "entityWatchlistCode")
instance ToJSON EntityWatchlistCode where
  toJSON = genericToJSON (removeFieldLabelPrefix False "entityWatchlistCode")


-- | A program that configures the active lists, search parameters, and other behavior for initial and ongoing screening of entities.
data EntityWatchlistProgram = EntityWatchlistProgram
  { entityWatchlistProgramId :: Text -- ^ ID of the associated entity program.
  , entityWatchlistProgramCreatedUnderscoreat :: UTCTime -- ^ An ISO8601 formatted timestamp.
  , entityWatchlistProgramIsUnderscorerescanningUnderscoreenabled :: Bool -- ^ Indicator specifying whether the program is enabled and will perform daily rescans.
  , entityWatchlistProgramListsUnderscoreenabled :: [EntityWatchlistCode] -- ^ Watchlists enabled for the associated program
  , entityWatchlistProgramName :: Text -- ^ A name for the entity program to define its purpose. For example, \"High Risk Organizations\" or \"Applicants\".
  , entityWatchlistProgramNameUnderscoresensitivity :: ProgramNameSensitivity -- ^ 
  , entityWatchlistProgramAuditUnderscoretrail :: WatchlistScreeningAuditTrail -- ^ 
  , entityWatchlistProgramIsUnderscorearchived :: Bool -- ^ Archived programs are read-only and cannot screen new customers nor participate in ongoing monitoring.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON EntityWatchlistProgram where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "entityWatchlistProgram")
instance ToJSON EntityWatchlistProgram where
  toJSON = genericToJSON (removeFieldLabelPrefix False "entityWatchlistProgram")


-- | A program that configures the active lists, search parameters, and other behavior for initial and ongoing screening of entities.
newtype EntityWatchlistProgramResponse = EntityWatchlistProgramResponse { unEntityWatchlistProgramResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The entity screening object allows you to represent an entity in your system, update its profile, and search for it on various watchlists. Note: Rejected entity screenings will not receive new hits, regardless of entity program configuration.
data EntityWatchlistScreening = EntityWatchlistScreening
  { entityWatchlistScreeningId :: Text -- ^ ID of the associated entity screening.
  , entityWatchlistScreeningSearchUnderscoreterms :: EntityWatchlistScreeningSearchTerms -- ^ 
  , entityWatchlistScreeningAssignee :: Text -- ^ 
  , entityWatchlistScreeningStatus :: WatchlistScreeningStatus -- ^ 
  , entityWatchlistScreeningClientUnderscoreuserUnderscoreid :: Text -- ^ 
  , entityWatchlistScreeningAuditUnderscoretrail :: WatchlistScreeningAuditTrail -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON EntityWatchlistScreening where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "entityWatchlistScreening")
instance ToJSON EntityWatchlistScreening where
  toJSON = genericToJSON (removeFieldLabelPrefix False "entityWatchlistScreening")


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


-- | The entity screening object allows you to represent an entity in your system, update its profile, and search for it on various watchlists. Note: Rejected entity screenings will not receive new hits, regardless of entity program configuration.
newtype EntityWatchlistScreeningResponse = EntityWatchlistScreeningResponse { unEntityWatchlistScreeningResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | A review submitted by a team member for an entity watchlist screening. A review can be either a comment on the current screening state, actions taken against hits attached to the watchlist screening, or both.
data EntityWatchlistScreeningReview = EntityWatchlistScreeningReview
  { entityWatchlistScreeningReviewId :: Text -- ^ ID of the associated entity review.
  , entityWatchlistScreeningReviewConfirmedUnderscorehits :: [Text] -- ^ Hits marked as a true positive after thorough manual review. These hits will never recur or be updated once dismissed. In most cases, confirmed hits indicate that the customer should be rejected.
  , entityWatchlistScreeningReviewDismissedUnderscorehits :: [Text] -- ^ Hits marked as a false positive after thorough manual review. These hits will never recur or be updated once dismissed.
  , entityWatchlistScreeningReviewComment :: Text -- ^ A comment submitted by a team member as part of reviewing a watchlist screening.
  , entityWatchlistScreeningReviewAuditUnderscoretrail :: WatchlistScreeningAuditTrail -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON EntityWatchlistScreeningReview where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "entityWatchlistScreeningReview")
instance ToJSON EntityWatchlistScreeningReview where
  toJSON = genericToJSON (removeFieldLabelPrefix False "entityWatchlistScreeningReview")


-- | A review submitted by a team member for an entity watchlist screening. A review can be either a comment on the current screening state, actions taken against hits attached to the watchlist screening, or both.
newtype EntityWatchlistScreeningReviewResponse = EntityWatchlistScreeningReviewResponse { unEntityWatchlistScreeningReviewResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Search terms associated with an entity used for searching against watchlists
data EntityWatchlistScreeningSearchTerms = EntityWatchlistScreeningSearchTerms
  { entityWatchlistScreeningSearchTermsEntityUnderscorewatchlistUnderscoreprogramUnderscoreid :: Text -- ^ ID of the associated entity program.
  , entityWatchlistScreeningSearchTermsLegalUnderscorename :: Text -- ^ The name of the organization being screened.
  , entityWatchlistScreeningSearchTermsDocumentUnderscorenumber :: Text -- ^ 
  , entityWatchlistScreeningSearchTermsEmailUnderscoreaddress :: Text -- ^ 
  , entityWatchlistScreeningSearchTermsCountry :: Text -- ^ 
  , entityWatchlistScreeningSearchTermsPhoneUnderscorenumber :: Text -- ^ 
  , entityWatchlistScreeningSearchTermsUrl :: Text -- ^ 
  , entityWatchlistScreeningSearchTermsVersion :: Double -- ^ The current version of the search terms. Starts at `1` and increments with each edit to `search_terms`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON EntityWatchlistScreeningSearchTerms where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "entityWatchlistScreeningSearchTerms")
instance ToJSON EntityWatchlistScreeningSearchTerms where
  toJSON = genericToJSON (removeFieldLabelPrefix False "entityWatchlistScreeningSearchTerms")


-- | Search inputs for creating an entity watchlist screening
data EntityWatchlistSearchTerms = EntityWatchlistSearchTerms
  { entityWatchlistSearchTermsEntityUnderscorewatchlistUnderscoreprogramUnderscoreid :: Text -- ^ ID of the associated entity program.
  , entityWatchlistSearchTermsLegalUnderscorename :: Text -- ^ The name of the organization being screened.
  , entityWatchlistSearchTermsDocumentUnderscorenumber :: Maybe Text -- ^ 
  , entityWatchlistSearchTermsEmailUnderscoreaddress :: Maybe Text -- ^ 
  , entityWatchlistSearchTermsCountry :: Maybe Text -- ^ 
  , entityWatchlistSearchTermsPhoneUnderscorenumber :: Maybe Text -- ^ 
  , entityWatchlistSearchTermsUrl :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON EntityWatchlistSearchTerms where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "entityWatchlistSearchTerms")
instance ToJSON EntityWatchlistSearchTerms where
  toJSON = genericToJSON (removeFieldLabelPrefix False "entityWatchlistSearchTerms")


-- | We use standard HTTP response codes for success and failure notifications, and our errors are further classified by &#x60;error_type&#x60;. In general, 200 HTTP codes correspond to success, 40X codes are for developer- or user-related failures, and 50X codes are for Plaid-related issues.  Error fields will be &#x60;null&#x60; if no error has occurred.
newtype Error = Error { unError :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | A description of whether the associated document was expired when the verification was performed.  Note: In the case where an expiration date is not present on the document or failed to be extracted, this value will be &#x60;no_data&#x60;.
data ExpirationDate = ExpirationDate
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ExpirationDate where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "expirationDate")
instance ToJSON ExpirationDate where
  toJSON = genericToJSON (removeFieldLabelPrefix False "expirationDate")


-- | Additional payment consent options
newtype ExternalPaymentInitiationConsentOptions = ExternalPaymentInitiationConsentOptions { unExternalPaymentInitiationConsentOptions :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Additional payment options
newtype ExternalPaymentOptions = ExternalPaymentOptions { unExternalPaymentOptions :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Details about external payment refund
data ExternalPaymentRefundDetails = ExternalPaymentRefundDetails
  { externalPaymentRefundDetailsName :: Text -- ^ The name of the account holder.
  , externalPaymentRefundDetailsIban :: Text -- ^ The International Bank Account Number (IBAN) for the account.
  , externalPaymentRefundDetailsBacs :: RecipientBACSNullable -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ExternalPaymentRefundDetails where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "externalPaymentRefundDetails")
instance ToJSON ExternalPaymentRefundDetails where
  toJSON = genericToJSON (removeFieldLabelPrefix False "externalPaymentRefundDetails")


-- | The schedule that the payment will be executed on. If a schedule is provided, the payment is automatically set up as a standing order. If no schedule is specified, the payment will be executed only once.
newtype ExternalPaymentScheduleBase = ExternalPaymentScheduleBase { unExternalPaymentScheduleBase :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The schedule that the payment will be executed on. If a schedule is provided, the payment is automatically set up as a standing order. If no schedule is specified, the payment will be executed only once.
data ExternalPaymentScheduleGet = ExternalPaymentScheduleGet
  { externalPaymentScheduleGetInterval :: PaymentScheduleInterval -- ^ 
  , externalPaymentScheduleGetIntervalUnderscoreexecutionUnderscoreday :: Int -- ^ The day of the interval on which to schedule the payment.  If the payment interval is weekly, `interval_execution_day` should be an integer from 1 (Monday) to 7 (Sunday).  If the payment interval is monthly, `interval_execution_day` should be an integer indicating which day of the month to make the payment on. Integers from 1 to 28 can be used to make a payment on that day of the month. Negative integers from -1 to -5 can be used to make a payment relative to the end of the month. To make a payment on the last day of the month, use -1; to make the payment on the second-to-last day, use -2, and so on.
  , externalPaymentScheduleGetStartUnderscoredate :: Day -- ^ A date in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format (YYYY-MM-DD). Standing order payments will begin on the first `interval_execution_day` on or after the `start_date`.  If the first `interval_execution_day` on or after the start date is also the same day that `/payment_initiation/payment/create` was called, the bank *may* make the first payment on that day, but it is not guaranteed to do so.
  , externalPaymentScheduleGetEndUnderscoredate :: Day -- ^ A date in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format (YYYY-MM-DD). Standing order payments will end on the last `interval_execution_day` on or before the `end_date`. If the only `interval_execution_day` between the start date and the end date (inclusive) is also the same day that `/payment_initiation/payment/create` was called, the bank *may* make a payment on that day, but it is not guaranteed to do so.
  , externalPaymentScheduleGetAdjustedUnderscorestartUnderscoredate :: Day -- ^ The start date sent to the bank after adjusting for holidays or weekends.  Will be provided in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format (YYYY-MM-DD). If the start date did not require adjustment, this field will be `null`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ExternalPaymentScheduleGet where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "externalPaymentScheduleGet")
instance ToJSON ExternalPaymentScheduleGet where
  toJSON = genericToJSON (removeFieldLabelPrefix False "externalPaymentScheduleGet")


-- | The schedule that the payment will be executed on. If a schedule is provided, the payment is automatically set up as a standing order. If no schedule is specified, the payment will be executed only once.
newtype ExternalPaymentScheduleRequest = ExternalPaymentScheduleRequest { unExternalPaymentScheduleRequest :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Analyzed location information for the associated hit
data GenericScreeningHitLocationItems = GenericScreeningHitLocationItems
  { genericScreeningHitLocationItemsAnalysis :: Maybe MatchSummary -- ^ 
  , genericScreeningHitLocationItemsData :: Maybe WatchlistScreeningHitLocations -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON GenericScreeningHitLocationItems where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "genericScreeningHitLocationItems")
instance ToJSON GenericScreeningHitLocationItems where
  toJSON = genericToJSON (removeFieldLabelPrefix False "genericScreeningHitLocationItems")


-- | Request input for fetching a dashboard user
data GetDashboardUserRequest = GetDashboardUserRequest
  { getDashboardUserRequestDashboardUnderscoreuserUnderscoreid :: Text -- ^ ID of the associated user.
  , getDashboardUserRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , getDashboardUserRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON GetDashboardUserRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "getDashboardUserRequest")
instance ToJSON GetDashboardUserRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "getDashboardUserRequest")


-- | Request input for fetching an entity watchlist screening
data GetEntityWatchlistScreeningRequest = GetEntityWatchlistScreeningRequest
  { getEntityWatchlistScreeningRequestEntityUnderscorewatchlistUnderscorescreeningUnderscoreid :: Text -- ^ ID of the associated entity screening.
  , getEntityWatchlistScreeningRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , getEntityWatchlistScreeningRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON GetEntityWatchlistScreeningRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "getEntityWatchlistScreeningRequest")
instance ToJSON GetEntityWatchlistScreeningRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "getEntityWatchlistScreeningRequest")


-- | Request input for fetching an identity verification
data GetIdentityVerificationRequest = GetIdentityVerificationRequest
  { getIdentityVerificationRequestIdentityUnderscoreverificationUnderscoreid :: Text -- ^ ID of the associated Identity Verification attempt.
  , getIdentityVerificationRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , getIdentityVerificationRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON GetIdentityVerificationRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "getIdentityVerificationRequest")
instance ToJSON GetIdentityVerificationRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "getIdentityVerificationRequest")


-- | Request input for fetching an individual watchlist screening
data GetIndividualWatchlistScreeningRequest = GetIndividualWatchlistScreeningRequest
  { getIndividualWatchlistScreeningRequestWatchlistUnderscorescreeningUnderscoreid :: Text -- ^ ID of the associated screening.
  , getIndividualWatchlistScreeningRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , getIndividualWatchlistScreeningRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON GetIndividualWatchlistScreeningRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "getIndividualWatchlistScreeningRequest")
instance ToJSON GetIndividualWatchlistScreeningRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "getIndividualWatchlistScreeningRequest")


-- | Request input for fetching an entity watchlist program
data GetWatchlistScreeningEntityProgramRequest = GetWatchlistScreeningEntityProgramRequest
  { getWatchlistScreeningEntityProgramRequestEntityUnderscorewatchlistUnderscoreprogramUnderscoreid :: Text -- ^ ID of the associated entity program.
  , getWatchlistScreeningEntityProgramRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , getWatchlistScreeningEntityProgramRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON GetWatchlistScreeningEntityProgramRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "getWatchlistScreeningEntityProgramRequest")
instance ToJSON GetWatchlistScreeningEntityProgramRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "getWatchlistScreeningEntityProgramRequest")


-- | Request input for fetching an individual watchlist program
data GetWatchlistScreeningIndividualProgramRequest = GetWatchlistScreeningIndividualProgramRequest
  { getWatchlistScreeningIndividualProgramRequestWatchlistUnderscoreprogramUnderscoreid :: Text -- ^ ID of the associated program.
  , getWatchlistScreeningIndividualProgramRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , getWatchlistScreeningIndividualProgramRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON GetWatchlistScreeningIndividualProgramRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "getWatchlistScreeningIndividualProgramRequest")
instance ToJSON GetWatchlistScreeningIndividualProgramRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "getWatchlistScreeningIndividualProgramRequest")


-- | A status health incident
newtype HealthIncident = HealthIncident { unHealthIncident :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object representing a balance held by an account in the past
newtype HistoricalBalance = HistoricalBalance { unHistoricalBalance :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Fired when an Item&#39;s historical transaction pull is completed and Plaid has prepared as much historical transaction data as possible for the Item. Once this webhook has been fired, transaction data beyond the most recent 30 days can be fetched for the Item. If [Account Select v2](https://plaid.com/docs/link/customization/#account-select) is enabled, this webhook will also be fired if account selections for the Item are updated, with &#x60;new_transactions&#x60; set to the number of net new transactions pulled after the account selection update.
newtype HistoricalUpdateWebhook = HistoricalUpdateWebhook { unHistoricalUpdateWebhook :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | A securities holding at an institution.
newtype Holding = Holding { unHolding :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Fired when new or updated holdings have been detected on an investment account. The webhook typically fires once per day, after market close, in response to any newly added holdings or price changes to existing holdings.
newtype HoldingsDefaultUpdateWebhook = HoldingsDefaultUpdateWebhook { unHoldingsDefaultUpdateWebhook :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Specify the holdings on the account.
data HoldingsOverride = HoldingsOverride
  { holdingsOverrideInstitutionUnderscoreprice :: Double -- ^ The last price given by the institution for this security
  , holdingsOverrideInstitutionUnderscorepriceUnderscoreasUnderscoreof :: Maybe Day -- ^ The date at which `institution_price` was current. Must be formatted as an [ISO 8601](https://wikipedia.org/wiki/ISO_8601) date.
  , holdingsOverrideCostUnderscorebasis :: Maybe Double -- ^ The average original value of the holding. Multiple cost basis values for the same security purchased at different prices are not supported.
  , holdingsOverrideQuantity :: Double -- ^ The total quantity of the asset held, as reported by the financial institution.
  , holdingsOverrideCurrency :: Text -- ^ Either a valid `iso_currency_code` or `unofficial_currency_code`
  , holdingsOverrideSecurity :: SecurityOverride -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON HoldingsOverride where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "holdingsOverride")
instance ToJSON HoldingsOverride where
  toJSON = genericToJSON (removeFieldLabelPrefix False "holdingsOverride")


-- | A globally unique and human readable ID type, specific to the country and document category. For more context on this field, see [Hybrid Input Validation](https://cognitohq.com/docs/flow/flow-hybrid-input-validation)
data IDNumberType = IDNumberType
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IDNumberType where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "iDNumberType")
instance ToJSON IDNumberType where
  toJSON = genericToJSON (removeFieldLabelPrefix False "iDNumberType")


-- | Fired when a change to identity data has been detected on an Item.
newtype IdentityDefaultUpdateWebhook = IdentityDefaultUpdateWebhook { unIdentityDefaultUpdateWebhook :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | IdentityGetRequest defines the request schema for &#x60;/identity/get&#x60;
data IdentityGetRequest = IdentityGetRequest
  { identityGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , identityGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , identityGetRequestAccessUnderscoretoken :: Text -- ^ The access token associated with the Item data is being requested for.
  , identityGetRequestOptions :: Maybe IdentityGetRequestOptions -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IdentityGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "identityGetRequest")
instance ToJSON IdentityGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "identityGetRequest")


-- | An optional object to filter &#x60;/identity/get&#x60; results.
data IdentityGetRequestOptions = IdentityGetRequestOptions
  { identityGetRequestOptionsAccountUnderscoreids :: Maybe [Text] -- ^ A list of `account_ids` to retrieve for the Item. Note: An error will be returned if a provided `account_id` is not associated with the Item.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IdentityGetRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "identityGetRequestOptions")
instance ToJSON IdentityGetRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "identityGetRequestOptions")


-- | IdentityGetResponse defines the response schema for &#x60;/identity/get&#x60;
newtype IdentityGetResponse = IdentityGetResponse { unIdentityGetResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The possible types of identity data that may have changed.
data IdentityUpdateTypes = IdentityUpdateTypes
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IdentityUpdateTypes where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "identityUpdateTypes")
instance ToJSON IdentityUpdateTypes where
  toJSON = genericToJSON (removeFieldLabelPrefix False "identityUpdateTypes")


-- | A identity verification attempt represents a customer&#39;s attempt to verify their identity, reflecting the required steps for completing the session, the results for each step, and information collected in the process.
data IdentityVerification = IdentityVerification
  { identityVerificationId :: Text -- ^ ID of the associated Identity Verification attempt.
  , identityVerificationClientUnderscoreuserUnderscoreid :: Text -- ^ An identifier to help you connect this object to your internal systems. For example, your database ID corresponding to this object.
  , identityVerificationCreatedUnderscoreat :: UTCTime -- ^ An ISO8601 formatted timestamp.
  , identityVerificationCompletedUnderscoreat :: UTCTime -- ^ An ISO8601 formatted timestamp.
  , identityVerificationPreviousUnderscoreattemptUnderscoreid :: Text -- ^ The ID for the Identity Verification preceding this session. This field will only be filled if the current Identity Verification is a retry of a previous attempt.
  , identityVerificationShareableUnderscoreurl :: Text -- ^ A shareable URL that can be sent directly to the user to complete verification
  , identityVerificationTemplate :: IdentityVerificationTemplateReference -- ^ 
  , identityVerificationUser :: IdentityVerificationUserData -- ^ 
  , identityVerificationStatus :: IdentityVerificationStatus -- ^ 
  , identityVerificationSteps :: IdentityVerificationStepSummary -- ^ 
  , identityVerificationDocumentaryUnderscoreverification :: DocumentaryVerification -- ^ 
  , identityVerificationKycUnderscorecheck :: KYCCheckDetails -- ^ 
  , identityVerificationWatchlistUnderscorescreeningUnderscoreid :: Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IdentityVerification where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "identityVerification")
instance ToJSON IdentityVerification where
  toJSON = genericToJSON (removeFieldLabelPrefix False "identityVerification")


-- | Request schema for &#39;/identity_verification/create&#39;
data IdentityVerificationCreateRequest = IdentityVerificationCreateRequest
  { identityVerificationCreateRequestIsUnderscoreshareable :: Bool -- ^ A flag specifying whether you would like Plaid to expose a shareable URL for the verification being created.
  , identityVerificationCreateRequestTemplateUnderscoreid :: Text -- ^ ID of the associated Identity Verification template.
  , identityVerificationCreateRequestGaveUnderscoreconsent :: Bool -- ^ A flag specifying whether the end user has already agreed to a privacy policy specifying that their data will be shared with Plaid for verification purposes.  If `gave_consent` is set to `true`, the `accept_tos` step will be marked as `skipped` and the end user's session will start at the next step requirement.
  , identityVerificationCreateRequestUser :: IdentityVerificationRequestUser -- ^ 
  , identityVerificationCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , identityVerificationCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , identityVerificationCreateRequestIsUnderscoreidempotent :: Maybe Bool -- ^ An optional flag specifying how you would like Plaid to handle attempts to create an Identity Verification when an Identity Verification already exists for the provided `client_user_id` and `template_id`. If idempotency is enabled, Plaid will return the existing Identity Verification. If idempotency is disabled, Plaid will reject the request with a `400 Bad Request` status code if an Identity Verification already exists for the supplied `client_user_id` and `template_id`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IdentityVerificationCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "identityVerificationCreateRequest")
instance ToJSON IdentityVerificationCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "identityVerificationCreateRequest")


-- | User information collected outside of Link, most likely via your own onboarding process.  Each of the following identity fields are optional:  &#x60;email_address&#x60;  &#x60;phone_number&#x60;  &#x60;date_of_birth&#x60;  &#x60;name&#x60;  &#x60;address&#x60;  &#x60;id_number&#x60; Specifically, these fields are optional in that they can either be fully provided (satisfying every required field in their subschema) or omitted from the request entirely by not providing the key or value. Providing these fields via the API will result in Link skipping the data collection process for the associated user. All verification steps enabled in the associated Identity Verification Template will still be run. Verification steps will either be run immediately, or once the user completes the &#x60;accept_tos&#x60; step, depending on the value provided to the &#x60;gave_consent&#x60; field.
data IdentityVerificationRequestUser = IdentityVerificationRequestUser
  { identityVerificationRequestUserClientUnderscoreuserUnderscoreid :: Text -- ^ An identifier to help you connect this object to your internal systems. For example, your database ID corresponding to this object.
  , identityVerificationRequestUserEmailUnderscoreaddress :: Maybe Text -- ^ 
  , identityVerificationRequestUserPhoneUnderscorenumber :: Maybe Text -- ^ A phone number in E.164 format.
  , identityVerificationRequestUserDateUnderscoreofUnderscorebirth :: Maybe Day -- ^ A date in the format YYYY-MM-DD (RFC 3339 Section 5.6).
  , identityVerificationRequestUserName :: Maybe UserName -- ^ 
  , identityVerificationRequestUserAddress :: Maybe UserAddress -- ^ 
  , identityVerificationRequestUserIdUnderscorenumber :: Maybe UserIDNumber -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IdentityVerificationRequestUser where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "identityVerificationRequestUser")
instance ToJSON IdentityVerificationRequestUser where
  toJSON = genericToJSON (removeFieldLabelPrefix False "identityVerificationRequestUser")


-- | A identity verification attempt represents a customer&#39;s attempt to verify their identity, reflecting the required steps for completing the session, the results for each step, and information collected in the process.
newtype IdentityVerificationResponse = IdentityVerificationResponse { unIdentityVerificationResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Fired when identity verification has been retried, which can be triggered via the dashboard or the API.
newtype IdentityVerificationRetriedWebhook = IdentityVerificationRetriedWebhook { unIdentityVerificationRetriedWebhook :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Request input for retrying an identity verification attempt
data IdentityVerificationRetryRequest = IdentityVerificationRetryRequest
  { identityVerificationRetryRequestClientUnderscoreuserUnderscoreid :: Text -- ^ An identifier to help you connect this object to your internal systems. For example, your database ID corresponding to this object.
  , identityVerificationRetryRequestTemplateUnderscoreid :: Text -- ^ ID of the associated Identity Verification template.
  , identityVerificationRetryRequestStrategy :: Strategy -- ^ 
  , identityVerificationRetryRequestSteps :: Maybe IdentityVerificationRetryRequestStepsObject -- ^ 
  , identityVerificationRetryRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , identityVerificationRetryRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IdentityVerificationRetryRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "identityVerificationRetryRequest")
instance ToJSON IdentityVerificationRetryRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "identityVerificationRetryRequest")


-- | Instructions for the &#x60;custom&#x60; retry strategy specifying which steps should be required or skipped.   Note:   This field must be provided when the retry strategy is &#x60;custom&#x60; and must be omitted otherwise.  Custom retries override settings in your Plaid Template. For example, if your Plaid Template has &#x60;verify_sms&#x60; disabled, a custom retry with &#x60;verify_sms&#x60; enabled will still require the step.  The &#x60;selfie_check&#x60; step is currently not supported on the sandbox server. Sandbox requests will silently disable the &#x60;selfie_check&#x60; step when provided.
data IdentityVerificationRetryRequestStepsObject = IdentityVerificationRetryRequestStepsObject
  { identityVerificationRetryRequestStepsObjectVerifyUnderscoresms :: Bool -- ^ A boolean field specifying whether the new session should require or skip the `verify_sms` step.
  , identityVerificationRetryRequestStepsObjectKycUnderscorecheck :: Bool -- ^ A boolean field specifying whether the new session should require or skip the `kyc_check` step.
  , identityVerificationRetryRequestStepsObjectDocumentaryUnderscoreverification :: Bool -- ^ A boolean field specifying whether the new session should require or skip the `documentary_verification` step.
  , identityVerificationRetryRequestStepsObjectSelfieUnderscorecheck :: Bool -- ^ A boolean field specifying whether the new session should require or skip the `selfie_check` step.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IdentityVerificationRetryRequestStepsObject where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "identityVerificationRetryRequestStepsObject")
instance ToJSON IdentityVerificationRetryRequestStepsObject where
  toJSON = genericToJSON (removeFieldLabelPrefix False "identityVerificationRetryRequestStepsObject")


-- | The status of this Identity Verification attempt.   &#x60;active&#x60; - The Identity Verification attempt is incomplete. The user may have completed part of the session, but has neither failed or passed.  &#x60;success&#x60; - The Identity Verification attempt has completed, passing all steps defined to the associated Identity Verification template  &#x60;failed&#x60; - The user failed one or more steps in the session and was told to contact support.  &#x60;expired&#x60; - The Identity Verification attempt was active for more than 48 hours without being completed and was automatically marked as expired.  &#x60;canceled&#x60; - The Identity Verification attempt was canceled, either via the dashboard by a user, or via API. The user may have completed part of the session, but has neither failed or passed.  &#x60;pending_review&#x60; - The Identity Verification attempt template was configured to perform a screening that had one or more hits needing review.
data IdentityVerificationStatus = IdentityVerificationStatus
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IdentityVerificationStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "identityVerificationStatus")
instance ToJSON IdentityVerificationStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "identityVerificationStatus")


-- | Fired when the status of an identity verification has been updated, which can be triggered via the dashboard or the API.
newtype IdentityVerificationStatusUpdatedWebhook = IdentityVerificationStatusUpdatedWebhook { unIdentityVerificationStatusUpdatedWebhook :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The status of a step in the identity verification process.
data IdentityVerificationStepStatus = IdentityVerificationStepStatus
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IdentityVerificationStepStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "identityVerificationStepStatus")
instance ToJSON IdentityVerificationStepStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "identityVerificationStepStatus")


-- | Each step will be one of the following values:   &#x60;active&#x60; - This step is the user&#39;s current step. They are either in the process of completing this step, or they recently closed their Identity Verification attempt while in the middle of this step. Only one step will be marked as &#x60;active&#x60; at any given point.  &#x60;success&#x60; - The Identity Verification attempt has completed this step.  &#x60;failed&#x60; - The user failed this step. This can either call the user to fail the session as a whole, or cause them to fallback to another step depending on how the Identity Verification template is configured. A failed step does not imply a failed session.  &#x60;waiting_for_prerequisite&#x60; - The user needs to complete another step first, before they progress to this step. This step may never run, depending on if the user fails an earlier step or if the step is only run as a fallback.  &#x60;not_applicable&#x60; - This step will not be run for this session.  &#x60;skipped&#x60; - The retry instructions that created this Identity Verification attempt specified that this step should be skipped.  &#x60;expired&#x60; - This step had not yet been completed when the Identity Verification attempt as a whole expired.  &#x60;canceled&#x60; - The Identity Verification attempt was canceled before the user completed this step.  &#x60;pending_review&#x60; - The Identity Verification attempt template was configured to perform a screening that had one or more hits needing review.  &#x60;manually_approved&#x60; - The step was manually overridden to pass by a team member in the dashboard.  &#x60;manually_rejected&#x60; - The step was manually overridden to fail by a team member in the dashboard.
data IdentityVerificationStepSummary = IdentityVerificationStepSummary
  { identityVerificationStepSummaryAcceptUnderscoretos :: IdentityVerificationStepStatus -- ^ 
  , identityVerificationStepSummaryVerifyUnderscoresms :: IdentityVerificationStepStatus -- ^ 
  , identityVerificationStepSummaryKycUnderscorecheck :: IdentityVerificationStepStatus -- ^ 
  , identityVerificationStepSummaryDocumentaryUnderscoreverification :: IdentityVerificationStepStatus -- ^ 
  , identityVerificationStepSummarySelfieUnderscorecheck :: IdentityVerificationStepStatus -- ^ 
  , identityVerificationStepSummaryWatchlistUnderscorescreening :: IdentityVerificationStepStatus -- ^ 
  , identityVerificationStepSummaryRiskUnderscorecheck :: IdentityVerificationStepStatus -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IdentityVerificationStepSummary where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "identityVerificationStepSummary")
instance ToJSON IdentityVerificationStepSummary where
  toJSON = genericToJSON (removeFieldLabelPrefix False "identityVerificationStepSummary")


-- | Fired when an end user has completed a step of the Identity Verification process.
newtype IdentityVerificationStepUpdatedWebhook = IdentityVerificationStepUpdatedWebhook { unIdentityVerificationStepUpdatedWebhook :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The resource ID and version number of the template configuring the behavior of a given identity verification.
data IdentityVerificationTemplateReference = IdentityVerificationTemplateReference
  { identityVerificationTemplateReferenceId :: Text -- ^ ID of the associated Identity Verification template.
  , identityVerificationTemplateReferenceVersion :: Double -- ^ Version of the associated Identity Verification template.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IdentityVerificationTemplateReference where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "identityVerificationTemplateReference")
instance ToJSON IdentityVerificationTemplateReference where
  toJSON = genericToJSON (removeFieldLabelPrefix False "identityVerificationTemplateReference")


-- | Even if an address has been collected, some fields may be null depending on the region&#39;s addressing system. For example: * Addresses from the United Kingdom will not include a region * Addresses from Hong Kong will not include postal code
data IdentityVerificationUserAddress = IdentityVerificationUserAddress
  { identityVerificationUserAddressStreet :: Text -- ^ 
  , identityVerificationUserAddressStreet2 :: Text -- ^ Extra street information, like an apartment or suite number.
  , identityVerificationUserAddressCity :: Text -- ^ 
  , identityVerificationUserAddressRegion :: Text -- ^ 
  , identityVerificationUserAddressPostalUnderscorecode :: Text -- ^ 
  , identityVerificationUserAddressCountry :: Text -- ^ Valid, capitalized, two-letter ISO code representing the country of this object. Must be in ISO 3166-1 alpha-2 form.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IdentityVerificationUserAddress where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "identityVerificationUserAddress")
instance ToJSON IdentityVerificationUserAddress where
  toJSON = genericToJSON (removeFieldLabelPrefix False "identityVerificationUserAddress")


-- | The identity data that was either collected from the user or provided via API in order to perform an identity verification.
data IdentityVerificationUserData = IdentityVerificationUserData
  { identityVerificationUserDataPhoneUnderscorenumber :: Text -- ^ A phone number in E.164 format.
  , identityVerificationUserDataDateUnderscoreofUnderscorebirth :: Day -- ^ A date in the format YYYY-MM-DD (RFC 3339 Section 5.6).
  , identityVerificationUserDataIpUnderscoreaddress :: Text -- ^ An IPv4 or IPV6 address.
  , identityVerificationUserDataEmailUnderscoreaddress :: Text -- ^ 
  , identityVerificationUserDataName :: UserName -- ^ 
  , identityVerificationUserDataAddress :: IdentityVerificationUserAddress -- ^ 
  , identityVerificationUserDataIdUnderscorenumber :: UserIDNumber -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IdentityVerificationUserData where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "identityVerificationUserData")
instance ToJSON IdentityVerificationUserData where
  toJSON = genericToJSON (removeFieldLabelPrefix False "identityVerificationUserData")


-- | A high level description of the quality of the image the user submitted.  For example, an image that is blurry, distorted by glare from a nearby light source, or improperly framed might be marked as low or medium quality. Poor quality images are more likely to fail OCR and/or template conformity checks.  Note: By default, Plaid will let a user recapture document images twice before failing the entire session if we attribute the failure to low image quality.
data ImageQuality = ImageQuality
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ImageQuality where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "imageQuality")
instance ToJSON ImageQuality where
  toJSON = genericToJSON (removeFieldLabelPrefix False "imageQuality")


-- | An update on the health incident
newtype IncidentUpdate = IncidentUpdate { unIncidentUpdate :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object representing a breakdown of the different income types on the paystub.
newtype IncomeBreakdown = IncomeBreakdown { unIncomeBreakdown :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The type of income. Possible values include:   &#x60;\&quot;regular\&quot;&#x60;: regular income   &#x60;\&quot;overtime\&quot;&#x60;: overtime income   &#x60;\&quot;bonus\&quot;&#x60;: bonus income
data IncomeBreakdownType = IncomeBreakdownType
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IncomeBreakdownType where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "incomeBreakdownType")
instance ToJSON IncomeBreakdownType where
  toJSON = genericToJSON (removeFieldLabelPrefix False "incomeBreakdownType")


-- | Specify payroll data on the account.
data IncomeOverride = IncomeOverride
  { incomeOverridePaystubs :: Maybe [PaystubOverride] -- ^ A list of paystubs associated with the account.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IncomeOverride where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "incomeOverride")
instance ToJSON IncomeOverride where
  toJSON = genericToJSON (removeFieldLabelPrefix False "incomeOverride")


-- | The verified fields from a paystub verification. All fields are provided as reported on the paystub.
newtype IncomeSummary = IncomeSummary { unIncomeSummary :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Field number for income summary
newtype IncomeSummaryFieldNumber = IncomeSummaryFieldNumber { unIncomeSummaryFieldNumber :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Data about the income summary
newtype IncomeSummaryFieldString = IncomeSummaryFieldString { unIncomeSummaryFieldString :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | IncomeVerificationCreateRequest defines the request schema for &#x60;/income/verification/create&#x60;
data IncomeVerificationCreateRequest = IncomeVerificationCreateRequest
  { incomeVerificationCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , incomeVerificationCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , incomeVerificationCreateRequestWebhook :: Text -- ^ The URL endpoint to which Plaid should send webhooks related to the progress of the income verification process.
  , incomeVerificationCreateRequestPrecheckUnderscoreid :: Maybe Text -- ^ The ID of a precheck created with `/income/verification/precheck`. Will be used to improve conversion of the income verification flow.
  , incomeVerificationCreateRequestOptions :: Maybe IncomeVerificationCreateRequestOptions -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IncomeVerificationCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "incomeVerificationCreateRequest")
instance ToJSON IncomeVerificationCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "incomeVerificationCreateRequest")


-- | Optional arguments for &#x60;/income/verification/create&#x60;
data IncomeVerificationCreateRequestOptions = IncomeVerificationCreateRequestOptions
  { incomeVerificationCreateRequestOptionsAccessUnderscoretokens :: Maybe [Text] -- ^ An array of access tokens corresponding to the Items that will be cross-referenced with the product data. Plaid will attempt to correlate transaction history from these Items with data from the user's paystub, such as date and amount. The `verification` status of the paystub as returned by `/income/verification/paystubs/get` will indicate if the verification status was successful, or, if not, why it failed. If the `transactions` product was not initialized for the Items during Link, it will be initialized after this Link session.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IncomeVerificationCreateRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "incomeVerificationCreateRequestOptions")
instance ToJSON IncomeVerificationCreateRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "incomeVerificationCreateRequestOptions")


-- | IncomeVerificationCreateResponse defines the response schema for &#x60;/income/verification/create&#x60;.
newtype IncomeVerificationCreateResponse = IncomeVerificationCreateResponse { unIncomeVerificationCreateResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | IncomeVerificationDocumentsDownloadRequest defines the request schema for &#x60;/income/verification/documents/download&#x60;.
data IncomeVerificationDocumentsDownloadRequest = IncomeVerificationDocumentsDownloadRequest
  { incomeVerificationDocumentsDownloadRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , incomeVerificationDocumentsDownloadRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , incomeVerificationDocumentsDownloadRequestIncomeUnderscoreverificationUnderscoreid :: Maybe Text -- ^ The ID of the verification.
  , incomeVerificationDocumentsDownloadRequestAccessUnderscoretoken :: Maybe Text -- ^ The access token associated with the Item data is being requested for.
  , incomeVerificationDocumentsDownloadRequestDocumentUnderscoreid :: Maybe Text -- ^ The document ID to download. If passed, a single document will be returned in the resulting zip file, rather than all document
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IncomeVerificationDocumentsDownloadRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "incomeVerificationDocumentsDownloadRequest")
instance ToJSON IncomeVerificationDocumentsDownloadRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "incomeVerificationDocumentsDownloadRequest")


-- | Flow types to retrieve payroll income data
data IncomeVerificationPayrollFlowType = IncomeVerificationPayrollFlowType
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IncomeVerificationPayrollFlowType where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "incomeVerificationPayrollFlowType")
instance ToJSON IncomeVerificationPayrollFlowType where
  toJSON = genericToJSON (removeFieldLabelPrefix False "incomeVerificationPayrollFlowType")


-- | IncomeVerificationPaystubsGetRequest defines the request schema for &#x60;/income/verification/paystubs/get&#x60;.
data IncomeVerificationPaystubsGetRequest = IncomeVerificationPaystubsGetRequest
  { incomeVerificationPaystubsGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , incomeVerificationPaystubsGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , incomeVerificationPaystubsGetRequestIncomeUnderscoreverificationUnderscoreid :: Maybe Text -- ^ The ID of the verification for which to get paystub information.
  , incomeVerificationPaystubsGetRequestAccessUnderscoretoken :: Maybe Text -- ^ The access token associated with the Item data is being requested for.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IncomeVerificationPaystubsGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "incomeVerificationPaystubsGetRequest")
instance ToJSON IncomeVerificationPaystubsGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "incomeVerificationPaystubsGetRequest")


-- | IncomeVerificationPaystubsGetResponse defines the response schema for &#x60;/income/verification/paystubs/get&#x60;.
newtype IncomeVerificationPaystubsGetResponse = IncomeVerificationPaystubsGetResponse { unIncomeVerificationPaystubsGetResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The confidence that Plaid can support the user in the digital income verification flow instead of requiring a manual paystub upload. One of the following:  &#x60;\&quot;HIGH\&quot;&#x60;: It is very likely that this user can use the digital income verification flow.  \&quot;&#x60;LOW&#x60;\&quot;: It is unlikely that this user can use the digital income verification flow.  &#x60;\&quot;UNKNOWN\&quot;&#x60;: It was not possible to determine if the user is supportable with the information passed.
data IncomeVerificationPrecheckConfidence = IncomeVerificationPrecheckConfidence
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IncomeVerificationPrecheckConfidence where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "incomeVerificationPrecheckConfidence")
instance ToJSON IncomeVerificationPrecheckConfidence where
  toJSON = genericToJSON (removeFieldLabelPrefix False "incomeVerificationPrecheckConfidence")


-- | Information about the end user&#39;s employer
data IncomeVerificationPrecheckEmployer = IncomeVerificationPrecheckEmployer
  { incomeVerificationPrecheckEmployerName :: Maybe Text -- ^ The employer's name
  , incomeVerificationPrecheckEmployerAddress :: Maybe IncomeVerificationPrecheckEmployerAddress -- ^ 
  , incomeVerificationPrecheckEmployerTaxUnderscoreid :: Maybe Text -- ^ The employer's tax id
  , incomeVerificationPrecheckEmployerUrl :: Maybe Text -- ^ The URL for the employer's public website
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IncomeVerificationPrecheckEmployer where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "incomeVerificationPrecheckEmployer")
instance ToJSON IncomeVerificationPrecheckEmployer where
  toJSON = genericToJSON (removeFieldLabelPrefix False "incomeVerificationPrecheckEmployer")


-- | The address of the employer
data IncomeVerificationPrecheckEmployerAddress = IncomeVerificationPrecheckEmployerAddress
  { incomeVerificationPrecheckEmployerAddressCity :: Maybe Text -- ^ The full city name
  , incomeVerificationPrecheckEmployerAddressCountry :: Maybe Text -- ^ The ISO 3166-1 alpha-2 country code
  , incomeVerificationPrecheckEmployerAddressPostalUnderscorecode :: Maybe Text -- ^ The postal code. In API versions 2018-05-22 and earlier, this field is called `zip`.
  , incomeVerificationPrecheckEmployerAddressRegion :: Maybe Text -- ^ The region or state. In API versions 2018-05-22 and earlier, this field is called `state`. Example: `\"NC\"`
  , incomeVerificationPrecheckEmployerAddressStreet :: Maybe Text -- ^ The full street address Example: `\"564 Main Street, APT 15\"`
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IncomeVerificationPrecheckEmployerAddress where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "incomeVerificationPrecheckEmployerAddress")
instance ToJSON IncomeVerificationPrecheckEmployerAddress where
  toJSON = genericToJSON (removeFieldLabelPrefix False "incomeVerificationPrecheckEmployerAddress")


-- | Data about the components comprising an address.
newtype IncomeVerificationPrecheckEmployerAddressData = IncomeVerificationPrecheckEmployerAddressData { unIncomeVerificationPrecheckEmployerAddressData :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Data about military info in the income verification precheck.
data IncomeVerificationPrecheckMilitaryInfo = IncomeVerificationPrecheckMilitaryInfo
  { incomeVerificationPrecheckMilitaryInfoIsUnderscoreactiveUnderscoreduty :: Maybe Bool -- ^ Is the user currently active duty in the US military
  , incomeVerificationPrecheckMilitaryInfoBranch :: Maybe Text -- ^ If the user is currently serving in the US military, the branch of the military in which they are serving Valid values: 'AIR FORCE', 'ARMY', 'COAST GUARD', 'MARINES', 'NAVY', 'UNKNOWN'
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IncomeVerificationPrecheckMilitaryInfo where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "incomeVerificationPrecheckMilitaryInfo")
instance ToJSON IncomeVerificationPrecheckMilitaryInfo where
  toJSON = genericToJSON (removeFieldLabelPrefix False "incomeVerificationPrecheckMilitaryInfo")


-- | IncomeVerificationPrecheckRequest defines the request schema for &#x60;/income/verification/precheck&#x60;
data IncomeVerificationPrecheckRequest = IncomeVerificationPrecheckRequest
  { incomeVerificationPrecheckRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , incomeVerificationPrecheckRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , incomeVerificationPrecheckRequestUser :: Maybe IncomeVerificationPrecheckUser -- ^ 
  , incomeVerificationPrecheckRequestEmployer :: Maybe IncomeVerificationPrecheckEmployer -- ^ 
  , incomeVerificationPrecheckRequestTransactionsUnderscoreaccessUnderscoretoken :: Maybe Text -- ^ 
  , incomeVerificationPrecheckRequestTransactionsUnderscoreaccessUnderscoretokens :: Maybe [Text] -- ^ An array of access tokens corresponding to Items belonging to the user whose eligibility is being checked. Note that if the Items specified here are not already initialized with `transactions`, providing them in this field will cause these Items to be initialized with (and billed for) the Transactions product.
  , incomeVerificationPrecheckRequestUsUnderscoremilitaryUnderscoreinfo :: Maybe IncomeVerificationPrecheckMilitaryInfo -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IncomeVerificationPrecheckRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "incomeVerificationPrecheckRequest")
instance ToJSON IncomeVerificationPrecheckRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "incomeVerificationPrecheckRequest")


-- | IncomeVerificationPrecheckResponse defines the response schema for &#x60;/income/verification/precheck&#x60;.
newtype IncomeVerificationPrecheckResponse = IncomeVerificationPrecheckResponse { unIncomeVerificationPrecheckResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Information about the user whose eligibility is being evaluated.
data IncomeVerificationPrecheckUser = IncomeVerificationPrecheckUser
  { incomeVerificationPrecheckUserFirstUnderscorename :: Maybe Text -- ^ The user's first name
  , incomeVerificationPrecheckUserLastUnderscorename :: Maybe Text -- ^ The user's last name
  , incomeVerificationPrecheckUserEmailUnderscoreaddress :: Maybe Text -- ^ The user's email address
  , incomeVerificationPrecheckUserHomeUnderscoreaddress :: Maybe SignalAddressData -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IncomeVerificationPrecheckUser where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "incomeVerificationPrecheckUser")
instance ToJSON IncomeVerificationPrecheckUser where
  toJSON = genericToJSON (removeFieldLabelPrefix False "incomeVerificationPrecheckUser")


-- | IncomeVerificationRefreshRequest defines the request schema for &#x60;/income/verification/refresh&#x60;
data IncomeVerificationRefreshRequest = IncomeVerificationRefreshRequest
  { incomeVerificationRefreshRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , incomeVerificationRefreshRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , incomeVerificationRefreshRequestIncomeUnderscoreverificationUnderscoreid :: Maybe Text -- ^ The ID of the verification.
  , incomeVerificationRefreshRequestAccessUnderscoretoken :: Maybe Text -- ^ The access token associated with the Item data is being requested for.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IncomeVerificationRefreshRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "incomeVerificationRefreshRequest")
instance ToJSON IncomeVerificationRefreshRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "incomeVerificationRefreshRequest")


-- | IncomeVerificationRequestResponse defines the response schema for &#x60;/income/verification/refresh&#x60;
newtype IncomeVerificationRefreshResponse = IncomeVerificationRefreshResponse { unIncomeVerificationRefreshResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The types of source income data that users should be able to share
data IncomeVerificationSourceType = IncomeVerificationSourceType
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IncomeVerificationSourceType where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "incomeVerificationSourceType")
instance ToJSON IncomeVerificationSourceType where
  toJSON = genericToJSON (removeFieldLabelPrefix False "incomeVerificationSourceType")


-- | Fired when the status of an income verification instance has changed. It will typically take several minutes for this webhook to fire after the end user has uploaded their documents in the Document Income flow.
newtype IncomeVerificationStatusWebhook = IncomeVerificationStatusWebhook { unIncomeVerificationStatusWebhook :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | IncomeVerificationTaxformsGetRequest defines the request schema for &#x60;/income/verification/taxforms/get&#x60;
newtype IncomeVerificationTaxformsGetRequest = IncomeVerificationTaxformsGetRequest { unIncomeVerificationTaxformsGetRequest :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | IncomeVerificationTaxformsGetResponse defines the response schema for &#x60;/income/verification/taxforms/get&#x60;
newtype IncomeVerificationTaxformsGetResponse = IncomeVerificationTaxformsGetResponse { unIncomeVerificationTaxformsGetResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Status of the income verification webhook
newtype IncomeVerificationWebhookStatus = IncomeVerificationWebhookStatus { unIncomeVerificationWebhookStatus :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Name information for the associated individual watchlist hit
data IndividualScreeningHitNames = IndividualScreeningHitNames
  { individualScreeningHitNamesFull :: Text -- ^ The full name of the individual, including all parts.
  , individualScreeningHitNamesIsUnderscoreprimary :: Bool -- ^ Primary names are those most commonly used to refer to this person. Only one name will ever be marked as primary.
  , individualScreeningHitNamesWeakUnderscorealiasUnderscoredetermination :: WeakAliasDetermination -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IndividualScreeningHitNames where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "individualScreeningHitNames")
instance ToJSON IndividualScreeningHitNames where
  toJSON = genericToJSON (removeFieldLabelPrefix False "individualScreeningHitNames")


-- | Shorthand identifier for a specific screening list for individuals.
data IndividualWatchlistCode = IndividualWatchlistCode
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IndividualWatchlistCode where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "individualWatchlistCode")
instance ToJSON IndividualWatchlistCode where
  toJSON = genericToJSON (removeFieldLabelPrefix False "individualWatchlistCode")


-- | A program that configures the active lists, search parameters, and other behavior for initial and ongoing screening of individuals.
data IndividualWatchlistProgram = IndividualWatchlistProgram
  { individualWatchlistProgramId :: Text -- ^ ID of the associated program.
  , individualWatchlistProgramCreatedUnderscoreat :: UTCTime -- ^ An ISO8601 formatted timestamp.
  , individualWatchlistProgramIsUnderscorerescanningUnderscoreenabled :: Bool -- ^ Indicator specifying whether the program is enabled and will perform daily rescans.
  , individualWatchlistProgramListsUnderscoreenabled :: [IndividualWatchlistCode] -- ^ Watchlists enabled for the associated program
  , individualWatchlistProgramName :: Text -- ^ A name for the program to define its purpose. For example, \"High Risk Individuals\", \"US Cardholders\", or \"Applicants\".
  , individualWatchlistProgramNameUnderscoresensitivity :: ProgramNameSensitivity -- ^ 
  , individualWatchlistProgramAuditUnderscoretrail :: WatchlistScreeningAuditTrail -- ^ 
  , individualWatchlistProgramIsUnderscorearchived :: Bool -- ^ Archived programs are read-only and cannot screen new customers nor participate in ongoing monitoring.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IndividualWatchlistProgram where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "individualWatchlistProgram")
instance ToJSON IndividualWatchlistProgram where
  toJSON = genericToJSON (removeFieldLabelPrefix False "individualWatchlistProgram")


-- | A program that configures the active lists, search parameters, and other behavior for initial and ongoing screening of individuals.
newtype IndividualWatchlistProgramResponse = IndividualWatchlistProgramResponse { unIndividualWatchlistProgramResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The &#x60;inflow_model&#x60; allows you to model a test account that receives regular income or make regular payments on a loan. Any transactions generated by the &#x60;inflow_model&#x60; will appear in addition to randomly generated test data or transactions specified by &#x60;override_accounts&#x60;.
newtype InflowModel = InflowModel { unInflowModel :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Fired when an Item&#39;s initial transaction pull is completed. Once this webhook has been fired, transaction data for the most recent 30 days can be fetched for the Item. If [Account Select v2](https://plaid.com/docs/link/customization/#account-select) is enabled, this webhook will also be fired if account selections for the Item are updated, with &#x60;new_transactions&#x60; set to the number of net new transactions pulled after the account selection update.
newtype InitialUpdateWebhook = InitialUpdateWebhook { unInitialUpdateWebhook :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Details relating to a specific financial institution
newtype Institution = Institution { unInstitution :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | The status of an institution is determined by the health of its Item logins, Transactions updates, Investments updates, Liabilities updates, Auth requests, Balance requests, Identity requests, Investments requests, and Liabilities requests. A login attempt is conducted during the initial Item add in Link. If there is not enough traffic to accurately calculate an institution&#39;s status, Plaid will return null rather than potentially inaccurate data.  Institution status is accessible in the Dashboard and via the API using the &#x60;/institutions/get_by_id&#x60; endpoint with the &#x60;include_status&#x60; option set to true. Note that institution status is not available in the Sandbox environment. 
newtype InstitutionStatus = InstitutionStatus { unInstitutionStatus :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | InstitutionsGetByIdRequest defines the request schema for &#x60;/institutions/get_by_id&#x60;
data InstitutionsGetByIdRequest = InstitutionsGetByIdRequest
  { institutionsGetByIdRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , institutionsGetByIdRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , institutionsGetByIdRequestInstitutionUnderscoreid :: Text -- ^ The ID of the institution to get details about
  , institutionsGetByIdRequestCountryUnderscorecodes :: [CountryCode] -- ^ Specify an array of Plaid-supported country codes this institution supports, using the ISO-3166-1 alpha-2 country code standard. In API versions 2019-05-29 and earlier, the `country_codes` parameter is an optional parameter within the `options` object and will default to `[US]` if it is not supplied. 
  , institutionsGetByIdRequestOptions :: Maybe InstitutionsGetByIdRequestOptions -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON InstitutionsGetByIdRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "institutionsGetByIdRequest")
instance ToJSON InstitutionsGetByIdRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "institutionsGetByIdRequest")


-- | Specifies optional parameters for &#x60;/institutions/get_by_id&#x60;. If provided, must not be &#x60;null&#x60;.
data InstitutionsGetByIdRequestOptions = InstitutionsGetByIdRequestOptions
  { institutionsGetByIdRequestOptionsIncludeUnderscoreoptionalUnderscoremetadata :: Maybe Bool -- ^ When `true`, return an institution's logo, brand color, and URL. When available, the bank's logo is returned as a base64 encoded 152x152 PNG, the brand color is in hexadecimal format. The default value is `false`.  Note that Plaid does not own any of the logos shared by the API and that by accessing or using these logos, you agree that you are doing so at your own risk and will, if necessary, obtain all required permissions from the appropriate rights holders and adhere to any applicable usage guidelines. Plaid disclaims all express or implied warranties with respect to the logos.
  , institutionsGetByIdRequestOptionsIncludeUnderscorestatus :: Maybe Bool -- ^ If `true`, the response will include status information about the institution. Default value is `false`.
  , institutionsGetByIdRequestOptionsIncludeUnderscoreauthUnderscoremetadata :: Maybe Bool -- ^ When `true`, returns metadata related to the Auth product indicating which auth methods are supported.
  , institutionsGetByIdRequestOptionsIncludeUnderscorepaymentUnderscoreinitiationUnderscoremetadata :: Maybe Bool -- ^ When `true`, returns metadata related to the Payment Initiation product indicating which payment configurations are supported.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON InstitutionsGetByIdRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "institutionsGetByIdRequestOptions")
instance ToJSON InstitutionsGetByIdRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "institutionsGetByIdRequestOptions")


-- | InstitutionsGetByIdResponse defines the response schema for &#x60;/institutions/get_by_id&#x60;
newtype InstitutionsGetByIdResponse = InstitutionsGetByIdResponse { unInstitutionsGetByIdResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | InstitutionsGetRequest defines the request schema for &#x60;/institutions/get&#x60;
data InstitutionsGetRequest = InstitutionsGetRequest
  { institutionsGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , institutionsGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , institutionsGetRequestCount :: Int -- ^ The total number of Institutions to return.
  , institutionsGetRequestOffset :: Int -- ^ The number of Institutions to skip.
  , institutionsGetRequestCountryUnderscorecodes :: [CountryCode] -- ^ Specify an array of Plaid-supported country codes this institution supports, using the ISO-3166-1 alpha-2 country code standard.  In API versions 2019-05-29 and earlier, the `country_codes` parameter is an optional parameter within the `options` object and will default to `[US]` if it is not supplied. 
  , institutionsGetRequestOptions :: Maybe InstitutionsGetRequestOptions -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON InstitutionsGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "institutionsGetRequest")
instance ToJSON InstitutionsGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "institutionsGetRequest")


-- | An optional object to filter &#x60;/institutions/get&#x60; results.
data InstitutionsGetRequestOptions = InstitutionsGetRequestOptions
  { institutionsGetRequestOptionsProducts :: Maybe [Products] -- ^ Filter the Institutions based on which products they support. 
  , institutionsGetRequestOptionsRoutingUnderscorenumbers :: Maybe [Text] -- ^ Specify an array of routing numbers to filter institutions. The response will only return institutions that match all of the routing numbers in the array. Routing number records used for this matching are not comprehensive; failure to match a given routing number to an institution does not mean that the institution is unsupported by Plaid.
  , institutionsGetRequestOptionsOauth :: Maybe Bool -- ^ Limit results to institutions with or without OAuth login flows.
  , institutionsGetRequestOptionsIncludeUnderscoreoptionalUnderscoremetadata :: Maybe Bool -- ^ When `true`, return the institution's homepage URL, logo and primary brand color.  Note that Plaid does not own any of the logos shared by the API, and that by accessing or using these logos, you agree that you are doing so at your own risk and will, if necessary, obtain all required permissions from the appropriate rights holders and adhere to any applicable usage guidelines. Plaid disclaims all express or implied warranties with respect to the logos.
  , institutionsGetRequestOptionsIncludeUnderscoreauthUnderscoremetadata :: Maybe Bool -- ^ When `true`, returns metadata related to the Auth product indicating which auth methods are supported.
  , institutionsGetRequestOptionsIncludeUnderscorepaymentUnderscoreinitiationUnderscoremetadata :: Maybe Bool -- ^ When `true`, returns metadata related to the Payment Initiation product indicating which payment configurations are supported.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON InstitutionsGetRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "institutionsGetRequestOptions")
instance ToJSON InstitutionsGetRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "institutionsGetRequestOptions")


-- | InstitutionsGetResponse defines the response schema for &#x60;/institutions/get&#x60;
newtype InstitutionsGetResponse = InstitutionsGetResponse { unInstitutionsGetResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An account filter to apply to institutions search requests
newtype InstitutionsSearchAccountFilter = InstitutionsSearchAccountFilter { unInstitutionsSearchAccountFilter :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Additional options that will be used to filter institutions by various Payment Initiation configurations.
newtype InstitutionsSearchPaymentInitiationOptions = InstitutionsSearchPaymentInitiationOptions { unInstitutionsSearchPaymentInitiationOptions :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | InstitutionsSearchRequest defines the request schema for &#x60;/institutions/search&#x60;
data InstitutionsSearchRequest = InstitutionsSearchRequest
  { institutionsSearchRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , institutionsSearchRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , institutionsSearchRequestQuery :: Text -- ^ The search query. Institutions with names matching the query are returned
  , institutionsSearchRequestProducts :: [Products] -- ^ Filter the Institutions based on whether they support all products listed in `products`. Provide `null` to get institutions regardless of supported products. Note that when `auth` is specified as a product, if you are enabled for Instant Match or Automated Micro-deposits, institutions that support those products will be returned even if `auth` is not present in their product array.
  , institutionsSearchRequestCountryUnderscorecodes :: [CountryCode] -- ^ Specify an array of Plaid-supported country codes this institution supports, using the ISO-3166-1 alpha-2 country code standard. In API versions 2019-05-29 and earlier, the `country_codes` parameter is an optional parameter within the `options` object and will default to `[US]` if it is not supplied. 
  , institutionsSearchRequestOptions :: Maybe InstitutionsSearchRequestOptions -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON InstitutionsSearchRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "institutionsSearchRequest")
instance ToJSON InstitutionsSearchRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "institutionsSearchRequest")


-- | An optional object to filter &#x60;/institutions/search&#x60; results.
data InstitutionsSearchRequestOptions = InstitutionsSearchRequestOptions
  { institutionsSearchRequestOptionsOauth :: Maybe Bool -- ^ Limit results to institutions with or without OAuth login flows.
  , institutionsSearchRequestOptionsIncludeUnderscoreoptionalUnderscoremetadata :: Maybe Bool -- ^ When true, return the institution's homepage URL, logo and primary brand color.
  , institutionsSearchRequestOptionsIncludeUnderscoreauthUnderscoremetadata :: Maybe Bool -- ^ When `true`, returns metadata related to the Auth product indicating which auth methods are supported.
  , institutionsSearchRequestOptionsIncludeUnderscorepaymentUnderscoreinitiationUnderscoremetadata :: Maybe Bool -- ^ When `true`, returns metadata related to the Payment Initiation product indicating which payment configurations are supported.
  , institutionsSearchRequestOptionsPaymentUnderscoreinitiation :: Maybe InstitutionsSearchPaymentInitiationOptions -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON InstitutionsSearchRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "institutionsSearchRequestOptions")
instance ToJSON InstitutionsSearchRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "institutionsSearchRequestOptions")


-- | InstitutionsSearchResponse defines the response schema for &#x60;/institutions/search&#x60;
newtype InstitutionsSearchResponse = InstitutionsSearchResponse { unInstitutionsSearchResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Valid account subtypes for investment accounts. For a list containing descriptions of each subtype, see [Account schemas](https://plaid.com/docs/api/accounts/#StandaloneAccountType-investment).
data InvestmentAccountSubtype = InvestmentAccountSubtype
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON InvestmentAccountSubtype where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "investmentAccountSubtype")
instance ToJSON InvestmentAccountSubtype where
  toJSON = genericToJSON (removeFieldLabelPrefix False "investmentAccountSubtype")


-- | A filter to apply to &#x60;investment&#x60;-type accounts (or &#x60;brokerage&#x60;-type accounts for API versions 2018-05-22 and earlier).
newtype InvestmentFilter = InvestmentFilter { unInvestmentFilter :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An optional object to filter &#x60;/investments/holdings/get&#x60; results. If provided, must not be &#x60;null&#x60;.
data InvestmentHoldingsGetRequestOptions = InvestmentHoldingsGetRequestOptions
  { investmentHoldingsGetRequestOptionsAccountUnderscoreids :: Maybe [Text] -- ^ An array of `account_id`s to retrieve for the Item. An error will be returned if a provided `account_id` is not associated with the Item.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON InvestmentHoldingsGetRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "investmentHoldingsGetRequestOptions")
instance ToJSON InvestmentHoldingsGetRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "investmentHoldingsGetRequestOptions")


-- | A transaction within an investment account.
newtype InvestmentTransaction = InvestmentTransaction { unInvestmentTransaction :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | For descriptions of possible transaction types and subtypes, see the [Investment transaction types schema](https://plaid.com/docs/api/accounts/#investment-transaction-types-schema).
data InvestmentTransactionSubtype = InvestmentTransactionSubtype
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON InvestmentTransactionSubtype where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "investmentTransactionSubtype")
instance ToJSON InvestmentTransactionSubtype where
  toJSON = genericToJSON (removeFieldLabelPrefix False "investmentTransactionSubtype")


-- | Value is one of the following: &#x60;buy&#x60;: Buying an investment &#x60;sell&#x60;: Selling an investment &#x60;cancel&#x60;: A cancellation of a pending transaction &#x60;cash&#x60;: Activity that modifies a cash position &#x60;fee&#x60;: A fee on the account &#x60;transfer&#x60;: Activity which modifies a position, but not through buy/sell activity e.g. options exercise, portfolio transfer  For descriptions of possible transaction types and subtypes, see the [Investment transaction types schema](https://plaid.com/docs/api/accounts/#investment-transaction-types-schema).
data InvestmentTransactionType = InvestmentTransactionType
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON InvestmentTransactionType where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "investmentTransactionType")
instance ToJSON InvestmentTransactionType where
  toJSON = genericToJSON (removeFieldLabelPrefix False "investmentTransactionType")


-- | Fired when new or canceled transactions have been detected on an investment account.
newtype InvestmentsDefaultUpdateWebhook = InvestmentsDefaultUpdateWebhook { unInvestmentsDefaultUpdateWebhook :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | InvestmentsHoldingsGetRequest defines the request schema for &#x60;/investments/holdings/get&#x60;
data InvestmentsHoldingsGetRequest = InvestmentsHoldingsGetRequest
  { investmentsHoldingsGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , investmentsHoldingsGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , investmentsHoldingsGetRequestAccessUnderscoretoken :: Text -- ^ The access token associated with the Item data is being requested for.
  , investmentsHoldingsGetRequestOptions :: Maybe InvestmentHoldingsGetRequestOptions -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON InvestmentsHoldingsGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "investmentsHoldingsGetRequest")
instance ToJSON InvestmentsHoldingsGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "investmentsHoldingsGetRequest")


-- | InvestmentsHoldingsGetResponse defines the response schema for &#x60;/investments/holdings/get&#x60;
newtype InvestmentsHoldingsGetResponse = InvestmentsHoldingsGetResponse { unInvestmentsHoldingsGetResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | InvestmentsTransactionsGetRequest defines the request schema for &#x60;/investments/transactions/get&#x60;
data InvestmentsTransactionsGetRequest = InvestmentsTransactionsGetRequest
  { investmentsTransactionsGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , investmentsTransactionsGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , investmentsTransactionsGetRequestAccessUnderscoretoken :: Text -- ^ The access token associated with the Item data is being requested for.
  , investmentsTransactionsGetRequestStartUnderscoredate :: Day -- ^ The earliest date for which to fetch transaction history. Dates should be formatted as YYYY-MM-DD.
  , investmentsTransactionsGetRequestEndUnderscoredate :: Day -- ^ The most recent date for which to fetch transaction history. Dates should be formatted as YYYY-MM-DD.
  , investmentsTransactionsGetRequestOptions :: Maybe InvestmentsTransactionsGetRequestOptions -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON InvestmentsTransactionsGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "investmentsTransactionsGetRequest")
instance ToJSON InvestmentsTransactionsGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "investmentsTransactionsGetRequest")


-- | An optional object to filter &#x60;/investments/transactions/get&#x60; results. If provided, must be non-&#x60;null&#x60;.
data InvestmentsTransactionsGetRequestOptions = InvestmentsTransactionsGetRequestOptions
  { investmentsTransactionsGetRequestOptionsAccountUnderscoreids :: Maybe [Text] -- ^ An array of `account_ids` to retrieve for the Item.
  , investmentsTransactionsGetRequestOptionsCount :: Maybe Int -- ^ The number of transactions to fetch. 
  , investmentsTransactionsGetRequestOptionsOffset :: Maybe Int -- ^ The number of transactions to skip when fetching transaction history
  } deriving (Show, Eq, Generic, Data)

instance FromJSON InvestmentsTransactionsGetRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "investmentsTransactionsGetRequestOptions")
instance ToJSON InvestmentsTransactionsGetRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "investmentsTransactionsGetRequestOptions")


-- | InvestmentsTransactionsGetResponse defines the response schema for &#x60;/investments/transactions/get&#x60;
newtype InvestmentsTransactionsGetResponse = InvestmentsTransactionsGetResponse { unInvestmentsTransactionsGetResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Specify the list of investments transactions on the account.
data InvestmentsTransactionsOverride = InvestmentsTransactionsOverride
  { investmentsTransactionsOverrideDate :: Day -- ^ Posting date for the transaction. Must be formatted as an [ISO 8601](https://wikipedia.org/wiki/ISO_8601) date.
  , investmentsTransactionsOverrideName :: Text -- ^ The institution's description of the transaction.
  , investmentsTransactionsOverrideQuantity :: Double -- ^ The number of units of the security involved in this transaction. Must be positive if the type is a buy and negative if the type is a sell.
  , investmentsTransactionsOverridePrice :: Double -- ^ The price of the security at which this transaction occurred.
  , investmentsTransactionsOverrideFees :: Maybe Double -- ^ The combined value of all fees applied to this transaction.
  , investmentsTransactionsOverrideType :: Text -- ^ The type of the investment transaction. Possible values are: `buy`: Buying an investment `sell`: Selling an investment `cash`: Activity that modifies a cash position `fee`: A fee on the account `transfer`: Activity that modifies a position, but not through buy/sell activity e.g. options exercise, portfolio transfer
  , investmentsTransactionsOverrideCurrency :: Text -- ^ Either a valid `iso_currency_code` or `unofficial_currency_code`
  , investmentsTransactionsOverrideSecurity :: Maybe SecurityOverride -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON InvestmentsTransactionsOverride where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "investmentsTransactionsOverride")
instance ToJSON InvestmentsTransactionsOverride where
  toJSON = genericToJSON (removeFieldLabelPrefix False "investmentsTransactionsOverride")


-- | A binary match indicator specifying whether the country that issued the provided document matches the country that the user separately provided to Plaid.  Note: You can configure whether a &#x60;no_match&#x60; on &#x60;issuing_country&#x60; fails the &#x60;documentary_verification&#x60; by editing your Plaid Template.
data IssuingCountry = IssuingCountry
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON IssuingCountry where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "issuingCountry")
instance ToJSON IssuingCountry where
  toJSON = genericToJSON (removeFieldLabelPrefix False "issuingCountry")


-- | Metadata about the Item.
newtype Item = Item { unItem :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | ItemAccessTokenInvalidateRequest defines the request schema for &#x60;/item/access_token/invalidate&#x60;
data ItemAccessTokenInvalidateRequest = ItemAccessTokenInvalidateRequest
  { itemAccessTokenInvalidateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , itemAccessTokenInvalidateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , itemAccessTokenInvalidateRequestAccessUnderscoretoken :: Text -- ^ The access token associated with the Item data is being requested for.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ItemAccessTokenInvalidateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "itemAccessTokenInvalidateRequest")
instance ToJSON ItemAccessTokenInvalidateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "itemAccessTokenInvalidateRequest")


-- | ItemAccessTokenInvalidateResponse defines the response schema for &#x60;/item/access_token/invalidate&#x60;
newtype ItemAccessTokenInvalidateResponse = ItemAccessTokenInvalidateResponse { unItemAccessTokenInvalidateResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Request to list connected applications for a user.
data ItemApplicationListRequest = ItemApplicationListRequest
  { itemApplicationListRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , itemApplicationListRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , itemApplicationListRequestAccessUnderscoretoken :: Maybe Text -- ^ The access token associated with the Item data is being requested for.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ItemApplicationListRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "itemApplicationListRequest")
instance ToJSON ItemApplicationListRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "itemApplicationListRequest")


-- | Describes the connected application for a particular end user.
newtype ItemApplicationListResponse = ItemApplicationListResponse { unItemApplicationListResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | User authentication parameters, for clients making a request without an &#x60;access_token&#x60;. This is only allowed for select clients and will not be supported in the future. Most clients should call /item/import to obtain an access token before making a request.
data ItemApplicationListUserAuth = ItemApplicationListUserAuth
  { itemApplicationListUserAuthUserUnderscoreid :: Maybe Text -- ^ Account username.
  , itemApplicationListUserAuthFiUnderscoreusernameUnderscorehash :: Maybe Text -- ^ Account username hashed by FI.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ItemApplicationListUserAuth where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "itemApplicationListUserAuth")
instance ToJSON ItemApplicationListUserAuth where
  toJSON = genericToJSON (removeFieldLabelPrefix False "itemApplicationListUserAuth")


-- | ItemApplicationScopesUpdateRequest defines the request schema for &#x60;/item/application/scopes/update&#x60;
data ItemApplicationScopesUpdateRequest = ItemApplicationScopesUpdateRequest
  { itemApplicationScopesUpdateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , itemApplicationScopesUpdateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , itemApplicationScopesUpdateRequestAccessUnderscoretoken :: Text -- ^ The access token associated with the Item data is being requested for.
  , itemApplicationScopesUpdateRequestApplicationUnderscoreid :: Text -- ^ This field will map to the application ID that is returned from /item/applications/list, or provided to the institution in an oauth redirect.
  , itemApplicationScopesUpdateRequestScopes :: Scopes -- ^ 
  , itemApplicationScopesUpdateRequestState :: Maybe Text -- ^ When scopes are updated during enrollment, this field must be populated with the state sent to the partner in the OAuth Login URI. This field is required when the context is `ENROLLMENT`.
  , itemApplicationScopesUpdateRequestContext :: ScopesContext -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ItemApplicationScopesUpdateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "itemApplicationScopesUpdateRequest")
instance ToJSON ItemApplicationScopesUpdateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "itemApplicationScopesUpdateRequest")


-- | ItemApplicationScopesUpdateResponse defines the response schema for &#x60;/item/application/scopes/update&#x60;
newtype ItemApplicationScopesUpdateResponse = ItemApplicationScopesUpdateResponse { unItemApplicationScopesUpdateResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Fired when an error is encountered with an Item. The error can be resolved by having the user go through Link’s update mode.
newtype ItemErrorWebhook = ItemErrorWebhook { unItemErrorWebhook :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | ItemGetRequest defines the request schema for &#x60;/item/get&#x60;
data ItemGetRequest = ItemGetRequest
  { itemGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , itemGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , itemGetRequestAccessUnderscoretoken :: Text -- ^ The access token associated with the Item data is being requested for.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ItemGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "itemGetRequest")
instance ToJSON ItemGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "itemGetRequest")


-- | ItemGetResponse defines the response schema for &#x60;/item/get&#x60; and &#x60;/item/webhook/update&#x60;
newtype ItemGetResponse = ItemGetResponse { unItemGetResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | ItemImportRequest defines the request schema for &#x60;/item/import&#x60;
data ItemImportRequest = ItemImportRequest
  { itemImportRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , itemImportRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , itemImportRequestProducts :: [Products] -- ^ Array of product strings
  , itemImportRequestUserUnderscoreauth :: ItemImportRequestUserAuth -- ^ 
  , itemImportRequestOptions :: Maybe ItemImportRequestOptions -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ItemImportRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "itemImportRequest")
instance ToJSON ItemImportRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "itemImportRequest")


-- | An optional object to configure &#x60;/item/import&#x60; request.
data ItemImportRequestOptions = ItemImportRequestOptions
  { itemImportRequestOptionsWebhook :: Maybe Text -- ^ Specifies a webhook URL to associate with an Item. Plaid fires a webhook if credentials fail. 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ItemImportRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "itemImportRequestOptions")
instance ToJSON ItemImportRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "itemImportRequestOptions")


-- | Object of user ID and auth token pair, permitting Plaid to aggregate a user’s accounts
data ItemImportRequestUserAuth = ItemImportRequestUserAuth
  { itemImportRequestUserAuthUserUnderscoreid :: Text -- ^ Opaque user identifier
  , itemImportRequestUserAuthAuthUnderscoretoken :: Text -- ^ Authorization token Plaid will use to aggregate this user’s accounts
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ItemImportRequestUserAuth where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "itemImportRequestUserAuth")
instance ToJSON ItemImportRequestUserAuth where
  toJSON = genericToJSON (removeFieldLabelPrefix False "itemImportRequestUserAuth")


-- | ItemImportResponse defines the response schema for &#x60;/item/import&#x60;
newtype ItemImportResponse = ItemImportResponse { unItemImportResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Fired once Plaid calculates income from an Item.
newtype ItemProductReadyWebhook = ItemProductReadyWebhook { unItemProductReadyWebhook :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | ItemPublicTokenCreateRequest defines the request schema for &#x60;/item/public_token/create&#x60;
data ItemPublicTokenCreateRequest = ItemPublicTokenCreateRequest
  { itemPublicTokenCreateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , itemPublicTokenCreateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , itemPublicTokenCreateRequestAccessUnderscoretoken :: Text -- ^ The access token associated with the Item data is being requested for.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ItemPublicTokenCreateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "itemPublicTokenCreateRequest")
instance ToJSON ItemPublicTokenCreateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "itemPublicTokenCreateRequest")


-- | ItemPublicTokenCreateResponse defines the response schema for &#x60;/item/public_token/create&#x60;
newtype ItemPublicTokenCreateResponse = ItemPublicTokenCreateResponse { unItemPublicTokenCreateResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | ItemPublicTokenExchangeRequest defines the request schema for &#x60;/item/public_token/exchange&#x60;
data ItemPublicTokenExchangeRequest = ItemPublicTokenExchangeRequest
  { itemPublicTokenExchangeRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , itemPublicTokenExchangeRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , itemPublicTokenExchangeRequestPublicUnderscoretoken :: Text -- ^ Your `public_token`, obtained from the Link `onSuccess` callback or `/sandbox/item/public_token/create`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ItemPublicTokenExchangeRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "itemPublicTokenExchangeRequest")
instance ToJSON ItemPublicTokenExchangeRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "itemPublicTokenExchangeRequest")


-- | ItemPublicTokenExchangeResponse defines the response schema for &#x60;/item/public_token/exchange&#x60;
newtype ItemPublicTokenExchangeResponse = ItemPublicTokenExchangeResponse { unItemPublicTokenExchangeResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | ItemRemoveRequest defines the request schema for &#x60;/item/remove&#x60;
data ItemRemoveRequest = ItemRemoveRequest
  { itemRemoveRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , itemRemoveRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , itemRemoveRequestAccessUnderscoretoken :: Text -- ^ The access token associated with the Item data is being requested for.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ItemRemoveRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "itemRemoveRequest")
instance ToJSON ItemRemoveRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "itemRemoveRequest")


-- | ItemRemoveResponse defines the response schema for &#x60;/item/remove&#x60;
newtype ItemRemoveResponse = ItemRemoveResponse { unItemRemoveResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object with information about the status of the Item.
newtype ItemStatus = ItemStatus { unItemStatus :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Information about the last successful and failed investments update for the Item.
newtype ItemStatusInvestments = ItemStatusInvestments { unItemStatusInvestments :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Information about the last webhook fired for the Item.
newtype ItemStatusLastWebhook = ItemStatusLastWebhook { unItemStatusLastWebhook :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Information about the last successful and failed transactions update for the Item.
data ItemStatusNullable = ItemStatusNullable
  { itemStatusNullableInvestments :: Maybe ItemStatusInvestments -- ^ 
  , itemStatusNullableTransactions :: Maybe ItemStatusTransactions -- ^ 
  , itemStatusNullableLastUnderscorewebhook :: Maybe ItemStatusLastWebhook -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ItemStatusNullable where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "itemStatusNullable")
instance ToJSON ItemStatusNullable where
  toJSON = genericToJSON (removeFieldLabelPrefix False "itemStatusNullable")


-- | Information about the last successful and failed transactions update for the Item.
newtype ItemStatusTransactions = ItemStatusTransactions { unItemStatusTransactions :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | ItemWebhookUpdateRequest defines the request schema for &#x60;/item/webhook/update&#x60;
data ItemWebhookUpdateRequest = ItemWebhookUpdateRequest
  { itemWebhookUpdateRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , itemWebhookUpdateRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , itemWebhookUpdateRequestAccessUnderscoretoken :: Text -- ^ The access token associated with the Item data is being requested for.
  , itemWebhookUpdateRequestWebhook :: Maybe Text -- ^ The new webhook URL to associate with the Item. To remove a webhook from an Item, set to `null`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ItemWebhookUpdateRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "itemWebhookUpdateRequest")
instance ToJSON ItemWebhookUpdateRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "itemWebhookUpdateRequest")


-- | ItemWebhookUpdateResponse defines the response schema for &#x60;/item/webhook/update&#x60;
newtype ItemWebhookUpdateResponse = ItemWebhookUpdateResponse { unItemWebhookUpdateResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | A JSON Web Key (JWK) that can be used in conjunction with [JWT libraries](https://jwt.io/#libraries-io) to verify Plaid webhooks
newtype JWKPublicKey = JWKPublicKey { unJWKPublicKey :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | A JWT Header, used for webhook validation
newtype JWTHeader = JWTHeader { unJWTHeader :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Result summary object specifying how the &#x60;address&#x60; field matched.
data KYCCheckAddressSummary = KYCCheckAddressSummary
  { kYCCheckAddressSummarySummary :: MatchSummaryCode -- ^ 
  , kYCCheckAddressSummaryPoUnderscorebox :: POBoxStatus -- ^ 
  , kYCCheckAddressSummaryType :: AddressPurposeLabel -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON KYCCheckAddressSummary where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kYCCheckAddressSummary")
instance ToJSON KYCCheckAddressSummary where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kYCCheckAddressSummary")


-- | Result summary object specifying how the &#x60;date_of_birth&#x60; field matched.
data KYCCheckDateOfBirthSummary = KYCCheckDateOfBirthSummary
  { kYCCheckDateOfBirthSummarySummary :: MatchSummaryCode -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON KYCCheckDateOfBirthSummary where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kYCCheckDateOfBirthSummary")
instance ToJSON KYCCheckDateOfBirthSummary where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kYCCheckDateOfBirthSummary")


-- | The outcome of the &#x60;kyc_check&#x60; step.
data KYCCheckDetails = KYCCheckDetails
  { kYCCheckDetailsStatus :: Text -- ^ The outcome status for the associated Identity Verification attempt's `kyc_check` step. This field will always have the same value as `steps.kyc_check`.
  , kYCCheckDetailsAddress :: KYCCheckAddressSummary -- ^ 
  , kYCCheckDetailsName :: KYCCheckNameSummary -- ^ 
  , kYCCheckDetailsDateUnderscoreofUnderscorebirth :: KYCCheckDateOfBirthSummary -- ^ 
  , kYCCheckDetailsIdUnderscorenumber :: KYCCheckIDNumberSummary -- ^ 
  , kYCCheckDetailsPhoneUnderscorenumber :: KYCCheckPhoneSummary -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON KYCCheckDetails where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kYCCheckDetails")
instance ToJSON KYCCheckDetails where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kYCCheckDetails")


-- | Result summary object specifying how the &#x60;id_number&#x60; field matched.
data KYCCheckIDNumberSummary = KYCCheckIDNumberSummary
  { kYCCheckIDNumberSummarySummary :: MatchSummaryCode -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON KYCCheckIDNumberSummary where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kYCCheckIDNumberSummary")
instance ToJSON KYCCheckIDNumberSummary where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kYCCheckIDNumberSummary")


-- | Result summary object specifying how the &#x60;name&#x60; field matched.
data KYCCheckNameSummary = KYCCheckNameSummary
  { kYCCheckNameSummarySummary :: MatchSummaryCode -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON KYCCheckNameSummary where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kYCCheckNameSummary")
instance ToJSON KYCCheckNameSummary where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kYCCheckNameSummary")


-- | Result summary object specifying how the &#x60;phone&#x60; field matched.
data KYCCheckPhoneSummary = KYCCheckPhoneSummary
  { kYCCheckPhoneSummarySummary :: MatchSummaryCode -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON KYCCheckPhoneSummary where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kYCCheckPhoneSummary")
instance ToJSON KYCCheckPhoneSummary where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kYCCheckPhoneSummary")


-- | The webhook of type &#x60;LIABILITIES&#x60; and code &#x60;DEFAULT_UPDATE&#x60; will be fired when new or updated liabilities have been detected on a liabilities item.
data LiabilitiesDefaultUpdateWebhook = LiabilitiesDefaultUpdateWebhook
  { liabilitiesDefaultUpdateWebhookWebhookUnderscoretype :: Text -- ^ `LIABILITIES`
  , liabilitiesDefaultUpdateWebhookWebhookUnderscorecode :: Text -- ^ `DEFAULT_UPDATE`
  , liabilitiesDefaultUpdateWebhookItemUnderscoreid :: Text -- ^ The `item_id` of the Item associated with this webhook, warning, or error
  , liabilitiesDefaultUpdateWebhookError :: PlaidError -- ^ 
  , liabilitiesDefaultUpdateWebhookAccountUnderscoreidsUnderscorewithUnderscorenewUnderscoreliabilities :: [Text] -- ^ An array of `account_id`'s for accounts that contain new liabilities.'
  , liabilitiesDefaultUpdateWebhookAccountUnderscoreidsUnderscorewithUnderscoreupdatedUnderscoreliabilities :: (Map.Map String [Text]) -- ^ An object with keys of `account_id`'s that are mapped to their respective liabilities fields that changed.  Example: `{ \"XMBvvyMGQ1UoLbKByoMqH3nXMj84ALSdE5B58\": [\"past_amount_due\"] }` 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON LiabilitiesDefaultUpdateWebhook where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "liabilitiesDefaultUpdateWebhook")
instance ToJSON LiabilitiesDefaultUpdateWebhook where
  toJSON = genericToJSON (removeFieldLabelPrefix False "liabilitiesDefaultUpdateWebhook")


-- | LiabilitiesGetRequest defines the request schema for &#x60;/liabilities/get&#x60;
data LiabilitiesGetRequest = LiabilitiesGetRequest
  { liabilitiesGetRequestClientUnderscoreid :: Maybe Text -- ^ Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
  , liabilitiesGetRequestSecret :: Maybe Text -- ^ Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
  , liabilitiesGetRequestAccessUnderscoretoken :: Text -- ^ The access token associated with the Item data is being requested for.
  , liabilitiesGetRequestOptions :: Maybe LiabilitiesGetRequestOptions -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON LiabilitiesGetRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "liabilitiesGetRequest")
instance ToJSON LiabilitiesGetRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "liabilitiesGetRequest")


-- | An optional object to filter &#x60;/liabilities/get&#x60; results. If provided, &#x60;options&#x60; cannot be null.
data LiabilitiesGetRequestOptions = LiabilitiesGetRequestOptions
  { liabilitiesGetRequestOptionsAccountUnderscoreids :: Maybe [Text] -- ^ A list of accounts to retrieve for the Item.  An error will be returned if a provided `account_id` is not associated with the Item
  } deriving (Show, Eq, Generic, Data)

instance FromJSON LiabilitiesGetRequestOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "liabilitiesGetRequestOptions")
instance ToJSON LiabilitiesGetRequestOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "liabilitiesGetRequestOptions")


-- | LiabilitiesGetResponse defines the response schema for &#x60;/liabilities/get&#x60;
newtype LiabilitiesGetResponse = LiabilitiesGetResponse { unLiabilitiesGetResponse :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | An object containing liability accounts
newtype LiabilitiesObject = LiabilitiesObject { unLiabilitiesObject :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

-- | Used to configure Sandbox test data for the Liabilities product
newtype LiabilityOverride = LiabilityOverride { unLiabilityOverride :: (Map.Map Text Value) }
  deriving (Show, Eq, FromJSON, ToJSON, Generic, Data)

