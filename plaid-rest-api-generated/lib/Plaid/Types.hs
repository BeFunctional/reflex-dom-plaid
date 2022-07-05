{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Plaid.Types (
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
newtype CountryCode = CountryCode
  { unCountryCode :: Text
  } 
  deriving stock (Show, Eq, Generic, Data)
  deriving newtype (ToJSON, FromJSON, IsString)


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
newtype Products = Products
  { unProducts :: Text
  } 
  deriving stock (Show, Eq, Generic, Data)
  deriving newtype (ToJSON, FromJSON, IsString)

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
      [ ("$", "Dollar")
      , ("^", "Caret")
      , ("|", "Pipe")
      , ("=", "Equal")
      , ("*", "Star")
      , ("-", "Dash")
      , ("&", "Ampersand")
      , ("%", "Percent")
      , ("#", "Hash")
      , ("@", "At")
      , ("!", "Exclamation")
      , ("+", "Plus")
      , (":", "Colon")
      , (";", "Semicolon")
      , (">", "GreaterThan")
      , ("<", "LessThan")
      , (".", "Period")
      , ("_", "Underscore")
      , ("?", "Question_Mark")
      , (",", "Comma")
      , ("'", "Quote")
      , ("/", "Slash")
      , ("(", "Left_Parenthesis")
      , (")", "Right_Parenthesis")
      , ("{", "Left_Curly_Bracket")
      , ("}", "Right_Curly_Bracket")
      , ("[", "Left_Square_Bracket")
      , ("]", "Right_Square_Bracket")
      , ("~", "Tilde")
      , ("`", "Backtick")
      , ("<=", "Less_Than_Or_Equal_To")
      , (">=", "Greater_Than_Or_Equal_To")
      , ("!=", "Not_Equal")
      , ("~=", "Tilde_Equal")
      , ("\\", "Back_Slash")
      , ("\"", "Double_Quote")
      ]
    mkCharReplacement (replaceStr, searchStr) = T.unpack . replacer (T.pack searchStr) (T.pack replaceStr) . T.pack
    replacer =
      if forParsing
        then flip T.replace
        else T.replace
