import 'package:checks/checks.dart';
import 'package:client_stripe/client_stripe.dart';
import 'package:client_stripe/models.dart';
import 'package:test/test.dart';

const stripeTypes = {
  'account': Account.fromJson,
  'account_link': AccountLink.fromJson,
  'account_session': AccountSession.fromJson,
  'apple_pay_domain': ApplePayDomain.fromJson,
  'application_fee': ApplicationFee.fromJson,
  'apps.secret': AppsSecret.fromJson,
  'balance': Balance.fromJson,
  'balance_transaction': BalanceTransaction.fromJson,
  'bank_account': BankAccount.fromJson,
  'billing.meter': BillingMeter.fromJson,
  'billing.meter_event': BillingMeterEvent.fromJson,
  'billing.meter_event_adjustment': BillingMeterEventAdjustment.fromJson,
  'billing.meter_event_summary': BillingMeterEventSummary.fromJson,
  'billing_portal.configuration': BillingPortalConfiguration.fromJson,
  'billing_portal.session': BillingPortalSession.fromJson,
  'capability': Capability.fromJson,
  'card': Card.fromJson,
  'cash_balance': CashBalance.fromJson,
  'charge': Charge.fromJson,
  'checkout.session': CheckoutSession.fromJson,
  'climate.order': ClimateOrder.fromJson,
  'climate.product': ClimateProduct.fromJson,
  'climate.supplier': ClimateSupplier.fromJson,
  'confirmation_token': ConfirmationToken.fromJson,
  'country_spec': CountrySpec.fromJson,
  'coupon': Coupon.fromJson,
  'credit_note': CreditNote.fromJson,
  'credit_note_line_item': CreditNoteLineItem.fromJson,
  'customer': Customer.fromJson,
  'customer_balance_transaction': CustomerBalanceTransaction.fromJson,
  'customer_cash_balance_transaction': CustomerCashBalanceTransaction.fromJson,
  'customer_session': CustomerSession.fromJson,
  'deleted_account': DeletedAccount.fromJson,
  'deleted_apple_pay_domain': DeletedApplePayDomain.fromJson,
  'deleted_coupon': DeletedCoupon.fromJson,
  'deleted_customer': DeletedCustomer.fromJson,
  'deleted_discount': DeletedDiscount.fromJson,
  'deleted_external_account': DeletedExternalAccount.fromJson,
  'deleted_invoice': DeletedInvoice.fromJson,
  'deleted_invoiceitem': DeletedInvoiceitem.fromJson,
  'deleted_payment_source': DeletedPaymentSource.fromJson,
  'deleted_person': DeletedPerson.fromJson,
  'deleted_plan': DeletedPlan.fromJson,
  'deleted_product': DeletedProduct.fromJson,
  'deleted_radar.value_list': DeletedRadarValueList.fromJson,
  'deleted_radar.value_list_item': DeletedRadarValueListItem.fromJson,
  'deleted_subscription_item': DeletedSubscriptionItem.fromJson,
  'deleted_tax_id': DeletedTaxId.fromJson,
  'deleted_terminal.configuration': DeletedTerminalConfiguration.fromJson,
  'deleted_terminal.location': DeletedTerminalLocation.fromJson,
  'deleted_terminal.reader': DeletedTerminalReader.fromJson,
  'deleted_test_helpers.test_clock': DeletedTestHelpersTestClock.fromJson,
  'deleted_webhook_endpoint': DeletedWebhookEndpoint.fromJson,
  'dispute': Dispute.fromJson,
  'ephemeral_key': EphemeralKey.fromJson,
  'event': Event.fromJson,
  'exchange_rate': ExchangeRate.fromJson,
  'external_account': ExternalAccount.fromJson,
  'fee_refund': FeeRefund.fromJson,
  'file': File.fromJson,
  'file_link': FileLink.fromJson,
  'financial_connections.account': FinancialConnectionsAccount.fromJson,
  'financial_connections.account_owner':
      FinancialConnectionsAccountOwner.fromJson,
  'financial_connections.session': FinancialConnectionsSession.fromJson,
  'financial_connections.transaction': FinancialConnectionsTransaction.fromJson,
  'forwarding.request': ForwardingRequest.fromJson,
  'funding_instructions': FundingInstructions.fromJson,
  'identity.verification_report': IdentityVerificationReport.fromJson,
  'identity.verification_session': IdentityVerificationSession.fromJson,
  'invoice': Invoice.fromJson,
  'invoiceitem': Invoiceitem.fromJson,
  'issuing.authorization': IssuingAuthorization.fromJson,
  'issuing.card': IssuingCard.fromJson,
  'issuing.cardholder': IssuingCardholder.fromJson,
  'issuing.dispute': IssuingDispute.fromJson,
  'issuing.personalization_design': IssuingPersonalizationDesign.fromJson,
  'issuing.physical_bundle': IssuingPhysicalBundle.fromJson,
  'issuing.token': IssuingToken.fromJson,
  'issuing.transaction': IssuingTransaction.fromJson,
  'item': Item.fromJson,
  'line_item': LineItem.fromJson,
  'login_link': LoginLink.fromJson,
  'mandate': Mandate.fromJson,
  'payment_intent': PaymentIntent.fromJson,
  'payment_link': PaymentLink.fromJson,
  'payment_method': PaymentMethod.fromJson,
  'payment_method_configuration': PaymentMethodConfiguration.fromJson,
  'payment_method_domain': PaymentMethodDomain.fromJson,
  'payment_source': PaymentSource.fromJson,
  'payout': Payout.fromJson,
  'person': Person.fromJson,
  'plan': Plan.fromJson,
  'price': Price.fromJson,
  'product': Product.fromJson,
  'promotion_code': PromotionCode.fromJson,
  'quote': Quote.fromJson,
  'radar.early_fraud_warning': RadarEarlyFraudWarning.fromJson,
  'radar.value_list': RadarValueList.fromJson,
  'radar.value_list_item': RadarValueListItem.fromJson,
  'refund': Refund.fromJson,
  'reporting.report_run': ReportingReportRun.fromJson,
  'reporting.report_type': ReportingReportType.fromJson,
  'review': Review.fromJson,
  'scheduled_query_run': ScheduledQueryRun.fromJson,
  'setup_attempt': SetupAttempt.fromJson,
  'setup_intent': SetupIntent.fromJson,
  'shipping_rate': ShippingRate.fromJson,
  'source': Source.fromJson,
  'source_transaction': SourceTransaction.fromJson,
  'subscription': Subscription.fromJson,
  'subscription_item': SubscriptionItem.fromJson,
  'subscription_schedule': SubscriptionSchedule.fromJson,
  'tax.calculation': TaxCalculation.fromJson,
  'tax.calculation_line_item': TaxCalculationLineItem.fromJson,
  'tax.registration': TaxRegistration.fromJson,
  'tax.settings': TaxSettings.fromJson,
  'tax.transaction': TaxTransaction.fromJson,
  'tax.transaction_line_item': TaxTransactionLineItem.fromJson,
  'tax_code': TaxCode.fromJson,
  'tax_id': TaxId.fromJson,
  'tax_rate': TaxRate.fromJson,
  'terminal.configuration': TerminalConfiguration.fromJson,
  'terminal.connection_token': TerminalConnectionToken.fromJson,
  'terminal.location': TerminalLocation.fromJson,
  'terminal.reader': TerminalReader.fromJson,
  'test_helpers.test_clock': TestHelpersTestClock.fromJson,
  'token': Token.fromJson,
  'topup': Topup.fromJson,
  'transfer': Transfer.fromJson,
  'transfer_reversal': TransferReversal.fromJson,
  'treasury.credit_reversal': TreasuryCreditReversal.fromJson,
  'treasury.debit_reversal': TreasuryDebitReversal.fromJson,
  'treasury.financial_account': TreasuryFinancialAccount.fromJson,
  'treasury.financial_account_features':
      TreasuryFinancialAccountFeatures.fromJson,
  'treasury.inbound_transfer': TreasuryInboundTransfer.fromJson,
  'treasury.outbound_payment': TreasuryOutboundPayment.fromJson,
  'treasury.outbound_transfer': TreasuryOutboundTransfer.fromJson,
  'treasury.received_credit': TreasuryReceivedCredit.fromJson,
  'treasury.received_debit': TreasuryReceivedDebit.fromJson,
  'treasury.transaction': TreasuryTransaction.fromJson,
  'treasury.transaction_entry': TreasuryTransactionEntry.fromJson,
  'usage_record': UsageRecord.fromJson,
  'usage_record_summary': UsageRecordSummary.fromJson,
  'webhook_endpoint': WebhookEndpoint.fromJson,
};

void testApiClient(StripeApiClient client) {
  test('delete account', () async {
    const id = 'acct_1OPouMJN5vQBdWEx';
    await check(client.v1.accounts.delete(account: id)).completes();
  });
  test('retrieve account', () async {
    await check(client.v1.account.retrieve()).completes();
  });
  test('list account', () async {
    await check(client.v1.accounts.list()).completes();
  });
  test('retrieve account', () async {
    const id = 'acct_1OPouMJN5vQBdWEx';
    await check(client.v1.accounts.retrieve(account: id)).completes();
  });
  test('delete apple_pay_domain', () async {
    const id = 'apwc_1OPoujJN5vQBdWExuvzAhTDs';
    await check(client.v1.applePay.domains.delete(domain: id)).completes();
  });
  test('list apple_pay_domain', () async {
    await check(client.v1.applePay.domains.list()).completes();
  });
  test('retrieve apple_pay_domain', () async {
    const id = 'apwc_1OPoujJN5vQBdWExuvzAhTDs';
    await check(client.v1.applePay.domains.retrieve(domain: id)).completes();
  });
  test('list application_fee', () async {
    await check(client.v1.applicationFees.list()).completes();
  });
  test('retrieve application_fee', () async {
    const id = 'fee_1OPounJN5vQBdWExWgwi95uU';
    await check(client.v1.applicationFees.retrieve(id: id)).completes();
  });
  test('retrieve balance', () async {
    await check(client.v1.balance.retrieve()).completes();
  });
  test('list balance_transaction', () async {
    await check(client.v1.balanceTransactions.list()).completes();
  });
  test('retrieve balance_transaction', () async {
    const id = 'txn_1OPoueJN5vQBdWEx8dhHMVqh';
    await check(client.v1.balanceTransactions.retrieve(id: id)).completes();
  });
  test('list billing_portal.configuration', () async {
    await check(client.v1.billingPortal.configurations.list()).completes();
  });
  test('retrieve billing_portal.configuration', () async {
    const id = 'bpc_1OPouvJN5vQBdWEx6dSG6gsf';
    await check(
            client.v1.billingPortal.configurations.retrieve(configuration: id))
        .completes();
  });
  test('list charge', () async {
    await check(client.v1.charges.list()).completes();
  });
  test('retrieve charge', () async {
    const id = 'ch_1OPoueJN5vQBdWEx5AWizjSY';
    await check(client.v1.charges.retrieve(charge: id)).completes();
  });
  test('list checkout.session', () async {
    await check(client.v1.checkout.sessions.list()).completes();
  });
  test('retrieve checkout.session', () async {
    const id =
        'cs_test_a12et9VnHfV9NETJktvuOmVoyrOB40recOCQWiVNeDlBe4IqxEIRNi1Qdf';
    await check(client.v1.checkout.sessions.retrieve(session: id)).completes();
  });
  test('list climate.order', () async {
    await check(client.v1.climate.orders.list()).completes();
  });
  test('retrieve climate.order', () async {
    const id = 'climorder_1OPouwJN5vQBdWExXDtawOMl';
    await check(client.v1.climate.orders.retrieve(order: id)).completes();
  });
  test('list climate.product', () async {
    await check(client.v1.climate.products.list()).completes();
  });
  test('retrieve climate.product', () async {
    const id = 'climsku_frontier_offtake_portfolio_2027';
    await check(client.v1.climate.products.retrieve(product: id)).completes();
  });
  test('list climate.supplier', () async {
    await check(client.v1.climate.suppliers.list()).completes();
  });
  test('retrieve climate.supplier', () async {
    const id = 'climsup_charm_industrial';
    await check(client.v1.climate.suppliers.retrieve(supplier: id)).completes();
  });
  test('list country_spec', () async {
    await check(client.v1.countrySpecs.list()).completes();
  });
  test('retrieve country_spec', () async {
    const id = 'US';
    await check(client.v1.countrySpecs.retrieve(country: id)).completes();
  });
  test('delete coupon', () async {
    const id = 'Z4OV52SU';
    await check(client.v1.coupons.delete(coupon: id)).completes();
  });
  test('list coupon', () async {
    await check(client.v1.coupons.list()).completes();
  });
  test('retrieve coupon', () async {
    const id = 'Z4OV52SU';
    await check(client.v1.coupons.retrieve(coupon: id)).completes();
  });
  test('list credit_note', () async {
    await check(client.v1.creditNotes.list()).completes();
  });
  test('retrieve credit_note', () async {
    const id = 'cn_1OPouvJN5vQBdWExIhfxzf67';
    await check(client.v1.creditNotes.retrieve(id: id)).completes();
  });
  test('delete customer', () async {
    const id = 'cus_PEHTtYpY7elppN';
    await check(client.v1.customers.delete(customer: id)).completes();
  });
  test('list customer', () async {
    await check(client.v1.customers.list()).completes();
  });
  test('retrieve customer', () async {
    const id = 'cus_PEHTtYpY7elppN';
    await check(client.v1.customers.retrieve(customer: id)).completes();
  });
  test('list dispute', () async {
    await check(client.v1.disputes.list()).completes();
  });
  test('retrieve dispute', () async {
    const id = 'dp_1OPoujJN5vQBdWExZXzZC5oN';
    await check(client.v1.disputes.retrieve(dispute: id)).completes();
  });
  test('delete ephemeral_key', () async {
    const id = 'ephkey_1OPouuJN5vQBdWExzc5yUxlO';
    await check(client.v1.ephemeralKeys.delete(key: id)).completes();
  });
  test('list event', () async {
    await check(client.v1.events.list()).completes();
  });
  test('retrieve event', () async {
    const id = 'evt_1OPouqJN5vQBdWExgxCYZfvK';
    await check(client.v1.events.retrieve(id: id)).completes();
  });
  test('list exchange_rate', () async {
    await check(client.v1.exchangeRates.list()).completes();
  });
  test('retrieve exchange_rate', () async {
    const id = 'rate_7573642d636164';
    await check(client.v1.exchangeRates.retrieve(rateId: id)).completes();
  });
  test('list file', () async {
    await check(client.v1.files.list()).completes();
  });
  test('retrieve file', () async {
    const id = 'file_1OPouvJN5vQBdWExSL8Knl9d';
    await check(client.v1.files.retrieve(file: id)).completes();
  });
  test('list file_link', () async {
    await check(client.v1.fileLinks.list()).completes();
  });
  test('retrieve file_link', () async {
    const id = 'link_1OPouvJN5vQBdWEx8Hbtu72Q';
    await check(client.v1.fileLinks.retrieve(link: id)).completes();
  });
  test('list financial_connections.account', () async {
    await check(client.v1.financialConnections.accounts.list()).completes();
  });
  test('retrieve financial_connections.account', () async {
    const id = 'fca_1OPouwJN5vQBdWExZJ9BIvU6';
    await check(client.v1.financialConnections.accounts.retrieve(account: id))
        .completes();
  });
  test('retrieve financial_connections.session', () async {
    const id = 'fcsess_1OPouvJN5vQBdWExDs9PPkmC';
    await check(client.v1.financialConnections.sessions.retrieve(session: id))
        .completes();
  });
  test('retrieve financial_connections.transaction', () async {
    const id = 'fctxn_1OPouwJN5vQBdWExrPGADkLG';
    await check(client.v1.financialConnections.transactions
            .retrieve(transaction: id))
        .completes();
  });
  test('list identity.verification_report', () async {
    await check(client.v1.identity.verificationReports.list()).completes();
  });
  test('retrieve identity.verification_report', () async {
    const id = 'vr_1OPouwJN5vQBdWExD3MD40Gc';
    await check(client.v1.identity.verificationReports.retrieve(report: id))
        .completes();
  });
  test('list identity.verification_session', () async {
    await check(client.v1.identity.verificationSessions.list()).completes();
  });
  test('retrieve identity.verification_session', () async {
    const id = 'vs_1OPouwJN5vQBdWExwnxAiDeP';
    await check(client.v1.identity.verificationSessions.retrieve(session: id))
        .completes();
  });
  test('delete invoice', () async {
    const id = 'in_1OPouhJN5vQBdWExQl3czOuP';
    await check(client.v1.invoices.delete(invoice: id)).completes();
  });
  test('list invoice', () async {
    await check(client.v1.invoices.list()).completes();
  });
  test('retrieve invoice', () async {
    const id = 'in_1OPouhJN5vQBdWExQl3czOuP';
    await check(client.v1.invoices.retrieve(invoice: id)).completes();
  });
  test('delete invoiceitem', () async {
    const id = 'ii_1OPoulJN5vQBdWExKaAxodMb';
    await check(client.v1.invoiceitems.delete(invoiceitem: id)).completes();
  });
  test('list invoiceitem', () async {
    await check(client.v1.invoiceitems.list()).completes();
  });
  test('retrieve invoiceitem', () async {
    const id = 'ii_1OPoulJN5vQBdWExKaAxodMb';
    await check(client.v1.invoiceitems.retrieve(invoiceitem: id)).completes();
  });
  test('list issuing.authorization', () async {
    await check(client.v1.issuing.authorizations.list()).completes();
  });
  test('retrieve issuing.authorization', () async {
    const id = 'iauth_1OPouuJN5vQBdWExzEwVqbW3';
    await check(client.v1.issuing.authorizations.retrieve(authorization: id))
        .completes();
  });
  test('list issuing.card', () async {
    await check(client.v1.issuing.cards.list()).completes();
  });
  test('retrieve issuing.card', () async {
    const id = 'ic_1OPouuJN5vQBdWExIoXsQoxc';
    await check(client.v1.issuing.cards.retrieve(card: id)).completes();
  });
  test('list issuing.cardholder', () async {
    await check(client.v1.issuing.cardholders.list()).completes();
  });
  test('retrieve issuing.cardholder', () async {
    const id = 'ich_1OPouuJN5vQBdWExwzpyb2cp';
    await check(client.v1.issuing.cardholders.retrieve(cardholder: id))
        .completes();
  });
  test('list issuing.dispute', () async {
    await check(client.v1.issuing.disputes.list()).completes();
  });
  test('retrieve issuing.dispute', () async {
    const id = 'idp_1OPouuJN5vQBdWEx0fS3VE9m';
    await check(client.v1.issuing.disputes.retrieve(dispute: id)).completes();
  });
  test('list issuing.personalization_design', () async {
    await check(client.v1.issuing.personalizationDesigns.list()).completes();
  });
  test('retrieve issuing.personalization_design', () async {
    const id = 'ipcd_PjUvzGEbcbtY8U';
    await check(client.v1.issuing.personalizationDesigns
            .retrieve(personalizationDesign: id))
        .completes();
  });
  test('list issuing.physical_bundle', () async {
    await check(client.v1.issuing.physicalBundles.list()).completes();
  });
  test('retrieve issuing.physical_bundle', () async {
    const id = 'ics_PjUv222Xszs9R1';
    await check(client.v1.issuing.physicalBundles.retrieve(physicalBundle: id))
        .completes();
  });
  test('retrieve issuing.token', () async {
    const id = 'intok_1OPouuJN5vQBdWEx5hqkGy26';
    await check(client.v1.issuing.tokens.retrieve(token: id)).completes();
  });
  test('list issuing.transaction', () async {
    await check(client.v1.issuing.transactions.list()).completes();
  });
  test('retrieve issuing.transaction', () async {
    const id = 'ipi_1OPouuJN5vQBdWEx9u49EzoG';
    await check(client.v1.issuing.transactions.retrieve(transaction: id))
        .completes();
  });
  test('retrieve mandate', () async {
    const id = 'mandate_1OPoutJN5vQBdWExCvI7QJ24';
    await check(client.v1.mandates.retrieve(mandate: id)).completes();
  });
  test('list payment_intent', () async {
    await check(client.v1.paymentIntents.list()).completes();
  });
  test('retrieve payment_intent', () async {
    const id = 'pi_1OPougJN5vQBdWEx8s2Dj0YR';
    await check(client.v1.paymentIntents.retrieve(intent: id)).completes();
  });
  test('list payment_link', () async {
    await check(client.v1.paymentLinks.list()).completes();
  });
  test('retrieve payment_link', () async {
    const id = 'plink_1OPoutJN5vQBdWExHKI59Qwy';
    await check(client.v1.paymentLinks.retrieve(paymentLink: id)).completes();
  });
  test('list payment_method', () async {
    await check(client.v1.paymentMethods.list()).completes();
  });
  test('retrieve payment_method', () async {
    const id = 'pm_1OPoukJN5vQBdWEx0hPok3pj';
    await check(client.v1.paymentMethods.retrieve(paymentMethod: id))
        .completes();
  });
  test('list payment_method_configuration', () async {
    await check(client.v1.paymentMethodConfigurations.list()).completes();
  });
  test('retrieve payment_method_configuration', () async {
    const id = 'pmc_1OPouxJN5vQBdWExE4OpJOVG';
    await check(
            client.v1.paymentMethodConfigurations.retrieve(configuration: id))
        .completes();
  });
  test('list payment_method_domain', () async {
    await check(client.v1.paymentMethodDomains.list()).completes();
  });
  test('retrieve payment_method_domain', () async {
    const id = 'pmd_1OPouyJN5vQBdWExgldeVH07';
    await check(
            client.v1.paymentMethodDomains.retrieve(paymentMethodDomain: id))
        .completes();
  });
  test('list payout', () async {
    await check(client.v1.payouts.list()).completes();
  });
  test('retrieve payout', () async {
    const id = 'po_1OPounJN5vQBdWExyK5eT2UD';
    await check(client.v1.payouts.retrieve(payout: id)).completes();
  });
  test('delete plan', () async {
    const id = 'price_1OPouiJN5vQBdWExAQaqTooZ';
    await check(client.v1.plans.delete(plan: id)).completes();
  });
  test('list plan', () async {
    await check(client.v1.plans.list()).completes();
  });
  test('retrieve plan', () async {
    const id = 'price_1OPouiJN5vQBdWExAQaqTooZ';
    await check(client.v1.plans.retrieve(plan: id)).completes();
  });
  test('list price', () async {
    await check(client.v1.prices.list()).completes();
  });
  test('retrieve price', () async {
    const id = 'price_1OPouiJN5vQBdWExAQaqTooZ';
    await check(client.v1.prices.retrieve(price: id)).completes();
  });
  test('list promotion_code', () async {
    await check(client.v1.promotionCodes.list()).completes();
  });
  test('retrieve promotion_code', () async {
    const id = 'promo_1OPoumJN5vQBdWExho5DMMcC';
    await check(client.v1.promotionCodes.retrieve(promotionCode: id))
        .completes();
  });
  test('list quote', () async {
    await check(client.v1.quotes.list()).completes();
  });
  test('retrieve quote', () async {
    const id = 'qt_1OPoumJN5vQBdWExJFNWX8UZ';
    await check(client.v1.quotes.retrieve(quote: id)).completes();
  });
  test('list radar.early_fraud_warning', () async {
    await check(client.v1.radar.earlyFraudWarnings.list()).completes();
  });
  test('retrieve radar.early_fraud_warning', () async {
    const id = 'issfr_1OPouuJN5vQBdWEx1nfPQnik';
    await check(
            client.v1.radar.earlyFraudWarnings.retrieve(earlyFraudWarning: id))
        .completes();
  });
  test('delete radar.value_list', () async {
    const id = 'rsl_1OPouuJN5vQBdWExWiMNdstK';
    await check(client.v1.radar.valueLists.delete(valueList: id)).completes();
  });
  test('list radar.value_list', () async {
    await check(client.v1.radar.valueLists.list()).completes();
  });
  test('retrieve radar.value_list', () async {
    const id = 'rsl_1OPouuJN5vQBdWExWiMNdstK';
    await check(client.v1.radar.valueLists.retrieve(valueList: id)).completes();
  });
  test('delete radar.value_list_item', () async {
    const id = 'rsli_1OPouuJN5vQBdWExu3DMfSOX';
    await check(client.v1.radar.valueListItems.delete(item: id)).completes();
  });
  test('retrieve radar.value_list_item', () async {
    const id = 'rsli_1OPouuJN5vQBdWExu3DMfSOX';
    await check(client.v1.radar.valueListItems.retrieve(item: id)).completes();
  });
  test('list refund', () async {
    await check(client.v1.refunds.list()).completes();
  });
  test('retrieve refund', () async {
    const id = 're_1OPoujJN5vQBdWExUGBANu1j';
    await check(client.v1.refunds.retrieve(refund: id)).completes();
  });
  test('list reporting.report_run', () async {
    await check(client.v1.reporting.reportRuns.list()).completes();
  });
  test('retrieve reporting.report_run', () async {
    const id = 'frr_1OPouvJN5vQBdWExgodnLu30';
    await check(client.v1.reporting.reportRuns.retrieve(reportRun: id))
        .completes();
  });
  test('list reporting.report_type', () async {
    await check(client.v1.reporting.reportTypes.list()).completes();
  });
  test('retrieve reporting.report_type', () async {
    const id = 'balance.summary.1';
    await check(client.v1.reporting.reportTypes.retrieve(reportType: id))
        .completes();
  });
  test('list review', () async {
    await check(client.v1.reviews.list()).completes();
  });
  test('retrieve review', () async {
    const id = 'prv_1OPouuJN5vQBdWExaP70CbXQ';
    await check(client.v1.reviews.retrieve(review: id)).completes();
  });
  test('list scheduled_query_run', () async {
    await check(client.v1.sigma.scheduledQueryRuns.list()).completes();
  });
  test('retrieve scheduled_query_run', () async {
    const id = 'sqr_1OPouvJN5vQBdWExYriJptnl';
    await check(
            client.v1.sigma.scheduledQueryRuns.retrieve(scheduledQueryRun: id))
        .completes();
  });
  test('list setup_intent', () async {
    await check(client.v1.setupIntents.list()).completes();
  });
  test('retrieve setup_intent', () async {
    const id = 'seti_1OPoutJN5vQBdWExijPulwWI';
    await check(client.v1.setupIntents.retrieve(intent: id)).completes();
  });
  test('list shipping_rate', () async {
    await check(client.v1.shippingRates.list()).completes();
  });
  test('retrieve shipping_rate', () async {
    const id = 'shr_1OPoutJN5vQBdWExTw0yZ1uf';
    await check(client.v1.shippingRates.retrieve(shippingRateToken: id))
        .completes();
  });
  test('retrieve source', () async {
    const id = 'src_1OPoumJN5vQBdWExvde7Hv2e';
    await check(client.v1.sources.retrieve(source: id)).completes();
  });
  test('list tax.registration', () async {
    await check(client.v1.tax.registrations.list()).completes();
  });
  test('retrieve tax.registration', () async {
    const id = 'taxreg_PEHTqoThMP4gyv';
    await check(client.v1.tax.registrations.retrieve(id: id)).completes();
  });
  test('retrieve tax.settings', () async {
    await check(client.v1.tax.settings.retrieve()).completes();
  });
  test('retrieve tax.transaction', () async {
    const id = 'tax_1OPouwJN5vQBdWExb4Vlgfcu';
    await check(client.v1.tax.transactions.retrieve(transaction: id))
        .completes();
  });
  test('list tax_code', () async {
    await check(client.v1.taxCodes.list()).completes();
  });
  test('retrieve tax_code', () async {
    const id = 'txcd_99999999';
    await check(client.v1.taxCodes.retrieve(id: id)).completes();
  });
  test('delete tax_id', () async {
    const id = 'txi_1OPouvJN5vQBdWExlr1piCRz';
    await check(client.v1.taxIds.delete(id: id)).completes();
  });
  test('list tax_id', () async {
    await check(client.v1.taxIds.list()).completes();
  });
  test('retrieve tax_id', () async {
    const id = 'txi_1OPouvJN5vQBdWExlr1piCRz';
    await check(client.v1.taxIds.retrieve(id: id)).completes();
  });
  test('list tax_rate', () async {
    await check(client.v1.taxRates.list()).completes();
  });
  test('retrieve tax_rate', () async {
    const id = 'txr_1OPoulJN5vQBdWExFxem94NU';
    await check(client.v1.taxRates.retrieve(taxRate: id)).completes();
  });
  test('delete terminal.configuration', () async {
    const id = 'tmc_ElVUAjF8xXG3hj';
    await check(client.v1.terminal.configurations.delete(configuration: id))
        .completes();
  });
  test('list terminal.configuration', () async {
    await check(client.v1.terminal.configurations.list()).completes();
  });
  test('retrieve terminal.configuration', () async {
    const id = 'tmc_ElVUAjF8xXG3hj';
    await check(client.v1.terminal.configurations.retrieve(configuration: id))
        .completes();
  });
  test('delete terminal.location', () async {
    const id = 'tml_NGBMEGFknv9VbAajaGp51lDl';
    await check(client.v1.terminal.locations.delete(location: id)).completes();
  });
  test('list terminal.location', () async {
    await check(client.v1.terminal.locations.list()).completes();
  });
  test('retrieve terminal.location', () async {
    const id = 'tml_NGBMEGFknv9VbAajaGp51lDl';
    await check(client.v1.terminal.locations.retrieve(location: id))
        .completes();
  });
  test('delete terminal.reader', () async {
    const id = 'tmr_BKknTibEn0JgG9fJJXUV93Wy';
    await check(client.v1.terminal.readers.delete(reader: id)).completes();
  });
  test('list terminal.reader', () async {
    await check(client.v1.terminal.readers.list()).completes();
  });
  test('retrieve terminal.reader', () async {
    const id = 'tmr_BKknTibEn0JgG9fJJXUV93Wy';
    await check(client.v1.terminal.readers.retrieve(reader: id)).completes();
  });
  test('delete test_helpers.test_clock', () async {
    const id = 'clock_1OPoumJN5vQBdWEx6P81PQHY';
    await check(client.v1.testHelpers.testClocks.delete(testClock: id))
        .completes();
  });
  test('list test_helpers.test_clock', () async {
    await check(client.v1.testHelpers.testClocks.list()).completes();
  });
  test('retrieve test_helpers.test_clock', () async {
    const id = 'clock_1OPoumJN5vQBdWEx6P81PQHY';
    await check(client.v1.testHelpers.testClocks.retrieve(testClock: id))
        .completes();
  });
  test('retrieve token', () async {
    const id = 'tok_1OPoulJN5vQBdWExS6soPfIn';
    await check(client.v1.tokens.retrieve(token: id)).completes();
  });
  test('list topup', () async {
    await check(client.v1.topups.list()).completes();
  });
  test('retrieve topup', () async {
    const id = 'tu_1OPounJN5vQBdWExFC5ZOuYf';
    await check(client.v1.topups.retrieve(topup: id)).completes();
  });
  test('list transfer', () async {
    await check(client.v1.transfers.list()).completes();
  });
  test('retrieve transfer', () async {
    const id = 'tr_1OPounJN5vQBdWExGHeyZqlt';
    await check(client.v1.transfers.retrieve(transfer: id)).completes();
  });
  test('retrieve treasury.credit_reversal', () async {
    const id = 'credrev_1OPouxJN5vQBdWExm49he8ue';
    await check(client.v1.treasury.creditReversals.retrieve(creditReversal: id))
        .completes();
  });
  test('retrieve treasury.debit_reversal', () async {
    const id = 'debrev_1OPouxJN5vQBdWExZrkJLF3z';
    await check(client.v1.treasury.debitReversals.retrieve(debitReversal: id))
        .completes();
  });
  test('list treasury.financial_account', () async {
    await check(client.v1.treasury.financialAccounts.list()).completes();
  });
  test('retrieve treasury.financial_account', () async {
    const id = 'fa_1OPousJN5vQBdWEx4bT8ilJV';
    await check(
            client.v1.treasury.financialAccounts.retrieve(financialAccount: id))
        .completes();
  });
  test('retrieve treasury.inbound_transfer', () async {
    const id = 'ibt_1OPouxJN5vQBdWExcKHR4iQ8';
    await check(client.v1.treasury.inboundTransfers.retrieve(id: id))
        .completes();
  });
  test('retrieve treasury.outbound_transfer', () async {
    const id = 'obt_1OPouxJN5vQBdWExpjuwR2Xd';
    await check(
            client.v1.treasury.outboundTransfers.retrieve(outboundTransfer: id))
        .completes();
  });
  test('retrieve treasury.received_credit', () async {
    const id = 'rc_1OPouxJN5vQBdWExlRb8gNBH';
    await check(client.v1.treasury.receivedCredits.retrieve(id: id))
        .completes();
  });
  test('retrieve treasury.received_debit', () async {
    const id = 'rd_1OPouxJN5vQBdWExcQ4JcpiH';
    await check(client.v1.treasury.receivedDebits.retrieve(id: id)).completes();
  });
  test('retrieve treasury.transaction', () async {
    const id = 'trxn_1OPousJN5vQBdWExS2LKXVAv';
    await check(client.v1.treasury.transactions.retrieve(id: id)).completes();
  });
  test('retrieve treasury.transaction_entry', () async {
    const id = 'trxne_1OPouxJN5vQBdWExvDiJTOkM';
    await check(client.v1.treasury.transactionEntries.retrieve(id: id))
        .completes();
  });
  test('delete webhook_endpoint', () async {
    const id = 'we_1OPouqJN5vQBdWEx9Xl0KCo3';
    await check(client.v1.webhookEndpoints.delete(webhookEndpoint: id))
        .completes();
  });
  test('list webhook_endpoint', () async {
    await check(client.v1.webhookEndpoints.list()).completes();
  });
  test('retrieve webhook_endpoint', () async {
    const id = 'we_1OPouqJN5vQBdWEx9Xl0KCo3';
    await check(client.v1.webhookEndpoints.retrieve(webhookEndpoint: id))
        .completes();
  });
}
