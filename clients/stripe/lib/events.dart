// ignore_for_file: type=lint, unused_local_variable, unnecessary_cast, unnecessary_import

part of 'models.dart';

/// Occurs whenever a user authorizes an application. Sent to the related application only.
final class AccountApplicationAuthorizedEvent implements StripeEvent {
  /// Occurs whenever a user authorizes an application. Sent to the related application only.
  const AccountApplicationAuthorizedEvent({required this.object});

  factory AccountApplicationAuthorizedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return AccountApplicationAuthorizedEvent(
        object: Application.fromJson(map['object']));
  }

  final Application object;

  final String type = 'account.application.authorized';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    AccountApplicationAuthorizedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Application.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'account.application.authorized',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('AccountApplicationAuthorizedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a user deauthorizes an application. Sent to the related application only.
final class AccountApplicationDeauthorizedEvent implements StripeEvent {
  /// Occurs whenever a user deauthorizes an application. Sent to the related application only.
  const AccountApplicationDeauthorizedEvent({required this.object});

  factory AccountApplicationDeauthorizedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return AccountApplicationDeauthorizedEvent(
        object: Application.fromJson(map['object']));
  }

  final Application object;

  final String type = 'account.application.deauthorized';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    AccountApplicationDeauthorizedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Application.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'account.application.deauthorized',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('AccountApplicationDeauthorizedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

sealed class AccountExternalAccountCreatedEventObject {
  const AccountExternalAccountCreatedEventObject();

  factory AccountExternalAccountCreatedEventObject.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    final type = (map['object'] as String);
    final factory = $mapping[type];
    if (factory == null) {
      throw ArgumentError(
          'Unknown type of AccountExternalAccountCreatedEventObject: "$type"');
    }
    return factory(map);
  }

  static const Map<String,
      AccountExternalAccountCreatedEventObject Function(Object?)> $mapping = {
    'bank_account': BankAccount.fromJson,
    'card': Card.fromJson,
    'source': Source.fromJson,
  };

  String get object;
  Map<String, Object?> toJson();
  static V encode<V>(
    AccountExternalAccountCreatedEventObject instance,
    Encoder<V> encoder,
  ) {
    return instance.encodeWith(encoder);
  }

  V encodeWith<V>(Encoder<V> encoder);
}

/// Occurs whenever an external account is created.
final class AccountExternalAccountCreatedEvent implements StripeEvent {
  /// Occurs whenever an external account is created.
  const AccountExternalAccountCreatedEvent({required this.object});

  factory AccountExternalAccountCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return AccountExternalAccountCreatedEvent(
        object:
            AccountExternalAccountCreatedEventObject.fromJson(map['object']));
  }

  final AccountExternalAccountCreatedEventObject object;

  final String type = 'account.external_account.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    AccountExternalAccountCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    AccountExternalAccountCreatedEventObject.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'account.external_account.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('AccountExternalAccountCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an external account is deleted.
final class AccountExternalAccountDeletedEvent implements StripeEvent {
  /// Occurs whenever an external account is deleted.
  const AccountExternalAccountDeletedEvent({required this.object});

  factory AccountExternalAccountDeletedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return AccountExternalAccountDeletedEvent(
        object:
            AccountExternalAccountCreatedEventObject.fromJson(map['object']));
  }

  final AccountExternalAccountCreatedEventObject object;

  final String type = 'account.external_account.deleted';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    AccountExternalAccountDeletedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    AccountExternalAccountCreatedEventObject.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'account.external_account.deleted',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('AccountExternalAccountDeletedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an external account is updated.
final class AccountExternalAccountUpdatedEvent implements StripeEvent {
  /// Occurs whenever an external account is updated.
  const AccountExternalAccountUpdatedEvent({required this.object});

  factory AccountExternalAccountUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return AccountExternalAccountUpdatedEvent(
        object:
            AccountExternalAccountCreatedEventObject.fromJson(map['object']));
  }

  final AccountExternalAccountCreatedEventObject object;

  final String type = 'account.external_account.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    AccountExternalAccountUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    AccountExternalAccountCreatedEventObject.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'account.external_account.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('AccountExternalAccountUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an account status or property has changed.
final class AccountUpdatedEvent implements StripeEvent {
  /// Occurs whenever an account status or property has changed.
  const AccountUpdatedEvent({required this.object});

  factory AccountUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return AccountUpdatedEvent(object: Account.fromJson(map['object']));
  }

  final Account object;

  final String type = 'account.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    AccountUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Account.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'account.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('AccountUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an application fee is created on a charge.
final class ApplicationFeeCreatedEvent implements StripeEvent {
  /// Occurs whenever an application fee is created on a charge.
  const ApplicationFeeCreatedEvent({required this.object});

  factory ApplicationFeeCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return ApplicationFeeCreatedEvent(
        object: ApplicationFee.fromJson(map['object']));
  }

  final ApplicationFee object;

  final String type = 'application_fee.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    ApplicationFeeCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    ApplicationFee.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'application_fee.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('ApplicationFeeCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an application fee refund is updated.
final class ApplicationFeeRefundUpdatedEvent implements StripeEvent {
  /// Occurs whenever an application fee refund is updated.
  const ApplicationFeeRefundUpdatedEvent({required this.object});

  factory ApplicationFeeRefundUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return ApplicationFeeRefundUpdatedEvent(
        object: FeeRefund.fromJson(map['object']));
  }

  final FeeRefund object;

  final String type = 'application_fee.refund.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    ApplicationFeeRefundUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    FeeRefund.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'application_fee.refund.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('ApplicationFeeRefundUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an application fee is refunded, whether from refunding a charge or from \[refunding the application fee directly\](#fee_refunds). This includes partial refunds.
final class ApplicationFeeRefundedEvent implements StripeEvent {
  /// Occurs whenever an application fee is refunded, whether from refunding a charge or from \[refunding the application fee directly\](#fee_refunds). This includes partial refunds.
  const ApplicationFeeRefundedEvent({required this.object});

  factory ApplicationFeeRefundedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return ApplicationFeeRefundedEvent(
        object: ApplicationFee.fromJson(map['object']));
  }

  final ApplicationFee object;

  final String type = 'application_fee.refunded';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    ApplicationFeeRefundedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    ApplicationFee.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'application_fee.refunded',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('ApplicationFeeRefundedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever your Stripe balance has been updated (e.g., when a charge is available to be paid out). By default, Stripe automatically transfers funds in your balance to your bank account on a daily basis. This event is not fired for negative transactions.
final class BalanceAvailableEvent implements StripeEvent {
  /// Occurs whenever your Stripe balance has been updated (e.g., when a charge is available to be paid out). By default, Stripe automatically transfers funds in your balance to your bank account on a daily basis. This event is not fired for negative transactions.
  const BalanceAvailableEvent({required this.object});

  factory BalanceAvailableEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return BalanceAvailableEvent(object: Balance.fromJson(map['object']));
  }

  final Balance object;

  final String type = 'balance.available';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    BalanceAvailableEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Balance.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'balance.available',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('BalanceAvailableEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a portal configuration is created.
final class BillingPortalConfigurationCreatedEvent implements StripeEvent {
  /// Occurs whenever a portal configuration is created.
  const BillingPortalConfigurationCreatedEvent({required this.object});

  factory BillingPortalConfigurationCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return BillingPortalConfigurationCreatedEvent(
        object: BillingPortalConfiguration.fromJson(map['object']));
  }

  final BillingPortalConfiguration object;

  final String type = 'billing_portal.configuration.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    BillingPortalConfigurationCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    BillingPortalConfiguration.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'billing_portal.configuration.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('BillingPortalConfigurationCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a portal configuration is updated.
final class BillingPortalConfigurationUpdatedEvent implements StripeEvent {
  /// Occurs whenever a portal configuration is updated.
  const BillingPortalConfigurationUpdatedEvent({required this.object});

  factory BillingPortalConfigurationUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return BillingPortalConfigurationUpdatedEvent(
        object: BillingPortalConfiguration.fromJson(map['object']));
  }

  final BillingPortalConfiguration object;

  final String type = 'billing_portal.configuration.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    BillingPortalConfigurationUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    BillingPortalConfiguration.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'billing_portal.configuration.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('BillingPortalConfigurationUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a portal session is created.
final class BillingPortalSessionCreatedEvent implements StripeEvent {
  /// Occurs whenever a portal session is created.
  const BillingPortalSessionCreatedEvent({required this.object});

  factory BillingPortalSessionCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return BillingPortalSessionCreatedEvent(
        object: BillingPortalSession.fromJson(map['object']));
  }

  final BillingPortalSession object;

  final String type = 'billing_portal.session.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    BillingPortalSessionCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    BillingPortalSession.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'billing_portal.session.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('BillingPortalSessionCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a capability has new requirements or a new status.
final class CapabilityUpdatedEvent implements StripeEvent {
  /// Occurs whenever a capability has new requirements or a new status.
  const CapabilityUpdatedEvent({required this.object});

  factory CapabilityUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return CapabilityUpdatedEvent(object: Capability.fromJson(map['object']));
  }

  final Capability object;

  final String type = 'capability.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    CapabilityUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Capability.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'capability.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('CapabilityUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever there is a positive remaining cash balance after Stripe automatically reconciles new funds into the cash balance. If you enabled manual reconciliation, this webhook will fire whenever there are new funds into the cash balance.
final class CashBalanceFundsAvailableEvent implements StripeEvent {
  /// Occurs whenever there is a positive remaining cash balance after Stripe automatically reconciles new funds into the cash balance. If you enabled manual reconciliation, this webhook will fire whenever there are new funds into the cash balance.
  const CashBalanceFundsAvailableEvent({required this.object});

  factory CashBalanceFundsAvailableEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return CashBalanceFundsAvailableEvent(
        object: CashBalance.fromJson(map['object']));
  }

  final CashBalance object;

  final String type = 'cash_balance.funds_available';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    CashBalanceFundsAvailableEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    CashBalance.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'cash_balance.funds_available',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('CashBalanceFundsAvailableEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a previously uncaptured charge is captured.
final class ChargeCapturedEvent implements StripeEvent {
  /// Occurs whenever a previously uncaptured charge is captured.
  const ChargeCapturedEvent({required this.object});

  factory ChargeCapturedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return ChargeCapturedEvent(object: Charge.fromJson(map['object']));
  }

  final Charge object;

  final String type = 'charge.captured';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    ChargeCapturedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Charge.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'charge.captured',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('ChargeCapturedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs when a dispute is closed and the dispute status changes to \`lost\`, \`warning_closed\`, or \`won\`.
final class ChargeDisputeClosedEvent implements StripeEvent {
  /// Occurs when a dispute is closed and the dispute status changes to \`lost\`, \`warning_closed\`, or \`won\`.
  const ChargeDisputeClosedEvent({required this.object});

  factory ChargeDisputeClosedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return ChargeDisputeClosedEvent(object: Dispute.fromJson(map['object']));
  }

  final Dispute object;

  final String type = 'charge.dispute.closed';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    ChargeDisputeClosedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Dispute.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'charge.dispute.closed',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('ChargeDisputeClosedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a customer disputes a charge with their bank.
final class ChargeDisputeCreatedEvent implements StripeEvent {
  /// Occurs whenever a customer disputes a charge with their bank.
  const ChargeDisputeCreatedEvent({required this.object});

  factory ChargeDisputeCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return ChargeDisputeCreatedEvent(object: Dispute.fromJson(map['object']));
  }

  final Dispute object;

  final String type = 'charge.dispute.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    ChargeDisputeCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Dispute.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'charge.dispute.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('ChargeDisputeCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs when funds are reinstated to your account after a dispute is closed. This includes \[partially refunded payments\](/docs/disputes#disputes-on-partially-refunded-payments).
final class ChargeDisputeFundsReinstatedEvent implements StripeEvent {
  /// Occurs when funds are reinstated to your account after a dispute is closed. This includes \[partially refunded payments\](/docs/disputes#disputes-on-partially-refunded-payments).
  const ChargeDisputeFundsReinstatedEvent({required this.object});

  factory ChargeDisputeFundsReinstatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return ChargeDisputeFundsReinstatedEvent(
        object: Dispute.fromJson(map['object']));
  }

  final Dispute object;

  final String type = 'charge.dispute.funds_reinstated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    ChargeDisputeFundsReinstatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Dispute.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'charge.dispute.funds_reinstated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('ChargeDisputeFundsReinstatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs when funds are removed from your account due to a dispute.
final class ChargeDisputeFundsWithdrawnEvent implements StripeEvent {
  /// Occurs when funds are removed from your account due to a dispute.
  const ChargeDisputeFundsWithdrawnEvent({required this.object});

  factory ChargeDisputeFundsWithdrawnEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return ChargeDisputeFundsWithdrawnEvent(
        object: Dispute.fromJson(map['object']));
  }

  final Dispute object;

  final String type = 'charge.dispute.funds_withdrawn';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    ChargeDisputeFundsWithdrawnEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Dispute.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'charge.dispute.funds_withdrawn',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('ChargeDisputeFundsWithdrawnEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs when the dispute is updated (usually with evidence).
final class ChargeDisputeUpdatedEvent implements StripeEvent {
  /// Occurs when the dispute is updated (usually with evidence).
  const ChargeDisputeUpdatedEvent({required this.object});

  factory ChargeDisputeUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return ChargeDisputeUpdatedEvent(object: Dispute.fromJson(map['object']));
  }

  final Dispute object;

  final String type = 'charge.dispute.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    ChargeDisputeUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Dispute.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'charge.dispute.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('ChargeDisputeUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an uncaptured charge expires.
final class ChargeExpiredEvent implements StripeEvent {
  /// Occurs whenever an uncaptured charge expires.
  const ChargeExpiredEvent({required this.object});

  factory ChargeExpiredEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return ChargeExpiredEvent(object: Charge.fromJson(map['object']));
  }

  final Charge object;

  final String type = 'charge.expired';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    ChargeExpiredEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Charge.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'charge.expired',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('ChargeExpiredEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a failed charge attempt occurs.
final class ChargeFailedEvent implements StripeEvent {
  /// Occurs whenever a failed charge attempt occurs.
  const ChargeFailedEvent({required this.object});

  factory ChargeFailedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return ChargeFailedEvent(object: Charge.fromJson(map['object']));
  }

  final Charge object;

  final String type = 'charge.failed';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    ChargeFailedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Charge.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'charge.failed',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('ChargeFailedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a pending charge is created.
final class ChargePendingEvent implements StripeEvent {
  /// Occurs whenever a pending charge is created.
  const ChargePendingEvent({required this.object});

  factory ChargePendingEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return ChargePendingEvent(object: Charge.fromJson(map['object']));
  }

  final Charge object;

  final String type = 'charge.pending';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    ChargePendingEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Charge.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'charge.pending',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('ChargePendingEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a refund is updated, on selected payment methods.
final class ChargeRefundUpdatedEvent implements StripeEvent {
  /// Occurs whenever a refund is updated, on selected payment methods.
  const ChargeRefundUpdatedEvent({required this.object});

  factory ChargeRefundUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return ChargeRefundUpdatedEvent(object: Refund.fromJson(map['object']));
  }

  final Refund object;

  final String type = 'charge.refund.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    ChargeRefundUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Refund.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'charge.refund.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('ChargeRefundUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a charge is refunded, including partial refunds.
final class ChargeRefundedEvent implements StripeEvent {
  /// Occurs whenever a charge is refunded, including partial refunds.
  const ChargeRefundedEvent({required this.object});

  factory ChargeRefundedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return ChargeRefundedEvent(object: Charge.fromJson(map['object']));
  }

  final Charge object;

  final String type = 'charge.refunded';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    ChargeRefundedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Charge.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'charge.refunded',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('ChargeRefundedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a charge is successful.
final class ChargeSucceededEvent implements StripeEvent {
  /// Occurs whenever a charge is successful.
  const ChargeSucceededEvent({required this.object});

  factory ChargeSucceededEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return ChargeSucceededEvent(object: Charge.fromJson(map['object']));
  }

  final Charge object;

  final String type = 'charge.succeeded';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    ChargeSucceededEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Charge.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'charge.succeeded',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('ChargeSucceededEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a charge description or metadata is updated, or upon an asynchronous capture.
final class ChargeUpdatedEvent implements StripeEvent {
  /// Occurs whenever a charge description or metadata is updated, or upon an asynchronous capture.
  const ChargeUpdatedEvent({required this.object});

  factory ChargeUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return ChargeUpdatedEvent(object: Charge.fromJson(map['object']));
  }

  final Charge object;

  final String type = 'charge.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    ChargeUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Charge.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'charge.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('ChargeUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs when a payment intent using a delayed payment method fails.
final class CheckoutSessionAsyncPaymentFailedEvent implements StripeEvent {
  /// Occurs when a payment intent using a delayed payment method fails.
  const CheckoutSessionAsyncPaymentFailedEvent({required this.object});

  factory CheckoutSessionAsyncPaymentFailedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return CheckoutSessionAsyncPaymentFailedEvent(
        object: CheckoutSession.fromJson(map['object']));
  }

  final CheckoutSession object;

  final String type = 'checkout.session.async_payment_failed';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    CheckoutSessionAsyncPaymentFailedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    CheckoutSession.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'checkout.session.async_payment_failed',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('CheckoutSessionAsyncPaymentFailedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs when a payment intent using a delayed payment method finally succeeds.
final class CheckoutSessionAsyncPaymentSucceededEvent implements StripeEvent {
  /// Occurs when a payment intent using a delayed payment method finally succeeds.
  const CheckoutSessionAsyncPaymentSucceededEvent({required this.object});

  factory CheckoutSessionAsyncPaymentSucceededEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return CheckoutSessionAsyncPaymentSucceededEvent(
        object: CheckoutSession.fromJson(map['object']));
  }

  final CheckoutSession object;

  final String type = 'checkout.session.async_payment_succeeded';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    CheckoutSessionAsyncPaymentSucceededEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    CheckoutSession.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'checkout.session.async_payment_succeeded',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('CheckoutSessionAsyncPaymentSucceededEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs when a Checkout Session has been successfully completed.
final class CheckoutSessionCompletedEvent implements StripeEvent {
  /// Occurs when a Checkout Session has been successfully completed.
  const CheckoutSessionCompletedEvent({required this.object});

  factory CheckoutSessionCompletedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return CheckoutSessionCompletedEvent(
        object: CheckoutSession.fromJson(map['object']));
  }

  final CheckoutSession object;

  final String type = 'checkout.session.completed';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    CheckoutSessionCompletedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    CheckoutSession.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'checkout.session.completed',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('CheckoutSessionCompletedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs when a Checkout Session is expired.
final class CheckoutSessionExpiredEvent implements StripeEvent {
  /// Occurs when a Checkout Session is expired.
  const CheckoutSessionExpiredEvent({required this.object});

  factory CheckoutSessionExpiredEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return CheckoutSessionExpiredEvent(
        object: CheckoutSession.fromJson(map['object']));
  }

  final CheckoutSession object;

  final String type = 'checkout.session.expired';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    CheckoutSessionExpiredEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    CheckoutSession.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'checkout.session.expired',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('CheckoutSessionExpiredEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs when a Climate order is canceled.
final class ClimateOrderCanceledEvent implements StripeEvent {
  /// Occurs when a Climate order is canceled.
  const ClimateOrderCanceledEvent({required this.object});

  factory ClimateOrderCanceledEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return ClimateOrderCanceledEvent(
        object: ClimateOrder.fromJson(map['object']));
  }

  final ClimateOrder object;

  final String type = 'climate.order.canceled';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    ClimateOrderCanceledEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    ClimateOrder.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'climate.order.canceled',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('ClimateOrderCanceledEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs when a Climate order is created.
final class ClimateOrderCreatedEvent implements StripeEvent {
  /// Occurs when a Climate order is created.
  const ClimateOrderCreatedEvent({required this.object});

  factory ClimateOrderCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return ClimateOrderCreatedEvent(
        object: ClimateOrder.fromJson(map['object']));
  }

  final ClimateOrder object;

  final String type = 'climate.order.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    ClimateOrderCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    ClimateOrder.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'climate.order.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('ClimateOrderCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs when a Climate order is delayed.
final class ClimateOrderDelayedEvent implements StripeEvent {
  /// Occurs when a Climate order is delayed.
  const ClimateOrderDelayedEvent({required this.object});

  factory ClimateOrderDelayedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return ClimateOrderDelayedEvent(
        object: ClimateOrder.fromJson(map['object']));
  }

  final ClimateOrder object;

  final String type = 'climate.order.delayed';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    ClimateOrderDelayedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    ClimateOrder.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'climate.order.delayed',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('ClimateOrderDelayedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs when a Climate order is delivered.
final class ClimateOrderDeliveredEvent implements StripeEvent {
  /// Occurs when a Climate order is delivered.
  const ClimateOrderDeliveredEvent({required this.object});

  factory ClimateOrderDeliveredEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return ClimateOrderDeliveredEvent(
        object: ClimateOrder.fromJson(map['object']));
  }

  final ClimateOrder object;

  final String type = 'climate.order.delivered';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    ClimateOrderDeliveredEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    ClimateOrder.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'climate.order.delivered',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('ClimateOrderDeliveredEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs when a Climate order's product is substituted for another.
final class ClimateOrderProductSubstitutedEvent implements StripeEvent {
  /// Occurs when a Climate order's product is substituted for another.
  const ClimateOrderProductSubstitutedEvent({required this.object});

  factory ClimateOrderProductSubstitutedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return ClimateOrderProductSubstitutedEvent(
        object: ClimateOrder.fromJson(map['object']));
  }

  final ClimateOrder object;

  final String type = 'climate.order.product_substituted';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    ClimateOrderProductSubstitutedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    ClimateOrder.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'climate.order.product_substituted',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('ClimateOrderProductSubstitutedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs when a Climate product is created.
final class ClimateProductCreatedEvent implements StripeEvent {
  /// Occurs when a Climate product is created.
  const ClimateProductCreatedEvent({required this.object});

  factory ClimateProductCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return ClimateProductCreatedEvent(
        object: ClimateProduct.fromJson(map['object']));
  }

  final ClimateProduct object;

  final String type = 'climate.product.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    ClimateProductCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    ClimateProduct.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'climate.product.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('ClimateProductCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs when a Climate product is updated.
final class ClimateProductPricingUpdatedEvent implements StripeEvent {
  /// Occurs when a Climate product is updated.
  const ClimateProductPricingUpdatedEvent({required this.object});

  factory ClimateProductPricingUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return ClimateProductPricingUpdatedEvent(
        object: ClimateProduct.fromJson(map['object']));
  }

  final ClimateProduct object;

  final String type = 'climate.product.pricing_updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    ClimateProductPricingUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    ClimateProduct.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'climate.product.pricing_updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('ClimateProductPricingUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a coupon is created.
final class CouponCreatedEvent implements StripeEvent {
  /// Occurs whenever a coupon is created.
  const CouponCreatedEvent({required this.object});

  factory CouponCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return CouponCreatedEvent(object: Coupon.fromJson(map['object']));
  }

  final Coupon object;

  final String type = 'coupon.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    CouponCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Coupon.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'coupon.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('CouponCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a coupon is deleted.
final class CouponDeletedEvent implements StripeEvent {
  /// Occurs whenever a coupon is deleted.
  const CouponDeletedEvent({required this.object});

  factory CouponDeletedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return CouponDeletedEvent(object: Coupon.fromJson(map['object']));
  }

  final Coupon object;

  final String type = 'coupon.deleted';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    CouponDeletedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Coupon.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'coupon.deleted',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('CouponDeletedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a coupon is updated.
final class CouponUpdatedEvent implements StripeEvent {
  /// Occurs whenever a coupon is updated.
  const CouponUpdatedEvent({required this.object});

  factory CouponUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return CouponUpdatedEvent(object: Coupon.fromJson(map['object']));
  }

  final Coupon object;

  final String type = 'coupon.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    CouponUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Coupon.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'coupon.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('CouponUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a credit note is created.
final class CreditNoteCreatedEvent implements StripeEvent {
  /// Occurs whenever a credit note is created.
  const CreditNoteCreatedEvent({required this.object});

  factory CreditNoteCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return CreditNoteCreatedEvent(object: CreditNote.fromJson(map['object']));
  }

  final CreditNote object;

  final String type = 'credit_note.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    CreditNoteCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    CreditNote.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'credit_note.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('CreditNoteCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a credit note is updated.
final class CreditNoteUpdatedEvent implements StripeEvent {
  /// Occurs whenever a credit note is updated.
  const CreditNoteUpdatedEvent({required this.object});

  factory CreditNoteUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return CreditNoteUpdatedEvent(object: CreditNote.fromJson(map['object']));
  }

  final CreditNote object;

  final String type = 'credit_note.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    CreditNoteUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    CreditNote.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'credit_note.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('CreditNoteUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a credit note is voided.
final class CreditNoteVoidedEvent implements StripeEvent {
  /// Occurs whenever a credit note is voided.
  const CreditNoteVoidedEvent({required this.object});

  factory CreditNoteVoidedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return CreditNoteVoidedEvent(object: CreditNote.fromJson(map['object']));
  }

  final CreditNote object;

  final String type = 'credit_note.voided';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    CreditNoteVoidedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    CreditNote.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'credit_note.voided',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('CreditNoteVoidedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a new customer is created.
final class CustomerCreatedEvent implements StripeEvent {
  /// Occurs whenever a new customer is created.
  const CustomerCreatedEvent({required this.object});

  factory CustomerCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return CustomerCreatedEvent(object: Customer.fromJson(map['object']));
  }

  final Customer object;

  final String type = 'customer.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    CustomerCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Customer.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'customer.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('CustomerCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a customer is deleted.
final class CustomerDeletedEvent implements StripeEvent {
  /// Occurs whenever a customer is deleted.
  const CustomerDeletedEvent({required this.object});

  factory CustomerDeletedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return CustomerDeletedEvent(object: Customer.fromJson(map['object']));
  }

  final Customer object;

  final String type = 'customer.deleted';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    CustomerDeletedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Customer.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'customer.deleted',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('CustomerDeletedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a coupon is attached to a customer.
final class CustomerDiscountCreatedEvent implements StripeEvent {
  /// Occurs whenever a coupon is attached to a customer.
  const CustomerDiscountCreatedEvent({required this.object});

  factory CustomerDiscountCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return CustomerDiscountCreatedEvent(
        object: Discount.fromJson(map['object']));
  }

  final Discount object;

  final String type = 'customer.discount.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    CustomerDiscountCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Discount.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'customer.discount.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('CustomerDiscountCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a coupon is removed from a customer.
final class CustomerDiscountDeletedEvent implements StripeEvent {
  /// Occurs whenever a coupon is removed from a customer.
  const CustomerDiscountDeletedEvent({required this.object});

  factory CustomerDiscountDeletedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return CustomerDiscountDeletedEvent(
        object: Discount.fromJson(map['object']));
  }

  final Discount object;

  final String type = 'customer.discount.deleted';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    CustomerDiscountDeletedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Discount.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'customer.discount.deleted',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('CustomerDiscountDeletedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a customer is switched from one coupon to another.
final class CustomerDiscountUpdatedEvent implements StripeEvent {
  /// Occurs whenever a customer is switched from one coupon to another.
  const CustomerDiscountUpdatedEvent({required this.object});

  factory CustomerDiscountUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return CustomerDiscountUpdatedEvent(
        object: Discount.fromJson(map['object']));
  }

  final Discount object;

  final String type = 'customer.discount.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    CustomerDiscountUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Discount.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'customer.discount.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('CustomerDiscountUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a new source is created for a customer.
final class CustomerSourceCreatedEvent implements StripeEvent {
  /// Occurs whenever a new source is created for a customer.
  const CustomerSourceCreatedEvent({required this.object});

  factory CustomerSourceCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return CustomerSourceCreatedEvent(
        object:
            AccountExternalAccountCreatedEventObject.fromJson(map['object']));
  }

  final AccountExternalAccountCreatedEventObject object;

  final String type = 'customer.source.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    CustomerSourceCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    AccountExternalAccountCreatedEventObject.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'customer.source.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('CustomerSourceCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a source is removed from a customer.
final class CustomerSourceDeletedEvent implements StripeEvent {
  /// Occurs whenever a source is removed from a customer.
  const CustomerSourceDeletedEvent({required this.object});

  factory CustomerSourceDeletedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return CustomerSourceDeletedEvent(
        object:
            AccountExternalAccountCreatedEventObject.fromJson(map['object']));
  }

  final AccountExternalAccountCreatedEventObject object;

  final String type = 'customer.source.deleted';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    CustomerSourceDeletedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    AccountExternalAccountCreatedEventObject.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'customer.source.deleted',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('CustomerSourceDeletedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

sealed class CustomerSourceExpiringEventObject {
  const CustomerSourceExpiringEventObject();

  factory CustomerSourceExpiringEventObject.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    final type = (map['object'] as String);
    final factory = $mapping[type];
    if (factory == null) {
      throw ArgumentError(
          'Unknown type of CustomerSourceExpiringEventObject: "$type"');
    }
    return factory(map);
  }

  static const Map<String, CustomerSourceExpiringEventObject Function(Object?)>
      $mapping = {
    'card': Card.fromJson,
    'source': Source.fromJson,
  };

  String get object;
  Map<String, Object?> toJson();
  static V encode<V>(
    CustomerSourceExpiringEventObject instance,
    Encoder<V> encoder,
  ) {
    return instance.encodeWith(encoder);
  }

  V encodeWith<V>(Encoder<V> encoder);
}

/// Occurs whenever a card or source will expire at the end of the month.
final class CustomerSourceExpiringEvent implements StripeEvent {
  /// Occurs whenever a card or source will expire at the end of the month.
  const CustomerSourceExpiringEvent({required this.object});

  factory CustomerSourceExpiringEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return CustomerSourceExpiringEvent(
        object: CustomerSourceExpiringEventObject.fromJson(map['object']));
  }

  final CustomerSourceExpiringEventObject object;

  final String type = 'customer.source.expiring';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    CustomerSourceExpiringEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    CustomerSourceExpiringEventObject.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'customer.source.expiring',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('CustomerSourceExpiringEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a source's details are changed.
final class CustomerSourceUpdatedEvent implements StripeEvent {
  /// Occurs whenever a source's details are changed.
  const CustomerSourceUpdatedEvent({required this.object});

  factory CustomerSourceUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return CustomerSourceUpdatedEvent(
        object:
            AccountExternalAccountCreatedEventObject.fromJson(map['object']));
  }

  final AccountExternalAccountCreatedEventObject object;

  final String type = 'customer.source.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    CustomerSourceUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    AccountExternalAccountCreatedEventObject.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'customer.source.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('CustomerSourceUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a customer is signed up for a new plan.
final class CustomerSubscriptionCreatedEvent implements StripeEvent {
  /// Occurs whenever a customer is signed up for a new plan.
  const CustomerSubscriptionCreatedEvent({required this.object});

  factory CustomerSubscriptionCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return CustomerSubscriptionCreatedEvent(
        object: Subscription.fromJson(map['object']));
  }

  final Subscription object;

  final String type = 'customer.subscription.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    CustomerSubscriptionCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Subscription.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'customer.subscription.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('CustomerSubscriptionCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a customer's subscription ends.
final class CustomerSubscriptionDeletedEvent implements StripeEvent {
  /// Occurs whenever a customer's subscription ends.
  const CustomerSubscriptionDeletedEvent({required this.object});

  factory CustomerSubscriptionDeletedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return CustomerSubscriptionDeletedEvent(
        object: Subscription.fromJson(map['object']));
  }

  final Subscription object;

  final String type = 'customer.subscription.deleted';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    CustomerSubscriptionDeletedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Subscription.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'customer.subscription.deleted',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('CustomerSubscriptionDeletedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a customer's subscription is paused. Only applies when subscriptions enter \`status=paused\`, not when \[payment collection\](/docs/billing/subscriptions/pause) is paused.
final class CustomerSubscriptionPausedEvent implements StripeEvent {
  /// Occurs whenever a customer's subscription is paused. Only applies when subscriptions enter \`status=paused\`, not when \[payment collection\](/docs/billing/subscriptions/pause) is paused.
  const CustomerSubscriptionPausedEvent({required this.object});

  factory CustomerSubscriptionPausedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return CustomerSubscriptionPausedEvent(
        object: Subscription.fromJson(map['object']));
  }

  final Subscription object;

  final String type = 'customer.subscription.paused';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    CustomerSubscriptionPausedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Subscription.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'customer.subscription.paused',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('CustomerSubscriptionPausedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a customer's subscription's pending update is applied, and the subscription is updated.
final class CustomerSubscriptionPendingUpdateAppliedEvent
    implements StripeEvent {
  /// Occurs whenever a customer's subscription's pending update is applied, and the subscription is updated.
  const CustomerSubscriptionPendingUpdateAppliedEvent({required this.object});

  factory CustomerSubscriptionPendingUpdateAppliedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return CustomerSubscriptionPendingUpdateAppliedEvent(
        object: Subscription.fromJson(map['object']));
  }

  final Subscription object;

  final String type = 'customer.subscription.pending_update_applied';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    CustomerSubscriptionPendingUpdateAppliedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Subscription.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'customer.subscription.pending_update_applied',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('CustomerSubscriptionPendingUpdateAppliedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a customer's subscription's pending update expires before the related invoice is paid.
final class CustomerSubscriptionPendingUpdateExpiredEvent
    implements StripeEvent {
  /// Occurs whenever a customer's subscription's pending update expires before the related invoice is paid.
  const CustomerSubscriptionPendingUpdateExpiredEvent({required this.object});

  factory CustomerSubscriptionPendingUpdateExpiredEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return CustomerSubscriptionPendingUpdateExpiredEvent(
        object: Subscription.fromJson(map['object']));
  }

  final Subscription object;

  final String type = 'customer.subscription.pending_update_expired';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    CustomerSubscriptionPendingUpdateExpiredEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Subscription.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'customer.subscription.pending_update_expired',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('CustomerSubscriptionPendingUpdateExpiredEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a customer's subscription is no longer paused. Only applies when a \`status=paused\` subscription is \[resumed\](/docs/api/subscriptions/resume), not when \[payment collection\](/docs/billing/subscriptions/pause) is resumed.
final class CustomerSubscriptionResumedEvent implements StripeEvent {
  /// Occurs whenever a customer's subscription is no longer paused. Only applies when a \`status=paused\` subscription is \[resumed\](/docs/api/subscriptions/resume), not when \[payment collection\](/docs/billing/subscriptions/pause) is resumed.
  const CustomerSubscriptionResumedEvent({required this.object});

  factory CustomerSubscriptionResumedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return CustomerSubscriptionResumedEvent(
        object: Subscription.fromJson(map['object']));
  }

  final Subscription object;

  final String type = 'customer.subscription.resumed';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    CustomerSubscriptionResumedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Subscription.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'customer.subscription.resumed',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('CustomerSubscriptionResumedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs three days before a subscription's trial period is scheduled to end, or when a trial is ended immediately (using \`trial_end=now\`).
final class CustomerSubscriptionTrialWillEndEvent implements StripeEvent {
  /// Occurs three days before a subscription's trial period is scheduled to end, or when a trial is ended immediately (using \`trial_end=now\`).
  const CustomerSubscriptionTrialWillEndEvent({required this.object});

  factory CustomerSubscriptionTrialWillEndEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return CustomerSubscriptionTrialWillEndEvent(
        object: Subscription.fromJson(map['object']));
  }

  final Subscription object;

  final String type = 'customer.subscription.trial_will_end';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    CustomerSubscriptionTrialWillEndEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Subscription.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'customer.subscription.trial_will_end',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('CustomerSubscriptionTrialWillEndEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a subscription changes (e.g., switching from one plan to another, or changing the status from trial to active).
final class CustomerSubscriptionUpdatedEvent implements StripeEvent {
  /// Occurs whenever a subscription changes (e.g., switching from one plan to another, or changing the status from trial to active).
  const CustomerSubscriptionUpdatedEvent({required this.object});

  factory CustomerSubscriptionUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return CustomerSubscriptionUpdatedEvent(
        object: Subscription.fromJson(map['object']));
  }

  final Subscription object;

  final String type = 'customer.subscription.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    CustomerSubscriptionUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Subscription.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'customer.subscription.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('CustomerSubscriptionUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a tax ID is created for a customer.
final class CustomerTaxIdCreatedEvent implements StripeEvent {
  /// Occurs whenever a tax ID is created for a customer.
  const CustomerTaxIdCreatedEvent({required this.object});

  factory CustomerTaxIdCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return CustomerTaxIdCreatedEvent(object: TaxId.fromJson(map['object']));
  }

  final TaxId object;

  final String type = 'customer.tax_id.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    CustomerTaxIdCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TaxId.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'customer.tax_id.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('CustomerTaxIdCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a tax ID is deleted from a customer.
final class CustomerTaxIdDeletedEvent implements StripeEvent {
  /// Occurs whenever a tax ID is deleted from a customer.
  const CustomerTaxIdDeletedEvent({required this.object});

  factory CustomerTaxIdDeletedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return CustomerTaxIdDeletedEvent(object: TaxId.fromJson(map['object']));
  }

  final TaxId object;

  final String type = 'customer.tax_id.deleted';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    CustomerTaxIdDeletedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TaxId.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'customer.tax_id.deleted',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('CustomerTaxIdDeletedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a customer's tax ID is updated.
final class CustomerTaxIdUpdatedEvent implements StripeEvent {
  /// Occurs whenever a customer's tax ID is updated.
  const CustomerTaxIdUpdatedEvent({required this.object});

  factory CustomerTaxIdUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return CustomerTaxIdUpdatedEvent(object: TaxId.fromJson(map['object']));
  }

  final TaxId object;

  final String type = 'customer.tax_id.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    CustomerTaxIdUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TaxId.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'customer.tax_id.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('CustomerTaxIdUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever any property of a customer changes.
final class CustomerUpdatedEvent implements StripeEvent {
  /// Occurs whenever any property of a customer changes.
  const CustomerUpdatedEvent({required this.object});

  factory CustomerUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return CustomerUpdatedEvent(object: Customer.fromJson(map['object']));
  }

  final Customer object;

  final String type = 'customer.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    CustomerUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Customer.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'customer.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('CustomerUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a new customer cash balance transactions is created.
final class CustomerCashBalanceTransactionCreatedEvent implements StripeEvent {
  /// Occurs whenever a new customer cash balance transactions is created.
  const CustomerCashBalanceTransactionCreatedEvent({required this.object});

  factory CustomerCashBalanceTransactionCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return CustomerCashBalanceTransactionCreatedEvent(
        object: CustomerCashBalanceTransaction.fromJson(map['object']));
  }

  final CustomerCashBalanceTransaction object;

  final String type = 'customer_cash_balance_transaction.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    CustomerCashBalanceTransactionCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    CustomerCashBalanceTransaction.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'customer_cash_balance_transaction.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('CustomerCashBalanceTransactionCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a new Stripe-generated file is available for your account.
final class FileCreatedEvent implements StripeEvent {
  /// Occurs whenever a new Stripe-generated file is available for your account.
  const FileCreatedEvent({required this.object});

  factory FileCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return FileCreatedEvent(object: File.fromJson(map['object']));
  }

  final File object;

  final String type = 'file.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    FileCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    File.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'file.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('FileCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs when a new Financial Connections account is created.
final class FinancialConnectionsAccountCreatedEvent implements StripeEvent {
  /// Occurs when a new Financial Connections account is created.
  const FinancialConnectionsAccountCreatedEvent({required this.object});

  factory FinancialConnectionsAccountCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return FinancialConnectionsAccountCreatedEvent(
        object: FinancialConnectionsAccount.fromJson(map['object']));
  }

  final FinancialConnectionsAccount object;

  final String type = 'financial_connections.account.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    FinancialConnectionsAccountCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    FinancialConnectionsAccount.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'financial_connections.account.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('FinancialConnectionsAccountCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs when a Financial Connections account's status is updated from \`active\` to \`inactive\`.
final class FinancialConnectionsAccountDeactivatedEvent implements StripeEvent {
  /// Occurs when a Financial Connections account's status is updated from \`active\` to \`inactive\`.
  const FinancialConnectionsAccountDeactivatedEvent({required this.object});

  factory FinancialConnectionsAccountDeactivatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return FinancialConnectionsAccountDeactivatedEvent(
        object: FinancialConnectionsAccount.fromJson(map['object']));
  }

  final FinancialConnectionsAccount object;

  final String type = 'financial_connections.account.deactivated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    FinancialConnectionsAccountDeactivatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    FinancialConnectionsAccount.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'financial_connections.account.deactivated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('FinancialConnectionsAccountDeactivatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs when a Financial Connections account is disconnected.
final class FinancialConnectionsAccountDisconnectedEvent
    implements StripeEvent {
  /// Occurs when a Financial Connections account is disconnected.
  const FinancialConnectionsAccountDisconnectedEvent({required this.object});

  factory FinancialConnectionsAccountDisconnectedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return FinancialConnectionsAccountDisconnectedEvent(
        object: FinancialConnectionsAccount.fromJson(map['object']));
  }

  final FinancialConnectionsAccount object;

  final String type = 'financial_connections.account.disconnected';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    FinancialConnectionsAccountDisconnectedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    FinancialConnectionsAccount.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'financial_connections.account.disconnected',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('FinancialConnectionsAccountDisconnectedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs when a Financial Connections account's status is updated from \`inactive\` to \`active\`.
final class FinancialConnectionsAccountReactivatedEvent implements StripeEvent {
  /// Occurs when a Financial Connections account's status is updated from \`inactive\` to \`active\`.
  const FinancialConnectionsAccountReactivatedEvent({required this.object});

  factory FinancialConnectionsAccountReactivatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return FinancialConnectionsAccountReactivatedEvent(
        object: FinancialConnectionsAccount.fromJson(map['object']));
  }

  final FinancialConnectionsAccount object;

  final String type = 'financial_connections.account.reactivated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    FinancialConnectionsAccountReactivatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    FinancialConnectionsAccount.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'financial_connections.account.reactivated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('FinancialConnectionsAccountReactivatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs when an Account’s \`balance_refresh\` status transitions from \`pending\` to either \`succeeded\` or \`failed\`.
final class FinancialConnectionsAccountRefreshedBalanceEvent
    implements StripeEvent {
  /// Occurs when an Account’s \`balance_refresh\` status transitions from \`pending\` to either \`succeeded\` or \`failed\`.
  const FinancialConnectionsAccountRefreshedBalanceEvent(
      {required this.object});

  factory FinancialConnectionsAccountRefreshedBalanceEvent.fromJson(
      Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return FinancialConnectionsAccountRefreshedBalanceEvent(
        object: FinancialConnectionsAccount.fromJson(map['object']));
  }

  final FinancialConnectionsAccount object;

  final String type = 'financial_connections.account.refreshed_balance';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    FinancialConnectionsAccountRefreshedBalanceEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    FinancialConnectionsAccount.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'financial_connections.account.refreshed_balance',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('FinancialConnectionsAccountRefreshedBalanceEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs when an Account’s \`ownership_refresh\` status transitions from \`pending\` to either \`succeeded\` or \`failed\`.
final class FinancialConnectionsAccountRefreshedOwnershipEvent
    implements StripeEvent {
  /// Occurs when an Account’s \`ownership_refresh\` status transitions from \`pending\` to either \`succeeded\` or \`failed\`.
  const FinancialConnectionsAccountRefreshedOwnershipEvent(
      {required this.object});

  factory FinancialConnectionsAccountRefreshedOwnershipEvent.fromJson(
      Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return FinancialConnectionsAccountRefreshedOwnershipEvent(
        object: FinancialConnectionsAccount.fromJson(map['object']));
  }

  final FinancialConnectionsAccount object;

  final String type = 'financial_connections.account.refreshed_ownership';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    FinancialConnectionsAccountRefreshedOwnershipEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    FinancialConnectionsAccount.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'financial_connections.account.refreshed_ownership',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('FinancialConnectionsAccountRefreshedOwnershipEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs when an Account’s \`transaction_refresh\` status transitions from \`pending\` to either \`succeeded\` or \`failed\`.
final class FinancialConnectionsAccountRefreshedTransactionsEvent
    implements StripeEvent {
  /// Occurs when an Account’s \`transaction_refresh\` status transitions from \`pending\` to either \`succeeded\` or \`failed\`.
  const FinancialConnectionsAccountRefreshedTransactionsEvent(
      {required this.object});

  factory FinancialConnectionsAccountRefreshedTransactionsEvent.fromJson(
      Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return FinancialConnectionsAccountRefreshedTransactionsEvent(
        object: FinancialConnectionsAccount.fromJson(map['object']));
  }

  final FinancialConnectionsAccount object;

  final String type = 'financial_connections.account.refreshed_transactions';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    FinancialConnectionsAccountRefreshedTransactionsEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    FinancialConnectionsAccount.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'financial_connections.account.refreshed_transactions',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('FinancialConnectionsAccountRefreshedTransactionsEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a VerificationSession is canceled
final class IdentityVerificationSessionCanceledEvent implements StripeEvent {
  /// Occurs whenever a VerificationSession is canceled
  const IdentityVerificationSessionCanceledEvent({required this.object});

  factory IdentityVerificationSessionCanceledEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return IdentityVerificationSessionCanceledEvent(
        object: IdentityVerificationSession.fromJson(map['object']));
  }

  final IdentityVerificationSession object;

  final String type = 'identity.verification_session.canceled';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    IdentityVerificationSessionCanceledEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    IdentityVerificationSession.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'identity.verification_session.canceled',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('IdentityVerificationSessionCanceledEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a VerificationSession is created
final class IdentityVerificationSessionCreatedEvent implements StripeEvent {
  /// Occurs whenever a VerificationSession is created
  const IdentityVerificationSessionCreatedEvent({required this.object});

  factory IdentityVerificationSessionCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return IdentityVerificationSessionCreatedEvent(
        object: IdentityVerificationSession.fromJson(map['object']));
  }

  final IdentityVerificationSession object;

  final String type = 'identity.verification_session.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    IdentityVerificationSessionCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    IdentityVerificationSession.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'identity.verification_session.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('IdentityVerificationSessionCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a VerificationSession transitions to processing
final class IdentityVerificationSessionProcessingEvent implements StripeEvent {
  /// Occurs whenever a VerificationSession transitions to processing
  const IdentityVerificationSessionProcessingEvent({required this.object});

  factory IdentityVerificationSessionProcessingEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return IdentityVerificationSessionProcessingEvent(
        object: IdentityVerificationSession.fromJson(map['object']));
  }

  final IdentityVerificationSession object;

  final String type = 'identity.verification_session.processing';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    IdentityVerificationSessionProcessingEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    IdentityVerificationSession.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'identity.verification_session.processing',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('IdentityVerificationSessionProcessingEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a VerificationSession is redacted.
final class IdentityVerificationSessionRedactedEvent implements StripeEvent {
  /// Occurs whenever a VerificationSession is redacted.
  const IdentityVerificationSessionRedactedEvent({required this.object});

  factory IdentityVerificationSessionRedactedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return IdentityVerificationSessionRedactedEvent(
        object: IdentityVerificationSession.fromJson(map['object']));
  }

  final IdentityVerificationSession object;

  final String type = 'identity.verification_session.redacted';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    IdentityVerificationSessionRedactedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    IdentityVerificationSession.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'identity.verification_session.redacted',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('IdentityVerificationSessionRedactedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a VerificationSession transitions to require user input
final class IdentityVerificationSessionRequiresInputEvent
    implements StripeEvent {
  /// Occurs whenever a VerificationSession transitions to require user input
  const IdentityVerificationSessionRequiresInputEvent({required this.object});

  factory IdentityVerificationSessionRequiresInputEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return IdentityVerificationSessionRequiresInputEvent(
        object: IdentityVerificationSession.fromJson(map['object']));
  }

  final IdentityVerificationSession object;

  final String type = 'identity.verification_session.requires_input';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    IdentityVerificationSessionRequiresInputEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    IdentityVerificationSession.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'identity.verification_session.requires_input',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('IdentityVerificationSessionRequiresInputEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a VerificationSession transitions to verified
final class IdentityVerificationSessionVerifiedEvent implements StripeEvent {
  /// Occurs whenever a VerificationSession transitions to verified
  const IdentityVerificationSessionVerifiedEvent({required this.object});

  factory IdentityVerificationSessionVerifiedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return IdentityVerificationSessionVerifiedEvent(
        object: IdentityVerificationSession.fromJson(map['object']));
  }

  final IdentityVerificationSession object;

  final String type = 'identity.verification_session.verified';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    IdentityVerificationSessionVerifiedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    IdentityVerificationSession.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'identity.verification_session.verified',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('IdentityVerificationSessionVerifiedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a new invoice is created. To learn how webhooks can be used with this event, and how they can affect it, see \[Using Webhooks with Subscriptions\](/docs/subscriptions/webhooks).
final class InvoiceCreatedEvent implements StripeEvent {
  /// Occurs whenever a new invoice is created. To learn how webhooks can be used with this event, and how they can affect it, see \[Using Webhooks with Subscriptions\](/docs/subscriptions/webhooks).
  const InvoiceCreatedEvent({required this.object});

  factory InvoiceCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return InvoiceCreatedEvent(object: Invoice.fromJson(map['object']));
  }

  final Invoice object;

  final String type = 'invoice.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    InvoiceCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Invoice.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'invoice.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('InvoiceCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a draft invoice is deleted.
final class InvoiceDeletedEvent implements StripeEvent {
  /// Occurs whenever a draft invoice is deleted.
  const InvoiceDeletedEvent({required this.object});

  factory InvoiceDeletedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return InvoiceDeletedEvent(object: Invoice.fromJson(map['object']));
  }

  final Invoice object;

  final String type = 'invoice.deleted';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    InvoiceDeletedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Invoice.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'invoice.deleted',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('InvoiceDeletedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a draft invoice cannot be finalized. See the invoice’s \[last finalization error\](/docs/api/invoices/object#invoice\_object-last\_finalization_error) for details.
final class InvoiceFinalizationFailedEvent implements StripeEvent {
  /// Occurs whenever a draft invoice cannot be finalized. See the invoice’s \[last finalization error\](/docs/api/invoices/object#invoice\_object-last\_finalization_error) for details.
  const InvoiceFinalizationFailedEvent({required this.object});

  factory InvoiceFinalizationFailedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return InvoiceFinalizationFailedEvent(
        object: Invoice.fromJson(map['object']));
  }

  final Invoice object;

  final String type = 'invoice.finalization_failed';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    InvoiceFinalizationFailedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Invoice.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'invoice.finalization_failed',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('InvoiceFinalizationFailedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a draft invoice is finalized and updated to be an open invoice.
final class InvoiceFinalizedEvent implements StripeEvent {
  /// Occurs whenever a draft invoice is finalized and updated to be an open invoice.
  const InvoiceFinalizedEvent({required this.object});

  factory InvoiceFinalizedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return InvoiceFinalizedEvent(object: Invoice.fromJson(map['object']));
  }

  final Invoice object;

  final String type = 'invoice.finalized';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    InvoiceFinalizedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Invoice.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'invoice.finalized',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('InvoiceFinalizedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an invoice is marked uncollectible.
final class InvoiceMarkedUncollectibleEvent implements StripeEvent {
  /// Occurs whenever an invoice is marked uncollectible.
  const InvoiceMarkedUncollectibleEvent({required this.object});

  factory InvoiceMarkedUncollectibleEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return InvoiceMarkedUncollectibleEvent(
        object: Invoice.fromJson(map['object']));
  }

  final Invoice object;

  final String type = 'invoice.marked_uncollectible';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    InvoiceMarkedUncollectibleEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Invoice.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'invoice.marked_uncollectible',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('InvoiceMarkedUncollectibleEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an invoice payment attempt succeeds or an invoice is marked as paid out-of-band.
final class InvoicePaidEvent implements StripeEvent {
  /// Occurs whenever an invoice payment attempt succeeds or an invoice is marked as paid out-of-band.
  const InvoicePaidEvent({required this.object});

  factory InvoicePaidEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return InvoicePaidEvent(object: Invoice.fromJson(map['object']));
  }

  final Invoice object;

  final String type = 'invoice.paid';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    InvoicePaidEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Invoice.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'invoice.paid',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('InvoicePaidEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an invoice payment attempt requires further user action to complete.
final class InvoicePaymentActionRequiredEvent implements StripeEvent {
  /// Occurs whenever an invoice payment attempt requires further user action to complete.
  const InvoicePaymentActionRequiredEvent({required this.object});

  factory InvoicePaymentActionRequiredEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return InvoicePaymentActionRequiredEvent(
        object: Invoice.fromJson(map['object']));
  }

  final Invoice object;

  final String type = 'invoice.payment_action_required';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    InvoicePaymentActionRequiredEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Invoice.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'invoice.payment_action_required',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('InvoicePaymentActionRequiredEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an invoice payment attempt fails, due either to a declined payment or to the lack of a stored payment method.
final class InvoicePaymentFailedEvent implements StripeEvent {
  /// Occurs whenever an invoice payment attempt fails, due either to a declined payment or to the lack of a stored payment method.
  const InvoicePaymentFailedEvent({required this.object});

  factory InvoicePaymentFailedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return InvoicePaymentFailedEvent(object: Invoice.fromJson(map['object']));
  }

  final Invoice object;

  final String type = 'invoice.payment_failed';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    InvoicePaymentFailedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Invoice.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'invoice.payment_failed',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('InvoicePaymentFailedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an invoice payment attempt succeeds.
final class InvoicePaymentSucceededEvent implements StripeEvent {
  /// Occurs whenever an invoice payment attempt succeeds.
  const InvoicePaymentSucceededEvent({required this.object});

  factory InvoicePaymentSucceededEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return InvoicePaymentSucceededEvent(
        object: Invoice.fromJson(map['object']));
  }

  final Invoice object;

  final String type = 'invoice.payment_succeeded';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    InvoicePaymentSucceededEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Invoice.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'invoice.payment_succeeded',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('InvoicePaymentSucceededEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an invoice email is sent out.
final class InvoiceSentEvent implements StripeEvent {
  /// Occurs whenever an invoice email is sent out.
  const InvoiceSentEvent({required this.object});

  factory InvoiceSentEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return InvoiceSentEvent(object: Invoice.fromJson(map['object']));
  }

  final Invoice object;

  final String type = 'invoice.sent';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    InvoiceSentEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Invoice.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'invoice.sent',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('InvoiceSentEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs X number of days before a subscription is scheduled to create an invoice that is automatically charged—where X is determined by your \[subscriptions settings\](https://dashboard.stripe.com/account/billing/automatic). Note: The received \`Invoice\` object will not have an invoice ID.
final class InvoiceUpcomingEvent implements StripeEvent {
  /// Occurs X number of days before a subscription is scheduled to create an invoice that is automatically charged—where X is determined by your \[subscriptions settings\](https://dashboard.stripe.com/account/billing/automatic). Note: The received \`Invoice\` object will not have an invoice ID.
  const InvoiceUpcomingEvent({required this.object});

  factory InvoiceUpcomingEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return InvoiceUpcomingEvent(object: Invoice.fromJson(map['object']));
  }

  final Invoice object;

  final String type = 'invoice.upcoming';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    InvoiceUpcomingEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Invoice.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'invoice.upcoming',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('InvoiceUpcomingEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an invoice changes (e.g., the invoice amount).
final class InvoiceUpdatedEvent implements StripeEvent {
  /// Occurs whenever an invoice changes (e.g., the invoice amount).
  const InvoiceUpdatedEvent({required this.object});

  factory InvoiceUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return InvoiceUpdatedEvent(object: Invoice.fromJson(map['object']));
  }

  final Invoice object;

  final String type = 'invoice.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    InvoiceUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Invoice.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'invoice.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('InvoiceUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an invoice is voided.
final class InvoiceVoidedEvent implements StripeEvent {
  /// Occurs whenever an invoice is voided.
  const InvoiceVoidedEvent({required this.object});

  factory InvoiceVoidedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return InvoiceVoidedEvent(object: Invoice.fromJson(map['object']));
  }

  final Invoice object;

  final String type = 'invoice.voided';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    InvoiceVoidedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Invoice.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'invoice.voided',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('InvoiceVoidedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an invoice item is created.
final class InvoiceitemCreatedEvent implements StripeEvent {
  /// Occurs whenever an invoice item is created.
  const InvoiceitemCreatedEvent({required this.object});

  factory InvoiceitemCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return InvoiceitemCreatedEvent(object: Invoiceitem.fromJson(map['object']));
  }

  final Invoiceitem object;

  final String type = 'invoiceitem.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    InvoiceitemCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Invoiceitem.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'invoiceitem.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('InvoiceitemCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an invoice item is deleted.
final class InvoiceitemDeletedEvent implements StripeEvent {
  /// Occurs whenever an invoice item is deleted.
  const InvoiceitemDeletedEvent({required this.object});

  factory InvoiceitemDeletedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return InvoiceitemDeletedEvent(object: Invoiceitem.fromJson(map['object']));
  }

  final Invoiceitem object;

  final String type = 'invoiceitem.deleted';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    InvoiceitemDeletedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Invoiceitem.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'invoiceitem.deleted',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('InvoiceitemDeletedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an authorization is created.
final class IssuingAuthorizationCreatedEvent implements StripeEvent {
  /// Occurs whenever an authorization is created.
  const IssuingAuthorizationCreatedEvent({required this.object});

  factory IssuingAuthorizationCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return IssuingAuthorizationCreatedEvent(
        object: IssuingAuthorization.fromJson(map['object']));
  }

  final IssuingAuthorization object;

  final String type = 'issuing_authorization.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    IssuingAuthorizationCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    IssuingAuthorization.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'issuing_authorization.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('IssuingAuthorizationCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Represents a synchronous request for authorization, see \[Using your integration to handle authorization requests\](/docs/issuing/purchases/authorizations#authorization-handling).
final class IssuingAuthorizationRequestEvent implements StripeEvent {
  /// Represents a synchronous request for authorization, see \[Using your integration to handle authorization requests\](/docs/issuing/purchases/authorizations#authorization-handling).
  const IssuingAuthorizationRequestEvent({required this.object});

  factory IssuingAuthorizationRequestEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return IssuingAuthorizationRequestEvent(
        object: IssuingAuthorization.fromJson(map['object']));
  }

  final IssuingAuthorization object;

  final String type = 'issuing_authorization.request';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    IssuingAuthorizationRequestEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    IssuingAuthorization.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'issuing_authorization.request',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('IssuingAuthorizationRequestEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an authorization is updated.
final class IssuingAuthorizationUpdatedEvent implements StripeEvent {
  /// Occurs whenever an authorization is updated.
  const IssuingAuthorizationUpdatedEvent({required this.object});

  factory IssuingAuthorizationUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return IssuingAuthorizationUpdatedEvent(
        object: IssuingAuthorization.fromJson(map['object']));
  }

  final IssuingAuthorization object;

  final String type = 'issuing_authorization.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    IssuingAuthorizationUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    IssuingAuthorization.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'issuing_authorization.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('IssuingAuthorizationUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a card is created.
final class IssuingCardCreatedEvent implements StripeEvent {
  /// Occurs whenever a card is created.
  const IssuingCardCreatedEvent({required this.object});

  factory IssuingCardCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return IssuingCardCreatedEvent(object: IssuingCard.fromJson(map['object']));
  }

  final IssuingCard object;

  final String type = 'issuing_card.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    IssuingCardCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    IssuingCard.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'issuing_card.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('IssuingCardCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a card is updated.
final class IssuingCardUpdatedEvent implements StripeEvent {
  /// Occurs whenever a card is updated.
  const IssuingCardUpdatedEvent({required this.object});

  factory IssuingCardUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return IssuingCardUpdatedEvent(object: IssuingCard.fromJson(map['object']));
  }

  final IssuingCard object;

  final String type = 'issuing_card.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    IssuingCardUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    IssuingCard.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'issuing_card.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('IssuingCardUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a cardholder is created.
final class IssuingCardholderCreatedEvent implements StripeEvent {
  /// Occurs whenever a cardholder is created.
  const IssuingCardholderCreatedEvent({required this.object});

  factory IssuingCardholderCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return IssuingCardholderCreatedEvent(
        object: IssuingCardholder.fromJson(map['object']));
  }

  final IssuingCardholder object;

  final String type = 'issuing_cardholder.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    IssuingCardholderCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    IssuingCardholder.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'issuing_cardholder.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('IssuingCardholderCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a cardholder is updated.
final class IssuingCardholderUpdatedEvent implements StripeEvent {
  /// Occurs whenever a cardholder is updated.
  const IssuingCardholderUpdatedEvent({required this.object});

  factory IssuingCardholderUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return IssuingCardholderUpdatedEvent(
        object: IssuingCardholder.fromJson(map['object']));
  }

  final IssuingCardholder object;

  final String type = 'issuing_cardholder.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    IssuingCardholderUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    IssuingCardholder.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'issuing_cardholder.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('IssuingCardholderUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a dispute is won, lost or expired.
final class IssuingDisputeClosedEvent implements StripeEvent {
  /// Occurs whenever a dispute is won, lost or expired.
  const IssuingDisputeClosedEvent({required this.object});

  factory IssuingDisputeClosedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return IssuingDisputeClosedEvent(
        object: IssuingDispute.fromJson(map['object']));
  }

  final IssuingDispute object;

  final String type = 'issuing_dispute.closed';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    IssuingDisputeClosedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    IssuingDispute.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'issuing_dispute.closed',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('IssuingDisputeClosedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a dispute is created.
final class IssuingDisputeCreatedEvent implements StripeEvent {
  /// Occurs whenever a dispute is created.
  const IssuingDisputeCreatedEvent({required this.object});

  factory IssuingDisputeCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return IssuingDisputeCreatedEvent(
        object: IssuingDispute.fromJson(map['object']));
  }

  final IssuingDispute object;

  final String type = 'issuing_dispute.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    IssuingDisputeCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    IssuingDispute.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'issuing_dispute.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('IssuingDisputeCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever funds are reinstated to your account for an Issuing dispute.
final class IssuingDisputeFundsReinstatedEvent implements StripeEvent {
  /// Occurs whenever funds are reinstated to your account for an Issuing dispute.
  const IssuingDisputeFundsReinstatedEvent({required this.object});

  factory IssuingDisputeFundsReinstatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return IssuingDisputeFundsReinstatedEvent(
        object: IssuingDispute.fromJson(map['object']));
  }

  final IssuingDispute object;

  final String type = 'issuing_dispute.funds_reinstated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    IssuingDisputeFundsReinstatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    IssuingDispute.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'issuing_dispute.funds_reinstated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('IssuingDisputeFundsReinstatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a dispute is submitted.
final class IssuingDisputeSubmittedEvent implements StripeEvent {
  /// Occurs whenever a dispute is submitted.
  const IssuingDisputeSubmittedEvent({required this.object});

  factory IssuingDisputeSubmittedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return IssuingDisputeSubmittedEvent(
        object: IssuingDispute.fromJson(map['object']));
  }

  final IssuingDispute object;

  final String type = 'issuing_dispute.submitted';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    IssuingDisputeSubmittedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    IssuingDispute.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'issuing_dispute.submitted',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('IssuingDisputeSubmittedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a dispute is updated.
final class IssuingDisputeUpdatedEvent implements StripeEvent {
  /// Occurs whenever a dispute is updated.
  const IssuingDisputeUpdatedEvent({required this.object});

  factory IssuingDisputeUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return IssuingDisputeUpdatedEvent(
        object: IssuingDispute.fromJson(map['object']));
  }

  final IssuingDispute object;

  final String type = 'issuing_dispute.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    IssuingDisputeUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    IssuingDispute.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'issuing_dispute.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('IssuingDisputeUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an issuing digital wallet token is created.
final class IssuingTokenCreatedEvent implements StripeEvent {
  /// Occurs whenever an issuing digital wallet token is created.
  const IssuingTokenCreatedEvent({required this.object});

  factory IssuingTokenCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return IssuingTokenCreatedEvent(
        object: IssuingToken.fromJson(map['object']));
  }

  final IssuingToken object;

  final String type = 'issuing_token.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    IssuingTokenCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    IssuingToken.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'issuing_token.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('IssuingTokenCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an issuing digital wallet token is updated.
final class IssuingTokenUpdatedEvent implements StripeEvent {
  /// Occurs whenever an issuing digital wallet token is updated.
  const IssuingTokenUpdatedEvent({required this.object});

  factory IssuingTokenUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return IssuingTokenUpdatedEvent(
        object: IssuingToken.fromJson(map['object']));
  }

  final IssuingToken object;

  final String type = 'issuing_token.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    IssuingTokenUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    IssuingToken.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'issuing_token.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('IssuingTokenUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an issuing transaction is created.
final class IssuingTransactionCreatedEvent implements StripeEvent {
  /// Occurs whenever an issuing transaction is created.
  const IssuingTransactionCreatedEvent({required this.object});

  factory IssuingTransactionCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return IssuingTransactionCreatedEvent(
        object: IssuingTransaction.fromJson(map['object']));
  }

  final IssuingTransaction object;

  final String type = 'issuing_transaction.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    IssuingTransactionCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    IssuingTransaction.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'issuing_transaction.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('IssuingTransactionCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an issuing transaction is updated.
final class IssuingTransactionUpdatedEvent implements StripeEvent {
  /// Occurs whenever an issuing transaction is updated.
  const IssuingTransactionUpdatedEvent({required this.object});

  factory IssuingTransactionUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return IssuingTransactionUpdatedEvent(
        object: IssuingTransaction.fromJson(map['object']));
  }

  final IssuingTransaction object;

  final String type = 'issuing_transaction.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    IssuingTransactionUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    IssuingTransaction.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'issuing_transaction.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('IssuingTransactionUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a Mandate is updated.
final class MandateUpdatedEvent implements StripeEvent {
  /// Occurs whenever a Mandate is updated.
  const MandateUpdatedEvent({required this.object});

  factory MandateUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return MandateUpdatedEvent(object: Mandate.fromJson(map['object']));
  }

  final Mandate object;

  final String type = 'mandate.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    MandateUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Mandate.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'mandate.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('MandateUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs when a PaymentIntent has funds to be captured. Check the \`amount\_capturable\` property on the PaymentIntent to determine the amount that can be captured. You may capture the PaymentIntent with an \`amount\_to\_capture\` value up to the specified amount. \[Learn more about capturing PaymentIntents.\](https://stripe.com/docs/api/payment\_intents/capture)
final class PaymentIntentAmountCapturableUpdatedEvent implements StripeEvent {
  /// Occurs when a PaymentIntent has funds to be captured. Check the \`amount\_capturable\` property on the PaymentIntent to determine the amount that can be captured. You may capture the PaymentIntent with an \`amount\_to\_capture\` value up to the specified amount. \[Learn more about capturing PaymentIntents.\](https://stripe.com/docs/api/payment\_intents/capture)
  const PaymentIntentAmountCapturableUpdatedEvent({required this.object});

  factory PaymentIntentAmountCapturableUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return PaymentIntentAmountCapturableUpdatedEvent(
        object: PaymentIntent.fromJson(map['object']));
  }

  final PaymentIntent object;

  final String type = 'payment_intent.amount_capturable_updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    PaymentIntentAmountCapturableUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    PaymentIntent.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'payment_intent.amount_capturable_updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('PaymentIntentAmountCapturableUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs when a PaymentIntent is canceled.
final class PaymentIntentCanceledEvent implements StripeEvent {
  /// Occurs when a PaymentIntent is canceled.
  const PaymentIntentCanceledEvent({required this.object});

  factory PaymentIntentCanceledEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return PaymentIntentCanceledEvent(
        object: PaymentIntent.fromJson(map['object']));
  }

  final PaymentIntent object;

  final String type = 'payment_intent.canceled';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    PaymentIntentCanceledEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    PaymentIntent.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'payment_intent.canceled',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('PaymentIntentCanceledEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs when a new PaymentIntent is created.
final class PaymentIntentCreatedEvent implements StripeEvent {
  /// Occurs when a new PaymentIntent is created.
  const PaymentIntentCreatedEvent({required this.object});

  factory PaymentIntentCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return PaymentIntentCreatedEvent(
        object: PaymentIntent.fromJson(map['object']));
  }

  final PaymentIntent object;

  final String type = 'payment_intent.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    PaymentIntentCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    PaymentIntent.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'payment_intent.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('PaymentIntentCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs when funds are applied to a customer\_balance PaymentIntent and the 'amount\_remaining' changes.
final class PaymentIntentPartiallyFundedEvent implements StripeEvent {
  /// Occurs when funds are applied to a customer\_balance PaymentIntent and the 'amount\_remaining' changes.
  const PaymentIntentPartiallyFundedEvent({required this.object});

  factory PaymentIntentPartiallyFundedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return PaymentIntentPartiallyFundedEvent(
        object: PaymentIntent.fromJson(map['object']));
  }

  final PaymentIntent object;

  final String type = 'payment_intent.partially_funded';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    PaymentIntentPartiallyFundedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    PaymentIntent.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'payment_intent.partially_funded',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('PaymentIntentPartiallyFundedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs when a PaymentIntent has failed the attempt to create a payment method or a payment.
final class PaymentIntentPaymentFailedEvent implements StripeEvent {
  /// Occurs when a PaymentIntent has failed the attempt to create a payment method or a payment.
  const PaymentIntentPaymentFailedEvent({required this.object});

  factory PaymentIntentPaymentFailedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return PaymentIntentPaymentFailedEvent(
        object: PaymentIntent.fromJson(map['object']));
  }

  final PaymentIntent object;

  final String type = 'payment_intent.payment_failed';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    PaymentIntentPaymentFailedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    PaymentIntent.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'payment_intent.payment_failed',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('PaymentIntentPaymentFailedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs when a PaymentIntent has started processing.
final class PaymentIntentProcessingEvent implements StripeEvent {
  /// Occurs when a PaymentIntent has started processing.
  const PaymentIntentProcessingEvent({required this.object});

  factory PaymentIntentProcessingEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return PaymentIntentProcessingEvent(
        object: PaymentIntent.fromJson(map['object']));
  }

  final PaymentIntent object;

  final String type = 'payment_intent.processing';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    PaymentIntentProcessingEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    PaymentIntent.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'payment_intent.processing',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('PaymentIntentProcessingEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs when a PaymentIntent transitions to requires_action state
final class PaymentIntentRequiresActionEvent implements StripeEvent {
  /// Occurs when a PaymentIntent transitions to requires_action state
  const PaymentIntentRequiresActionEvent({required this.object});

  factory PaymentIntentRequiresActionEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return PaymentIntentRequiresActionEvent(
        object: PaymentIntent.fromJson(map['object']));
  }

  final PaymentIntent object;

  final String type = 'payment_intent.requires_action';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    PaymentIntentRequiresActionEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    PaymentIntent.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'payment_intent.requires_action',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('PaymentIntentRequiresActionEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs when a PaymentIntent has successfully completed payment.
final class PaymentIntentSucceededEvent implements StripeEvent {
  /// Occurs when a PaymentIntent has successfully completed payment.
  const PaymentIntentSucceededEvent({required this.object});

  factory PaymentIntentSucceededEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return PaymentIntentSucceededEvent(
        object: PaymentIntent.fromJson(map['object']));
  }

  final PaymentIntent object;

  final String type = 'payment_intent.succeeded';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    PaymentIntentSucceededEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    PaymentIntent.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'payment_intent.succeeded',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('PaymentIntentSucceededEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs when a payment link is created.
final class PaymentLinkCreatedEvent implements StripeEvent {
  /// Occurs when a payment link is created.
  const PaymentLinkCreatedEvent({required this.object});

  factory PaymentLinkCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return PaymentLinkCreatedEvent(object: PaymentLink.fromJson(map['object']));
  }

  final PaymentLink object;

  final String type = 'payment_link.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    PaymentLinkCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    PaymentLink.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'payment_link.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('PaymentLinkCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs when a payment link is updated.
final class PaymentLinkUpdatedEvent implements StripeEvent {
  /// Occurs when a payment link is updated.
  const PaymentLinkUpdatedEvent({required this.object});

  factory PaymentLinkUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return PaymentLinkUpdatedEvent(object: PaymentLink.fromJson(map['object']));
  }

  final PaymentLink object;

  final String type = 'payment_link.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    PaymentLinkUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    PaymentLink.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'payment_link.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('PaymentLinkUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a new payment method is attached to a customer.
final class PaymentMethodAttachedEvent implements StripeEvent {
  /// Occurs whenever a new payment method is attached to a customer.
  const PaymentMethodAttachedEvent({required this.object});

  factory PaymentMethodAttachedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return PaymentMethodAttachedEvent(
        object: PaymentMethod.fromJson(map['object']));
  }

  final PaymentMethod object;

  final String type = 'payment_method.attached';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    PaymentMethodAttachedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    PaymentMethod.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'payment_method.attached',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('PaymentMethodAttachedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a payment method's details are automatically updated by the network.
final class PaymentMethodAutomaticallyUpdatedEvent implements StripeEvent {
  /// Occurs whenever a payment method's details are automatically updated by the network.
  const PaymentMethodAutomaticallyUpdatedEvent({required this.object});

  factory PaymentMethodAutomaticallyUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return PaymentMethodAutomaticallyUpdatedEvent(
        object: PaymentMethod.fromJson(map['object']));
  }

  final PaymentMethod object;

  final String type = 'payment_method.automatically_updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    PaymentMethodAutomaticallyUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    PaymentMethod.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'payment_method.automatically_updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('PaymentMethodAutomaticallyUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a payment method is detached from a customer.
final class PaymentMethodDetachedEvent implements StripeEvent {
  /// Occurs whenever a payment method is detached from a customer.
  const PaymentMethodDetachedEvent({required this.object});

  factory PaymentMethodDetachedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return PaymentMethodDetachedEvent(
        object: PaymentMethod.fromJson(map['object']));
  }

  final PaymentMethod object;

  final String type = 'payment_method.detached';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    PaymentMethodDetachedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    PaymentMethod.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'payment_method.detached',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('PaymentMethodDetachedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a payment method is updated via the \[PaymentMethod update API\](https://stripe.com/docs/api/payment_methods/update).
final class PaymentMethodUpdatedEvent implements StripeEvent {
  /// Occurs whenever a payment method is updated via the \[PaymentMethod update API\](https://stripe.com/docs/api/payment_methods/update).
  const PaymentMethodUpdatedEvent({required this.object});

  factory PaymentMethodUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return PaymentMethodUpdatedEvent(
        object: PaymentMethod.fromJson(map['object']));
  }

  final PaymentMethod object;

  final String type = 'payment_method.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    PaymentMethodUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    PaymentMethod.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'payment_method.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('PaymentMethodUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a payout is canceled.
final class PayoutCanceledEvent implements StripeEvent {
  /// Occurs whenever a payout is canceled.
  const PayoutCanceledEvent({required this.object});

  factory PayoutCanceledEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return PayoutCanceledEvent(object: Payout.fromJson(map['object']));
  }

  final Payout object;

  final String type = 'payout.canceled';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    PayoutCanceledEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Payout.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'payout.canceled',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('PayoutCanceledEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a payout is created.
final class PayoutCreatedEvent implements StripeEvent {
  /// Occurs whenever a payout is created.
  const PayoutCreatedEvent({required this.object});

  factory PayoutCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return PayoutCreatedEvent(object: Payout.fromJson(map['object']));
  }

  final Payout object;

  final String type = 'payout.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    PayoutCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Payout.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'payout.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('PayoutCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a payout attempt fails.
final class PayoutFailedEvent implements StripeEvent {
  /// Occurs whenever a payout attempt fails.
  const PayoutFailedEvent({required this.object});

  factory PayoutFailedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return PayoutFailedEvent(object: Payout.fromJson(map['object']));
  }

  final Payout object;

  final String type = 'payout.failed';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    PayoutFailedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Payout.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'payout.failed',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('PayoutFailedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a payout is *expected* to be available in the destination account. If the payout fails, a \`payout.failed\` notification is also sent, at a later time.
final class PayoutPaidEvent implements StripeEvent {
  /// Occurs whenever a payout is *expected* to be available in the destination account. If the payout fails, a \`payout.failed\` notification is also sent, at a later time.
  const PayoutPaidEvent({required this.object});

  factory PayoutPaidEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return PayoutPaidEvent(object: Payout.fromJson(map['object']));
  }

  final Payout object;

  final String type = 'payout.paid';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    PayoutPaidEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Payout.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'payout.paid',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('PayoutPaidEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever balance transactions paid out in an automatic payout can be queried.
final class PayoutReconciliationCompletedEvent implements StripeEvent {
  /// Occurs whenever balance transactions paid out in an automatic payout can be queried.
  const PayoutReconciliationCompletedEvent({required this.object});

  factory PayoutReconciliationCompletedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return PayoutReconciliationCompletedEvent(
        object: Payout.fromJson(map['object']));
  }

  final Payout object;

  final String type = 'payout.reconciliation_completed';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    PayoutReconciliationCompletedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Payout.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'payout.reconciliation_completed',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('PayoutReconciliationCompletedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a payout is updated.
final class PayoutUpdatedEvent implements StripeEvent {
  /// Occurs whenever a payout is updated.
  const PayoutUpdatedEvent({required this.object});

  factory PayoutUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return PayoutUpdatedEvent(object: Payout.fromJson(map['object']));
  }

  final Payout object;

  final String type = 'payout.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    PayoutUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Payout.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'payout.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('PayoutUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a person associated with an account is created.
final class PersonCreatedEvent implements StripeEvent {
  /// Occurs whenever a person associated with an account is created.
  const PersonCreatedEvent({required this.object});

  factory PersonCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return PersonCreatedEvent(object: Person.fromJson(map['object']));
  }

  final Person object;

  final String type = 'person.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    PersonCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Person.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'person.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('PersonCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a person associated with an account is deleted.
final class PersonDeletedEvent implements StripeEvent {
  /// Occurs whenever a person associated with an account is deleted.
  const PersonDeletedEvent({required this.object});

  factory PersonDeletedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return PersonDeletedEvent(object: Person.fromJson(map['object']));
  }

  final Person object;

  final String type = 'person.deleted';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    PersonDeletedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Person.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'person.deleted',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('PersonDeletedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a person associated with an account is updated.
final class PersonUpdatedEvent implements StripeEvent {
  /// Occurs whenever a person associated with an account is updated.
  const PersonUpdatedEvent({required this.object});

  factory PersonUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return PersonUpdatedEvent(object: Person.fromJson(map['object']));
  }

  final Person object;

  final String type = 'person.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    PersonUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Person.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'person.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('PersonUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a plan is created.
final class PlanCreatedEvent implements StripeEvent {
  /// Occurs whenever a plan is created.
  const PlanCreatedEvent({required this.object});

  factory PlanCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return PlanCreatedEvent(object: Plan.fromJson(map['object']));
  }

  final Plan object;

  final String type = 'plan.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    PlanCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Plan.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'plan.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('PlanCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a plan is deleted.
final class PlanDeletedEvent implements StripeEvent {
  /// Occurs whenever a plan is deleted.
  const PlanDeletedEvent({required this.object});

  factory PlanDeletedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return PlanDeletedEvent(object: Plan.fromJson(map['object']));
  }

  final Plan object;

  final String type = 'plan.deleted';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    PlanDeletedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Plan.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'plan.deleted',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('PlanDeletedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a plan is updated.
final class PlanUpdatedEvent implements StripeEvent {
  /// Occurs whenever a plan is updated.
  const PlanUpdatedEvent({required this.object});

  factory PlanUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return PlanUpdatedEvent(object: Plan.fromJson(map['object']));
  }

  final Plan object;

  final String type = 'plan.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    PlanUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Plan.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'plan.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('PlanUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a price is created.
final class PriceCreatedEvent implements StripeEvent {
  /// Occurs whenever a price is created.
  const PriceCreatedEvent({required this.object});

  factory PriceCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return PriceCreatedEvent(object: Price.fromJson(map['object']));
  }

  final Price object;

  final String type = 'price.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    PriceCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Price.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'price.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('PriceCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a price is deleted.
final class PriceDeletedEvent implements StripeEvent {
  /// Occurs whenever a price is deleted.
  const PriceDeletedEvent({required this.object});

  factory PriceDeletedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return PriceDeletedEvent(object: Price.fromJson(map['object']));
  }

  final Price object;

  final String type = 'price.deleted';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    PriceDeletedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Price.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'price.deleted',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('PriceDeletedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a price is updated.
final class PriceUpdatedEvent implements StripeEvent {
  /// Occurs whenever a price is updated.
  const PriceUpdatedEvent({required this.object});

  factory PriceUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return PriceUpdatedEvent(object: Price.fromJson(map['object']));
  }

  final Price object;

  final String type = 'price.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    PriceUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Price.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'price.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('PriceUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a product is created.
final class ProductCreatedEvent implements StripeEvent {
  /// Occurs whenever a product is created.
  const ProductCreatedEvent({required this.object});

  factory ProductCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return ProductCreatedEvent(object: Product.fromJson(map['object']));
  }

  final Product object;

  final String type = 'product.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    ProductCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Product.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'product.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('ProductCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a product is deleted.
final class ProductDeletedEvent implements StripeEvent {
  /// Occurs whenever a product is deleted.
  const ProductDeletedEvent({required this.object});

  factory ProductDeletedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return ProductDeletedEvent(object: Product.fromJson(map['object']));
  }

  final Product object;

  final String type = 'product.deleted';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    ProductDeletedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Product.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'product.deleted',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('ProductDeletedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a product is updated.
final class ProductUpdatedEvent implements StripeEvent {
  /// Occurs whenever a product is updated.
  const ProductUpdatedEvent({required this.object});

  factory ProductUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return ProductUpdatedEvent(object: Product.fromJson(map['object']));
  }

  final Product object;

  final String type = 'product.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    ProductUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Product.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'product.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('ProductUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a promotion code is created.
final class PromotionCodeCreatedEvent implements StripeEvent {
  /// Occurs whenever a promotion code is created.
  const PromotionCodeCreatedEvent({required this.object});

  factory PromotionCodeCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return PromotionCodeCreatedEvent(
        object: PromotionCode.fromJson(map['object']));
  }

  final PromotionCode object;

  final String type = 'promotion_code.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    PromotionCodeCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    PromotionCode.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'promotion_code.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('PromotionCodeCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a promotion code is updated.
final class PromotionCodeUpdatedEvent implements StripeEvent {
  /// Occurs whenever a promotion code is updated.
  const PromotionCodeUpdatedEvent({required this.object});

  factory PromotionCodeUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return PromotionCodeUpdatedEvent(
        object: PromotionCode.fromJson(map['object']));
  }

  final PromotionCode object;

  final String type = 'promotion_code.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    PromotionCodeUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    PromotionCode.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'promotion_code.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('PromotionCodeUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a quote is accepted.
final class QuoteAcceptedEvent implements StripeEvent {
  /// Occurs whenever a quote is accepted.
  const QuoteAcceptedEvent({required this.object});

  factory QuoteAcceptedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return QuoteAcceptedEvent(object: Quote.fromJson(map['object']));
  }

  final Quote object;

  final String type = 'quote.accepted';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    QuoteAcceptedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Quote.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'quote.accepted',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('QuoteAcceptedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a quote is canceled.
final class QuoteCanceledEvent implements StripeEvent {
  /// Occurs whenever a quote is canceled.
  const QuoteCanceledEvent({required this.object});

  factory QuoteCanceledEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return QuoteCanceledEvent(object: Quote.fromJson(map['object']));
  }

  final Quote object;

  final String type = 'quote.canceled';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    QuoteCanceledEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Quote.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'quote.canceled',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('QuoteCanceledEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a quote is created.
final class QuoteCreatedEvent implements StripeEvent {
  /// Occurs whenever a quote is created.
  const QuoteCreatedEvent({required this.object});

  factory QuoteCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return QuoteCreatedEvent(object: Quote.fromJson(map['object']));
  }

  final Quote object;

  final String type = 'quote.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    QuoteCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Quote.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'quote.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('QuoteCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a quote is finalized.
final class QuoteFinalizedEvent implements StripeEvent {
  /// Occurs whenever a quote is finalized.
  const QuoteFinalizedEvent({required this.object});

  factory QuoteFinalizedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return QuoteFinalizedEvent(object: Quote.fromJson(map['object']));
  }

  final Quote object;

  final String type = 'quote.finalized';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    QuoteFinalizedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Quote.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'quote.finalized',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('QuoteFinalizedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an early fraud warning is created.
final class RadarEarlyFraudWarningCreatedEvent implements StripeEvent {
  /// Occurs whenever an early fraud warning is created.
  const RadarEarlyFraudWarningCreatedEvent({required this.object});

  factory RadarEarlyFraudWarningCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return RadarEarlyFraudWarningCreatedEvent(
        object: RadarEarlyFraudWarning.fromJson(map['object']));
  }

  final RadarEarlyFraudWarning object;

  final String type = 'radar.early_fraud_warning.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    RadarEarlyFraudWarningCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    RadarEarlyFraudWarning.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'radar.early_fraud_warning.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('RadarEarlyFraudWarningCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an early fraud warning is updated.
final class RadarEarlyFraudWarningUpdatedEvent implements StripeEvent {
  /// Occurs whenever an early fraud warning is updated.
  const RadarEarlyFraudWarningUpdatedEvent({required this.object});

  factory RadarEarlyFraudWarningUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return RadarEarlyFraudWarningUpdatedEvent(
        object: RadarEarlyFraudWarning.fromJson(map['object']));
  }

  final RadarEarlyFraudWarning object;

  final String type = 'radar.early_fraud_warning.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    RadarEarlyFraudWarningUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    RadarEarlyFraudWarning.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'radar.early_fraud_warning.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('RadarEarlyFraudWarningUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a refund from a customer's cash balance is created.
final class RefundCreatedEvent implements StripeEvent {
  /// Occurs whenever a refund from a customer's cash balance is created.
  const RefundCreatedEvent({required this.object});

  factory RefundCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return RefundCreatedEvent(object: Refund.fromJson(map['object']));
  }

  final Refund object;

  final String type = 'refund.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    RefundCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Refund.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'refund.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('RefundCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a refund from a customer's cash balance is updated.
final class RefundUpdatedEvent implements StripeEvent {
  /// Occurs whenever a refund from a customer's cash balance is updated.
  const RefundUpdatedEvent({required this.object});

  factory RefundUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return RefundUpdatedEvent(object: Refund.fromJson(map['object']));
  }

  final Refund object;

  final String type = 'refund.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    RefundUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Refund.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'refund.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('RefundUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a requested \`ReportRun\` failed to complete.
final class ReportingReportRunFailedEvent implements StripeEvent {
  /// Occurs whenever a requested \`ReportRun\` failed to complete.
  const ReportingReportRunFailedEvent({required this.object});

  factory ReportingReportRunFailedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return ReportingReportRunFailedEvent(
        object: ReportingReportRun.fromJson(map['object']));
  }

  final ReportingReportRun object;

  final String type = 'reporting.report_run.failed';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    ReportingReportRunFailedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    ReportingReportRun.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'reporting.report_run.failed',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('ReportingReportRunFailedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a requested \`ReportRun\` completed successfully.
final class ReportingReportRunSucceededEvent implements StripeEvent {
  /// Occurs whenever a requested \`ReportRun\` completed successfully.
  const ReportingReportRunSucceededEvent({required this.object});

  factory ReportingReportRunSucceededEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return ReportingReportRunSucceededEvent(
        object: ReportingReportRun.fromJson(map['object']));
  }

  final ReportingReportRun object;

  final String type = 'reporting.report_run.succeeded';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    ReportingReportRunSucceededEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    ReportingReportRun.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'reporting.report_run.succeeded',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('ReportingReportRunSucceededEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a \`ReportType\` is updated (typically to indicate that a new day's data has come available).
final class ReportingReportTypeUpdatedEvent implements StripeEvent {
  /// Occurs whenever a \`ReportType\` is updated (typically to indicate that a new day's data has come available).
  const ReportingReportTypeUpdatedEvent({required this.object});

  factory ReportingReportTypeUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return ReportingReportTypeUpdatedEvent(
        object: ReportingReportType.fromJson(map['object']));
  }

  final ReportingReportType object;

  final String type = 'reporting.report_type.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    ReportingReportTypeUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    ReportingReportType.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'reporting.report_type.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('ReportingReportTypeUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a review is closed. The review's \`reason\` field indicates why: \`approved\`, \`disputed\`, \`refunded\`, or \`refunded\_as\_fraud\`.
final class ReviewClosedEvent implements StripeEvent {
  /// Occurs whenever a review is closed. The review's \`reason\` field indicates why: \`approved\`, \`disputed\`, \`refunded\`, or \`refunded\_as\_fraud\`.
  const ReviewClosedEvent({required this.object});

  factory ReviewClosedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return ReviewClosedEvent(object: Review.fromJson(map['object']));
  }

  final Review object;

  final String type = 'review.closed';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    ReviewClosedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Review.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'review.closed',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('ReviewClosedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a review is opened.
final class ReviewOpenedEvent implements StripeEvent {
  /// Occurs whenever a review is opened.
  const ReviewOpenedEvent({required this.object});

  factory ReviewOpenedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return ReviewOpenedEvent(object: Review.fromJson(map['object']));
  }

  final Review object;

  final String type = 'review.opened';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    ReviewOpenedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Review.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'review.opened',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('ReviewOpenedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs when a SetupIntent is canceled.
final class SetupIntentCanceledEvent implements StripeEvent {
  /// Occurs when a SetupIntent is canceled.
  const SetupIntentCanceledEvent({required this.object});

  factory SetupIntentCanceledEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return SetupIntentCanceledEvent(
        object: SetupIntent.fromJson(map['object']));
  }

  final SetupIntent object;

  final String type = 'setup_intent.canceled';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    SetupIntentCanceledEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    SetupIntent.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'setup_intent.canceled',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('SetupIntentCanceledEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs when a new SetupIntent is created.
final class SetupIntentCreatedEvent implements StripeEvent {
  /// Occurs when a new SetupIntent is created.
  const SetupIntentCreatedEvent({required this.object});

  factory SetupIntentCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return SetupIntentCreatedEvent(object: SetupIntent.fromJson(map['object']));
  }

  final SetupIntent object;

  final String type = 'setup_intent.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    SetupIntentCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    SetupIntent.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'setup_intent.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('SetupIntentCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs when a SetupIntent is in requires_action state.
final class SetupIntentRequiresActionEvent implements StripeEvent {
  /// Occurs when a SetupIntent is in requires_action state.
  const SetupIntentRequiresActionEvent({required this.object});

  factory SetupIntentRequiresActionEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return SetupIntentRequiresActionEvent(
        object: SetupIntent.fromJson(map['object']));
  }

  final SetupIntent object;

  final String type = 'setup_intent.requires_action';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    SetupIntentRequiresActionEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    SetupIntent.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'setup_intent.requires_action',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('SetupIntentRequiresActionEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs when a SetupIntent has failed the attempt to setup a payment method.
final class SetupIntentSetupFailedEvent implements StripeEvent {
  /// Occurs when a SetupIntent has failed the attempt to setup a payment method.
  const SetupIntentSetupFailedEvent({required this.object});

  factory SetupIntentSetupFailedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return SetupIntentSetupFailedEvent(
        object: SetupIntent.fromJson(map['object']));
  }

  final SetupIntent object;

  final String type = 'setup_intent.setup_failed';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    SetupIntentSetupFailedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    SetupIntent.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'setup_intent.setup_failed',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('SetupIntentSetupFailedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs when an SetupIntent has successfully setup a payment method.
final class SetupIntentSucceededEvent implements StripeEvent {
  /// Occurs when an SetupIntent has successfully setup a payment method.
  const SetupIntentSucceededEvent({required this.object});

  factory SetupIntentSucceededEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return SetupIntentSucceededEvent(
        object: SetupIntent.fromJson(map['object']));
  }

  final SetupIntent object;

  final String type = 'setup_intent.succeeded';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    SetupIntentSucceededEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    SetupIntent.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'setup_intent.succeeded',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('SetupIntentSucceededEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a Sigma scheduled query run finishes.
final class SigmaScheduledQueryRunCreatedEvent implements StripeEvent {
  /// Occurs whenever a Sigma scheduled query run finishes.
  const SigmaScheduledQueryRunCreatedEvent({required this.object});

  factory SigmaScheduledQueryRunCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return SigmaScheduledQueryRunCreatedEvent(
        object: ScheduledQueryRun.fromJson(map['object']));
  }

  final ScheduledQueryRun object;

  final String type = 'sigma.scheduled_query_run.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    SigmaScheduledQueryRunCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    ScheduledQueryRun.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'sigma.scheduled_query_run.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('SigmaScheduledQueryRunCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a source is canceled.
final class SourceCanceledEvent implements StripeEvent {
  /// Occurs whenever a source is canceled.
  const SourceCanceledEvent({required this.object});

  factory SourceCanceledEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return SourceCanceledEvent(object: Source.fromJson(map['object']));
  }

  final Source object;

  final String type = 'source.canceled';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    SourceCanceledEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Source.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'source.canceled',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('SourceCanceledEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a source transitions to chargeable.
final class SourceChargeableEvent implements StripeEvent {
  /// Occurs whenever a source transitions to chargeable.
  const SourceChargeableEvent({required this.object});

  factory SourceChargeableEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return SourceChargeableEvent(object: Source.fromJson(map['object']));
  }

  final Source object;

  final String type = 'source.chargeable';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    SourceChargeableEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Source.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'source.chargeable',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('SourceChargeableEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a source fails.
final class SourceFailedEvent implements StripeEvent {
  /// Occurs whenever a source fails.
  const SourceFailedEvent({required this.object});

  factory SourceFailedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return SourceFailedEvent(object: Source.fromJson(map['object']));
  }

  final Source object;

  final String type = 'source.failed';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    SourceFailedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Source.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'source.failed',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('SourceFailedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a source mandate notification method is set to manual.
final class SourceMandateNotificationEvent implements StripeEvent {
  /// Occurs whenever a source mandate notification method is set to manual.
  const SourceMandateNotificationEvent({required this.object});

  factory SourceMandateNotificationEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return SourceMandateNotificationEvent(
        object: SourceMandateNotification.fromJson(map['object']));
  }

  final SourceMandateNotification object;

  final String type = 'source.mandate_notification';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    SourceMandateNotificationEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    SourceMandateNotification.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'source.mandate_notification',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('SourceMandateNotificationEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever the refund attributes are required on a receiver source to process a refund or a mispayment.
final class SourceRefundAttributesRequiredEvent implements StripeEvent {
  /// Occurs whenever the refund attributes are required on a receiver source to process a refund or a mispayment.
  const SourceRefundAttributesRequiredEvent({required this.object});

  factory SourceRefundAttributesRequiredEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return SourceRefundAttributesRequiredEvent(
        object: Source.fromJson(map['object']));
  }

  final Source object;

  final String type = 'source.refund_attributes_required';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    SourceRefundAttributesRequiredEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Source.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'source.refund_attributes_required',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('SourceRefundAttributesRequiredEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a source transaction is created.
final class SourceTransactionCreatedEvent implements StripeEvent {
  /// Occurs whenever a source transaction is created.
  const SourceTransactionCreatedEvent({required this.object});

  factory SourceTransactionCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return SourceTransactionCreatedEvent(
        object: SourceTransaction.fromJson(map['object']));
  }

  final SourceTransaction object;

  final String type = 'source.transaction.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    SourceTransactionCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    SourceTransaction.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'source.transaction.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('SourceTransactionCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a source transaction is updated.
final class SourceTransactionUpdatedEvent implements StripeEvent {
  /// Occurs whenever a source transaction is updated.
  const SourceTransactionUpdatedEvent({required this.object});

  factory SourceTransactionUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return SourceTransactionUpdatedEvent(
        object: SourceTransaction.fromJson(map['object']));
  }

  final SourceTransaction object;

  final String type = 'source.transaction.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    SourceTransactionUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    SourceTransaction.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'source.transaction.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('SourceTransactionUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a subscription schedule is canceled due to the underlying subscription being canceled because of delinquency.
final class SubscriptionScheduleAbortedEvent implements StripeEvent {
  /// Occurs whenever a subscription schedule is canceled due to the underlying subscription being canceled because of delinquency.
  const SubscriptionScheduleAbortedEvent({required this.object});

  factory SubscriptionScheduleAbortedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return SubscriptionScheduleAbortedEvent(
        object: SubscriptionSchedule.fromJson(map['object']));
  }

  final SubscriptionSchedule object;

  final String type = 'subscription_schedule.aborted';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    SubscriptionScheduleAbortedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    SubscriptionSchedule.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'subscription_schedule.aborted',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('SubscriptionScheduleAbortedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a subscription schedule is canceled.
final class SubscriptionScheduleCanceledEvent implements StripeEvent {
  /// Occurs whenever a subscription schedule is canceled.
  const SubscriptionScheduleCanceledEvent({required this.object});

  factory SubscriptionScheduleCanceledEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return SubscriptionScheduleCanceledEvent(
        object: SubscriptionSchedule.fromJson(map['object']));
  }

  final SubscriptionSchedule object;

  final String type = 'subscription_schedule.canceled';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    SubscriptionScheduleCanceledEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    SubscriptionSchedule.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'subscription_schedule.canceled',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('SubscriptionScheduleCanceledEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a new subscription schedule is completed.
final class SubscriptionScheduleCompletedEvent implements StripeEvent {
  /// Occurs whenever a new subscription schedule is completed.
  const SubscriptionScheduleCompletedEvent({required this.object});

  factory SubscriptionScheduleCompletedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return SubscriptionScheduleCompletedEvent(
        object: SubscriptionSchedule.fromJson(map['object']));
  }

  final SubscriptionSchedule object;

  final String type = 'subscription_schedule.completed';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    SubscriptionScheduleCompletedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    SubscriptionSchedule.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'subscription_schedule.completed',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('SubscriptionScheduleCompletedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a new subscription schedule is created.
final class SubscriptionScheduleCreatedEvent implements StripeEvent {
  /// Occurs whenever a new subscription schedule is created.
  const SubscriptionScheduleCreatedEvent({required this.object});

  factory SubscriptionScheduleCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return SubscriptionScheduleCreatedEvent(
        object: SubscriptionSchedule.fromJson(map['object']));
  }

  final SubscriptionSchedule object;

  final String type = 'subscription_schedule.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    SubscriptionScheduleCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    SubscriptionSchedule.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'subscription_schedule.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('SubscriptionScheduleCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs 7 days before a subscription schedule will expire.
final class SubscriptionScheduleExpiringEvent implements StripeEvent {
  /// Occurs 7 days before a subscription schedule will expire.
  const SubscriptionScheduleExpiringEvent({required this.object});

  factory SubscriptionScheduleExpiringEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return SubscriptionScheduleExpiringEvent(
        object: SubscriptionSchedule.fromJson(map['object']));
  }

  final SubscriptionSchedule object;

  final String type = 'subscription_schedule.expiring';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    SubscriptionScheduleExpiringEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    SubscriptionSchedule.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'subscription_schedule.expiring',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('SubscriptionScheduleExpiringEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a new subscription schedule is released.
final class SubscriptionScheduleReleasedEvent implements StripeEvent {
  /// Occurs whenever a new subscription schedule is released.
  const SubscriptionScheduleReleasedEvent({required this.object});

  factory SubscriptionScheduleReleasedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return SubscriptionScheduleReleasedEvent(
        object: SubscriptionSchedule.fromJson(map['object']));
  }

  final SubscriptionSchedule object;

  final String type = 'subscription_schedule.released';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    SubscriptionScheduleReleasedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    SubscriptionSchedule.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'subscription_schedule.released',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('SubscriptionScheduleReleasedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a subscription schedule is updated.
final class SubscriptionScheduleUpdatedEvent implements StripeEvent {
  /// Occurs whenever a subscription schedule is updated.
  const SubscriptionScheduleUpdatedEvent({required this.object});

  factory SubscriptionScheduleUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return SubscriptionScheduleUpdatedEvent(
        object: SubscriptionSchedule.fromJson(map['object']));
  }

  final SubscriptionSchedule object;

  final String type = 'subscription_schedule.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    SubscriptionScheduleUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    SubscriptionSchedule.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'subscription_schedule.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('SubscriptionScheduleUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever tax settings is updated.
final class TaxSettingsUpdatedEvent implements StripeEvent {
  /// Occurs whenever tax settings is updated.
  const TaxSettingsUpdatedEvent({required this.object});

  factory TaxSettingsUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TaxSettingsUpdatedEvent(object: TaxSettings.fromJson(map['object']));
  }

  final TaxSettings object;

  final String type = 'tax.settings.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TaxSettingsUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TaxSettings.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'tax.settings.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('TaxSettingsUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a new tax rate is created.
final class TaxRateCreatedEvent implements StripeEvent {
  /// Occurs whenever a new tax rate is created.
  const TaxRateCreatedEvent({required this.object});

  factory TaxRateCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TaxRateCreatedEvent(object: TaxRate.fromJson(map['object']));
  }

  final TaxRate object;

  final String type = 'tax_rate.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TaxRateCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TaxRate.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'tax_rate.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('TaxRateCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a tax rate is updated.
final class TaxRateUpdatedEvent implements StripeEvent {
  /// Occurs whenever a tax rate is updated.
  const TaxRateUpdatedEvent({required this.object});

  factory TaxRateUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TaxRateUpdatedEvent(object: TaxRate.fromJson(map['object']));
  }

  final TaxRate object;

  final String type = 'tax_rate.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TaxRateUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TaxRate.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'tax_rate.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('TaxRateUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an action sent to a Terminal reader failed.
final class TerminalReaderActionFailedEvent implements StripeEvent {
  /// Occurs whenever an action sent to a Terminal reader failed.
  const TerminalReaderActionFailedEvent({required this.object});

  factory TerminalReaderActionFailedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TerminalReaderActionFailedEvent(
        object: TerminalReader.fromJson(map['object']));
  }

  final TerminalReader object;

  final String type = 'terminal.reader.action_failed';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TerminalReaderActionFailedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TerminalReader.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'terminal.reader.action_failed',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('TerminalReaderActionFailedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an action sent to a Terminal reader was successful.
final class TerminalReaderActionSucceededEvent implements StripeEvent {
  /// Occurs whenever an action sent to a Terminal reader was successful.
  const TerminalReaderActionSucceededEvent({required this.object});

  factory TerminalReaderActionSucceededEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TerminalReaderActionSucceededEvent(
        object: TerminalReader.fromJson(map['object']));
  }

  final TerminalReader object;

  final String type = 'terminal.reader.action_succeeded';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TerminalReaderActionSucceededEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TerminalReader.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'terminal.reader.action_succeeded',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('TerminalReaderActionSucceededEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a test clock starts advancing.
final class TestHelpersTestClockAdvancingEvent implements StripeEvent {
  /// Occurs whenever a test clock starts advancing.
  const TestHelpersTestClockAdvancingEvent({required this.object});

  factory TestHelpersTestClockAdvancingEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TestHelpersTestClockAdvancingEvent(
        object: TestHelpersTestClock.fromJson(map['object']));
  }

  final TestHelpersTestClock object;

  final String type = 'test_helpers.test_clock.advancing';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TestHelpersTestClockAdvancingEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TestHelpersTestClock.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'test_helpers.test_clock.advancing',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('TestHelpersTestClockAdvancingEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a test clock is created.
final class TestHelpersTestClockCreatedEvent implements StripeEvent {
  /// Occurs whenever a test clock is created.
  const TestHelpersTestClockCreatedEvent({required this.object});

  factory TestHelpersTestClockCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TestHelpersTestClockCreatedEvent(
        object: TestHelpersTestClock.fromJson(map['object']));
  }

  final TestHelpersTestClock object;

  final String type = 'test_helpers.test_clock.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TestHelpersTestClockCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TestHelpersTestClock.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'test_helpers.test_clock.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('TestHelpersTestClockCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a test clock is deleted.
final class TestHelpersTestClockDeletedEvent implements StripeEvent {
  /// Occurs whenever a test clock is deleted.
  const TestHelpersTestClockDeletedEvent({required this.object});

  factory TestHelpersTestClockDeletedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TestHelpersTestClockDeletedEvent(
        object: TestHelpersTestClock.fromJson(map['object']));
  }

  final TestHelpersTestClock object;

  final String type = 'test_helpers.test_clock.deleted';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TestHelpersTestClockDeletedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TestHelpersTestClock.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'test_helpers.test_clock.deleted',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('TestHelpersTestClockDeletedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a test clock fails to advance its frozen time.
final class TestHelpersTestClockInternalFailureEvent implements StripeEvent {
  /// Occurs whenever a test clock fails to advance its frozen time.
  const TestHelpersTestClockInternalFailureEvent({required this.object});

  factory TestHelpersTestClockInternalFailureEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TestHelpersTestClockInternalFailureEvent(
        object: TestHelpersTestClock.fromJson(map['object']));
  }

  final TestHelpersTestClock object;

  final String type = 'test_helpers.test_clock.internal_failure';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TestHelpersTestClockInternalFailureEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TestHelpersTestClock.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'test_helpers.test_clock.internal_failure',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('TestHelpersTestClockInternalFailureEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a test clock transitions to a ready status.
final class TestHelpersTestClockReadyEvent implements StripeEvent {
  /// Occurs whenever a test clock transitions to a ready status.
  const TestHelpersTestClockReadyEvent({required this.object});

  factory TestHelpersTestClockReadyEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TestHelpersTestClockReadyEvent(
        object: TestHelpersTestClock.fromJson(map['object']));
  }

  final TestHelpersTestClock object;

  final String type = 'test_helpers.test_clock.ready';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TestHelpersTestClockReadyEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TestHelpersTestClock.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'test_helpers.test_clock.ready',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('TestHelpersTestClockReadyEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a top-up is canceled.
final class TopupCanceledEvent implements StripeEvent {
  /// Occurs whenever a top-up is canceled.
  const TopupCanceledEvent({required this.object});

  factory TopupCanceledEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TopupCanceledEvent(object: Topup.fromJson(map['object']));
  }

  final Topup object;

  final String type = 'topup.canceled';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TopupCanceledEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Topup.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'topup.canceled',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('TopupCanceledEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a top-up is created.
final class TopupCreatedEvent implements StripeEvent {
  /// Occurs whenever a top-up is created.
  const TopupCreatedEvent({required this.object});

  factory TopupCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TopupCreatedEvent(object: Topup.fromJson(map['object']));
  }

  final Topup object;

  final String type = 'topup.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TopupCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Topup.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'topup.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('TopupCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a top-up fails.
final class TopupFailedEvent implements StripeEvent {
  /// Occurs whenever a top-up fails.
  const TopupFailedEvent({required this.object});

  factory TopupFailedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TopupFailedEvent(object: Topup.fromJson(map['object']));
  }

  final Topup object;

  final String type = 'topup.failed';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TopupFailedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Topup.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'topup.failed',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('TopupFailedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a top-up is reversed.
final class TopupReversedEvent implements StripeEvent {
  /// Occurs whenever a top-up is reversed.
  const TopupReversedEvent({required this.object});

  factory TopupReversedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TopupReversedEvent(object: Topup.fromJson(map['object']));
  }

  final Topup object;

  final String type = 'topup.reversed';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TopupReversedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Topup.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'topup.reversed',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('TopupReversedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a top-up succeeds.
final class TopupSucceededEvent implements StripeEvent {
  /// Occurs whenever a top-up succeeds.
  const TopupSucceededEvent({required this.object});

  factory TopupSucceededEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TopupSucceededEvent(object: Topup.fromJson(map['object']));
  }

  final Topup object;

  final String type = 'topup.succeeded';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TopupSucceededEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Topup.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'topup.succeeded',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('TopupSucceededEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a transfer is created.
final class TransferCreatedEvent implements StripeEvent {
  /// Occurs whenever a transfer is created.
  const TransferCreatedEvent({required this.object});

  factory TransferCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TransferCreatedEvent(object: Transfer.fromJson(map['object']));
  }

  final Transfer object;

  final String type = 'transfer.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TransferCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Transfer.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'transfer.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('TransferCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a transfer is reversed, including partial reversals.
final class TransferReversedEvent implements StripeEvent {
  /// Occurs whenever a transfer is reversed, including partial reversals.
  const TransferReversedEvent({required this.object});

  factory TransferReversedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TransferReversedEvent(object: Transfer.fromJson(map['object']));
  }

  final Transfer object;

  final String type = 'transfer.reversed';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TransferReversedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Transfer.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'transfer.reversed',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('TransferReversedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a transfer's description or metadata is updated.
final class TransferUpdatedEvent implements StripeEvent {
  /// Occurs whenever a transfer's description or metadata is updated.
  const TransferUpdatedEvent({required this.object});

  factory TransferUpdatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TransferUpdatedEvent(object: Transfer.fromJson(map['object']));
  }

  final Transfer object;

  final String type = 'transfer.updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TransferUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    Transfer.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'transfer.updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('TransferUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an CreditReversal is submitted and created.
final class TreasuryCreditReversalCreatedEvent implements StripeEvent {
  /// Occurs whenever an CreditReversal is submitted and created.
  const TreasuryCreditReversalCreatedEvent({required this.object});

  factory TreasuryCreditReversalCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TreasuryCreditReversalCreatedEvent(
        object: TreasuryCreditReversal.fromJson(map['object']));
  }

  final TreasuryCreditReversal object;

  final String type = 'treasury.credit_reversal.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TreasuryCreditReversalCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TreasuryCreditReversal.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'treasury.credit_reversal.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('TreasuryCreditReversalCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an CreditReversal post is posted.
final class TreasuryCreditReversalPostedEvent implements StripeEvent {
  /// Occurs whenever an CreditReversal post is posted.
  const TreasuryCreditReversalPostedEvent({required this.object});

  factory TreasuryCreditReversalPostedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TreasuryCreditReversalPostedEvent(
        object: TreasuryCreditReversal.fromJson(map['object']));
  }

  final TreasuryCreditReversal object;

  final String type = 'treasury.credit_reversal.posted';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TreasuryCreditReversalPostedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TreasuryCreditReversal.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'treasury.credit_reversal.posted',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('TreasuryCreditReversalPostedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a DebitReversal is completed.
final class TreasuryDebitReversalCompletedEvent implements StripeEvent {
  /// Occurs whenever a DebitReversal is completed.
  const TreasuryDebitReversalCompletedEvent({required this.object});

  factory TreasuryDebitReversalCompletedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TreasuryDebitReversalCompletedEvent(
        object: TreasuryDebitReversal.fromJson(map['object']));
  }

  final TreasuryDebitReversal object;

  final String type = 'treasury.debit_reversal.completed';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TreasuryDebitReversalCompletedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TreasuryDebitReversal.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'treasury.debit_reversal.completed',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('TreasuryDebitReversalCompletedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a DebitReversal is created.
final class TreasuryDebitReversalCreatedEvent implements StripeEvent {
  /// Occurs whenever a DebitReversal is created.
  const TreasuryDebitReversalCreatedEvent({required this.object});

  factory TreasuryDebitReversalCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TreasuryDebitReversalCreatedEvent(
        object: TreasuryDebitReversal.fromJson(map['object']));
  }

  final TreasuryDebitReversal object;

  final String type = 'treasury.debit_reversal.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TreasuryDebitReversalCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TreasuryDebitReversal.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'treasury.debit_reversal.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('TreasuryDebitReversalCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an initial credit is granted on a DebitReversal.
final class TreasuryDebitReversalInitialCreditGrantedEvent
    implements StripeEvent {
  /// Occurs whenever an initial credit is granted on a DebitReversal.
  const TreasuryDebitReversalInitialCreditGrantedEvent({required this.object});

  factory TreasuryDebitReversalInitialCreditGrantedEvent.fromJson(
      Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TreasuryDebitReversalInitialCreditGrantedEvent(
        object: TreasuryDebitReversal.fromJson(map['object']));
  }

  final TreasuryDebitReversal object;

  final String type = 'treasury.debit_reversal.initial_credit_granted';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TreasuryDebitReversalInitialCreditGrantedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TreasuryDebitReversal.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'treasury.debit_reversal.initial_credit_granted',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('TreasuryDebitReversalInitialCreditGrantedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever the status of the FinancialAccount becomes closed.
final class TreasuryFinancialAccountClosedEvent implements StripeEvent {
  /// Occurs whenever the status of the FinancialAccount becomes closed.
  const TreasuryFinancialAccountClosedEvent({required this.object});

  factory TreasuryFinancialAccountClosedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TreasuryFinancialAccountClosedEvent(
        object: TreasuryFinancialAccount.fromJson(map['object']));
  }

  final TreasuryFinancialAccount object;

  final String type = 'treasury.financial_account.closed';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TreasuryFinancialAccountClosedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TreasuryFinancialAccount.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'treasury.financial_account.closed',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('TreasuryFinancialAccountClosedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a new FinancialAccount is created.
final class TreasuryFinancialAccountCreatedEvent implements StripeEvent {
  /// Occurs whenever a new FinancialAccount is created.
  const TreasuryFinancialAccountCreatedEvent({required this.object});

  factory TreasuryFinancialAccountCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TreasuryFinancialAccountCreatedEvent(
        object: TreasuryFinancialAccount.fromJson(map['object']));
  }

  final TreasuryFinancialAccount object;

  final String type = 'treasury.financial_account.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TreasuryFinancialAccountCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TreasuryFinancialAccount.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'treasury.financial_account.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('TreasuryFinancialAccountCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever the statuses of any features within an existing FinancialAccount are updated.
final class TreasuryFinancialAccountFeaturesStatusUpdatedEvent
    implements StripeEvent {
  /// Occurs whenever the statuses of any features within an existing FinancialAccount are updated.
  const TreasuryFinancialAccountFeaturesStatusUpdatedEvent(
      {required this.object});

  factory TreasuryFinancialAccountFeaturesStatusUpdatedEvent.fromJson(
      Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TreasuryFinancialAccountFeaturesStatusUpdatedEvent(
        object: TreasuryFinancialAccount.fromJson(map['object']));
  }

  final TreasuryFinancialAccount object;

  final String type = 'treasury.financial_account.features_status_updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TreasuryFinancialAccountFeaturesStatusUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TreasuryFinancialAccount.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'treasury.financial_account.features_status_updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('TreasuryFinancialAccountFeaturesStatusUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an InboundTransfer is canceled.
final class TreasuryInboundTransferCanceledEvent implements StripeEvent {
  /// Occurs whenever an InboundTransfer is canceled.
  const TreasuryInboundTransferCanceledEvent({required this.object});

  factory TreasuryInboundTransferCanceledEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TreasuryInboundTransferCanceledEvent(
        object: TreasuryInboundTransfer.fromJson(map['object']));
  }

  final TreasuryInboundTransfer object;

  final String type = 'treasury.inbound_transfer.canceled';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TreasuryInboundTransferCanceledEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TreasuryInboundTransfer.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'treasury.inbound_transfer.canceled',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('TreasuryInboundTransferCanceledEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an InboundTransfer is created.
final class TreasuryInboundTransferCreatedEvent implements StripeEvent {
  /// Occurs whenever an InboundTransfer is created.
  const TreasuryInboundTransferCreatedEvent({required this.object});

  factory TreasuryInboundTransferCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TreasuryInboundTransferCreatedEvent(
        object: TreasuryInboundTransfer.fromJson(map['object']));
  }

  final TreasuryInboundTransfer object;

  final String type = 'treasury.inbound_transfer.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TreasuryInboundTransferCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TreasuryInboundTransfer.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'treasury.inbound_transfer.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('TreasuryInboundTransferCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an InboundTransfer has failed.
final class TreasuryInboundTransferFailedEvent implements StripeEvent {
  /// Occurs whenever an InboundTransfer has failed.
  const TreasuryInboundTransferFailedEvent({required this.object});

  factory TreasuryInboundTransferFailedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TreasuryInboundTransferFailedEvent(
        object: TreasuryInboundTransfer.fromJson(map['object']));
  }

  final TreasuryInboundTransfer object;

  final String type = 'treasury.inbound_transfer.failed';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TreasuryInboundTransferFailedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TreasuryInboundTransfer.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'treasury.inbound_transfer.failed',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('TreasuryInboundTransferFailedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an InboundTransfer has succeeded.
final class TreasuryInboundTransferSucceededEvent implements StripeEvent {
  /// Occurs whenever an InboundTransfer has succeeded.
  const TreasuryInboundTransferSucceededEvent({required this.object});

  factory TreasuryInboundTransferSucceededEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TreasuryInboundTransferSucceededEvent(
        object: TreasuryInboundTransfer.fromJson(map['object']));
  }

  final TreasuryInboundTransfer object;

  final String type = 'treasury.inbound_transfer.succeeded';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TreasuryInboundTransferSucceededEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TreasuryInboundTransfer.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'treasury.inbound_transfer.succeeded',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('TreasuryInboundTransferSucceededEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an OutboundPayment is canceled.
final class TreasuryOutboundPaymentCanceledEvent implements StripeEvent {
  /// Occurs whenever an OutboundPayment is canceled.
  const TreasuryOutboundPaymentCanceledEvent({required this.object});

  factory TreasuryOutboundPaymentCanceledEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TreasuryOutboundPaymentCanceledEvent(
        object: TreasuryOutboundPayment.fromJson(map['object']));
  }

  final TreasuryOutboundPayment object;

  final String type = 'treasury.outbound_payment.canceled';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TreasuryOutboundPaymentCanceledEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TreasuryOutboundPayment.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'treasury.outbound_payment.canceled',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('TreasuryOutboundPaymentCanceledEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a new OutboundPayment is successfully created.
final class TreasuryOutboundPaymentCreatedEvent implements StripeEvent {
  /// Occurs whenever a new OutboundPayment is successfully created.
  const TreasuryOutboundPaymentCreatedEvent({required this.object});

  factory TreasuryOutboundPaymentCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TreasuryOutboundPaymentCreatedEvent(
        object: TreasuryOutboundPayment.fromJson(map['object']));
  }

  final TreasuryOutboundPayment object;

  final String type = 'treasury.outbound_payment.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TreasuryOutboundPaymentCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TreasuryOutboundPayment.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'treasury.outbound_payment.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('TreasuryOutboundPaymentCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever the arrival date on an OutboundPayment updates.
final class TreasuryOutboundPaymentExpectedArrivalDateUpdatedEvent
    implements StripeEvent {
  /// Occurs whenever the arrival date on an OutboundPayment updates.
  const TreasuryOutboundPaymentExpectedArrivalDateUpdatedEvent(
      {required this.object});

  factory TreasuryOutboundPaymentExpectedArrivalDateUpdatedEvent.fromJson(
      Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TreasuryOutboundPaymentExpectedArrivalDateUpdatedEvent(
        object: TreasuryOutboundPayment.fromJson(map['object']));
  }

  final TreasuryOutboundPayment object;

  final String type = 'treasury.outbound_payment.expected_arrival_date_updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TreasuryOutboundPaymentExpectedArrivalDateUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TreasuryOutboundPayment.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'treasury.outbound_payment.expected_arrival_date_updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('TreasuryOutboundPaymentExpectedArrivalDateUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an OutboundPayment fails.
final class TreasuryOutboundPaymentFailedEvent implements StripeEvent {
  /// Occurs whenever an OutboundPayment fails.
  const TreasuryOutboundPaymentFailedEvent({required this.object});

  factory TreasuryOutboundPaymentFailedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TreasuryOutboundPaymentFailedEvent(
        object: TreasuryOutboundPayment.fromJson(map['object']));
  }

  final TreasuryOutboundPayment object;

  final String type = 'treasury.outbound_payment.failed';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TreasuryOutboundPaymentFailedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TreasuryOutboundPayment.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'treasury.outbound_payment.failed',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('TreasuryOutboundPaymentFailedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an OutboundPayment posts.
final class TreasuryOutboundPaymentPostedEvent implements StripeEvent {
  /// Occurs whenever an OutboundPayment posts.
  const TreasuryOutboundPaymentPostedEvent({required this.object});

  factory TreasuryOutboundPaymentPostedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TreasuryOutboundPaymentPostedEvent(
        object: TreasuryOutboundPayment.fromJson(map['object']));
  }

  final TreasuryOutboundPayment object;

  final String type = 'treasury.outbound_payment.posted';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TreasuryOutboundPaymentPostedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TreasuryOutboundPayment.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'treasury.outbound_payment.posted',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('TreasuryOutboundPaymentPostedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an OutboundPayment was returned.
final class TreasuryOutboundPaymentReturnedEvent implements StripeEvent {
  /// Occurs whenever an OutboundPayment was returned.
  const TreasuryOutboundPaymentReturnedEvent({required this.object});

  factory TreasuryOutboundPaymentReturnedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TreasuryOutboundPaymentReturnedEvent(
        object: TreasuryOutboundPayment.fromJson(map['object']));
  }

  final TreasuryOutboundPayment object;

  final String type = 'treasury.outbound_payment.returned';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TreasuryOutboundPaymentReturnedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TreasuryOutboundPayment.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'treasury.outbound_payment.returned',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('TreasuryOutboundPaymentReturnedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an OutboundTransfer is canceled.
final class TreasuryOutboundTransferCanceledEvent implements StripeEvent {
  /// Occurs whenever an OutboundTransfer is canceled.
  const TreasuryOutboundTransferCanceledEvent({required this.object});

  factory TreasuryOutboundTransferCanceledEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TreasuryOutboundTransferCanceledEvent(
        object: TreasuryOutboundTransfer.fromJson(map['object']));
  }

  final TreasuryOutboundTransfer object;

  final String type = 'treasury.outbound_transfer.canceled';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TreasuryOutboundTransferCanceledEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TreasuryOutboundTransfer.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'treasury.outbound_transfer.canceled',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('TreasuryOutboundTransferCanceledEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an OutboundTransfer is created.
final class TreasuryOutboundTransferCreatedEvent implements StripeEvent {
  /// Occurs whenever an OutboundTransfer is created.
  const TreasuryOutboundTransferCreatedEvent({required this.object});

  factory TreasuryOutboundTransferCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TreasuryOutboundTransferCreatedEvent(
        object: TreasuryOutboundTransfer.fromJson(map['object']));
  }

  final TreasuryOutboundTransfer object;

  final String type = 'treasury.outbound_transfer.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TreasuryOutboundTransferCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TreasuryOutboundTransfer.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'treasury.outbound_transfer.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('TreasuryOutboundTransferCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever the arrival date on an OutboundTransfer updates.
final class TreasuryOutboundTransferExpectedArrivalDateUpdatedEvent
    implements StripeEvent {
  /// Occurs whenever the arrival date on an OutboundTransfer updates.
  const TreasuryOutboundTransferExpectedArrivalDateUpdatedEvent(
      {required this.object});

  factory TreasuryOutboundTransferExpectedArrivalDateUpdatedEvent.fromJson(
      Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TreasuryOutboundTransferExpectedArrivalDateUpdatedEvent(
        object: TreasuryOutboundTransfer.fromJson(map['object']));
  }

  final TreasuryOutboundTransfer object;

  final String type =
      'treasury.outbound_transfer.expected_arrival_date_updated';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TreasuryOutboundTransferExpectedArrivalDateUpdatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TreasuryOutboundTransfer.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'treasury.outbound_transfer.expected_arrival_date_updated',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('TreasuryOutboundTransferExpectedArrivalDateUpdatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an OutboundTransfer has failed.
final class TreasuryOutboundTransferFailedEvent implements StripeEvent {
  /// Occurs whenever an OutboundTransfer has failed.
  const TreasuryOutboundTransferFailedEvent({required this.object});

  factory TreasuryOutboundTransferFailedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TreasuryOutboundTransferFailedEvent(
        object: TreasuryOutboundTransfer.fromJson(map['object']));
  }

  final TreasuryOutboundTransfer object;

  final String type = 'treasury.outbound_transfer.failed';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TreasuryOutboundTransferFailedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TreasuryOutboundTransfer.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'treasury.outbound_transfer.failed',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('TreasuryOutboundTransferFailedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an OutboundTransfer is posted.
final class TreasuryOutboundTransferPostedEvent implements StripeEvent {
  /// Occurs whenever an OutboundTransfer is posted.
  const TreasuryOutboundTransferPostedEvent({required this.object});

  factory TreasuryOutboundTransferPostedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TreasuryOutboundTransferPostedEvent(
        object: TreasuryOutboundTransfer.fromJson(map['object']));
  }

  final TreasuryOutboundTransfer object;

  final String type = 'treasury.outbound_transfer.posted';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TreasuryOutboundTransferPostedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TreasuryOutboundTransfer.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'treasury.outbound_transfer.posted',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('TreasuryOutboundTransferPostedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever an OutboundTransfer is returned.
final class TreasuryOutboundTransferReturnedEvent implements StripeEvent {
  /// Occurs whenever an OutboundTransfer is returned.
  const TreasuryOutboundTransferReturnedEvent({required this.object});

  factory TreasuryOutboundTransferReturnedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TreasuryOutboundTransferReturnedEvent(
        object: TreasuryOutboundTransfer.fromJson(map['object']));
  }

  final TreasuryOutboundTransfer object;

  final String type = 'treasury.outbound_transfer.returned';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TreasuryOutboundTransferReturnedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TreasuryOutboundTransfer.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'treasury.outbound_transfer.returned',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('TreasuryOutboundTransferReturnedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a received_credit is created as a result of funds being pushed by another account.
final class TreasuryReceivedCreditCreatedEvent implements StripeEvent {
  /// Occurs whenever a received_credit is created as a result of funds being pushed by another account.
  const TreasuryReceivedCreditCreatedEvent({required this.object});

  factory TreasuryReceivedCreditCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TreasuryReceivedCreditCreatedEvent(
        object: TreasuryReceivedCredit.fromJson(map['object']));
  }

  final TreasuryReceivedCredit object;

  final String type = 'treasury.received_credit.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TreasuryReceivedCreditCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TreasuryReceivedCredit.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'treasury.received_credit.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('TreasuryReceivedCreditCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a received_credit transitions to failed state. Only applicable for check deposits.
final class TreasuryReceivedCreditFailedEvent implements StripeEvent {
  /// Occurs whenever a received_credit transitions to failed state. Only applicable for check deposits.
  const TreasuryReceivedCreditFailedEvent({required this.object});

  factory TreasuryReceivedCreditFailedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TreasuryReceivedCreditFailedEvent(
        object: TreasuryReceivedCredit.fromJson(map['object']));
  }

  final TreasuryReceivedCredit object;

  final String type = 'treasury.received_credit.failed';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TreasuryReceivedCreditFailedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TreasuryReceivedCredit.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'treasury.received_credit.failed',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('TreasuryReceivedCreditFailedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a received_credit transitions to succeeded state. Only applicable for check deposits.
final class TreasuryReceivedCreditSucceededEvent implements StripeEvent {
  /// Occurs whenever a received_credit transitions to succeeded state. Only applicable for check deposits.
  const TreasuryReceivedCreditSucceededEvent({required this.object});

  factory TreasuryReceivedCreditSucceededEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TreasuryReceivedCreditSucceededEvent(
        object: TreasuryReceivedCredit.fromJson(map['object']));
  }

  final TreasuryReceivedCredit object;

  final String type = 'treasury.received_credit.succeeded';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TreasuryReceivedCreditSucceededEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TreasuryReceivedCredit.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'treasury.received_credit.succeeded',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()
      ..writeln('TreasuryReceivedCreditSucceededEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

/// Occurs whenever a received_debit is created as a result of funds being pulled by another account.
final class TreasuryReceivedDebitCreatedEvent implements StripeEvent {
  /// Occurs whenever a received_debit is created as a result of funds being pulled by another account.
  const TreasuryReceivedDebitCreatedEvent({required this.object});

  factory TreasuryReceivedDebitCreatedEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    return TreasuryReceivedDebitCreatedEvent(
        object: TreasuryReceivedDebit.fromJson(map['object']));
  }

  final TreasuryReceivedDebit object;

  final String type = 'treasury.received_debit.created';

  Map<String, Object?> toJson() => (encode(
        this,
        coder.json.encoder,
      ) as Map<String, Object?>);

  static V encode<V>(
    TreasuryReceivedDebitCreatedEvent instance,
    Encoder<V> encoder,
  ) {
    final container = encoder.container<String>();
    TreasuryReceivedDebit.encode(
      instance.object,
      container.nestedSingleValueContainer('object').encoder,
    );
    container.encodeString(
      'type',
      'treasury.received_debit.created',
    );
    return container.value;
  }

  V encodeWith<V>(Encoder<V> encoder) => encode(
        this,
        encoder,
      );

  @override
  String toString() {
    final $buf = StringBuffer()..writeln('TreasuryReceivedDebitCreatedEvent(');
    $buf
      ..writeln()
      ..write('  object: ')
      ..write(object)
      ..write(',');
    $buf
      ..writeln()
      ..write('  type: ')
      ..write(type)
      ..write(',');
    $buf.write(')');
    return $buf.toString();
  }
}

sealed class StripeEvent {
  const StripeEvent();

  factory StripeEvent.fromJson(Object? json) {
    final map = (json as Map).cast<String, Object?>();
    final type = (map['type'] as String);
    final factory = $mapping[type];
    if (factory == null) {
      throw ArgumentError('Unknown type of StripeEvent: "$type"');
    }
    final data = switch (map) {
      {'data': {'object': _} && final data} => data,
      _ => throw ArgumentError('Unknown data structure for StripeEvent: $map'),
    };
    return factory(data);
  }

  static const Map<String, StripeEvent Function(Object?)> $mapping = {
    'account.application.authorized':
        AccountApplicationAuthorizedEvent.fromJson,
    'account.application.deauthorized':
        AccountApplicationDeauthorizedEvent.fromJson,
    'account.external_account.created':
        AccountExternalAccountCreatedEvent.fromJson,
    'account.external_account.deleted':
        AccountExternalAccountDeletedEvent.fromJson,
    'account.external_account.updated':
        AccountExternalAccountUpdatedEvent.fromJson,
    'account.updated': AccountUpdatedEvent.fromJson,
    'application_fee.created': ApplicationFeeCreatedEvent.fromJson,
    'application_fee.refund.updated': ApplicationFeeRefundUpdatedEvent.fromJson,
    'application_fee.refunded': ApplicationFeeRefundedEvent.fromJson,
    'balance.available': BalanceAvailableEvent.fromJson,
    'billing_portal.configuration.created':
        BillingPortalConfigurationCreatedEvent.fromJson,
    'billing_portal.configuration.updated':
        BillingPortalConfigurationUpdatedEvent.fromJson,
    'billing_portal.session.created': BillingPortalSessionCreatedEvent.fromJson,
    'capability.updated': CapabilityUpdatedEvent.fromJson,
    'cash_balance.funds_available': CashBalanceFundsAvailableEvent.fromJson,
    'charge.captured': ChargeCapturedEvent.fromJson,
    'charge.dispute.closed': ChargeDisputeClosedEvent.fromJson,
    'charge.dispute.created': ChargeDisputeCreatedEvent.fromJson,
    'charge.dispute.funds_reinstated':
        ChargeDisputeFundsReinstatedEvent.fromJson,
    'charge.dispute.funds_withdrawn': ChargeDisputeFundsWithdrawnEvent.fromJson,
    'charge.dispute.updated': ChargeDisputeUpdatedEvent.fromJson,
    'charge.expired': ChargeExpiredEvent.fromJson,
    'charge.failed': ChargeFailedEvent.fromJson,
    'charge.pending': ChargePendingEvent.fromJson,
    'charge.refund.updated': ChargeRefundUpdatedEvent.fromJson,
    'charge.refunded': ChargeRefundedEvent.fromJson,
    'charge.succeeded': ChargeSucceededEvent.fromJson,
    'charge.updated': ChargeUpdatedEvent.fromJson,
    'checkout.session.async_payment_failed':
        CheckoutSessionAsyncPaymentFailedEvent.fromJson,
    'checkout.session.async_payment_succeeded':
        CheckoutSessionAsyncPaymentSucceededEvent.fromJson,
    'checkout.session.completed': CheckoutSessionCompletedEvent.fromJson,
    'checkout.session.expired': CheckoutSessionExpiredEvent.fromJson,
    'climate.order.canceled': ClimateOrderCanceledEvent.fromJson,
    'climate.order.created': ClimateOrderCreatedEvent.fromJson,
    'climate.order.delayed': ClimateOrderDelayedEvent.fromJson,
    'climate.order.delivered': ClimateOrderDeliveredEvent.fromJson,
    'climate.order.product_substituted':
        ClimateOrderProductSubstitutedEvent.fromJson,
    'climate.product.created': ClimateProductCreatedEvent.fromJson,
    'climate.product.pricing_updated':
        ClimateProductPricingUpdatedEvent.fromJson,
    'coupon.created': CouponCreatedEvent.fromJson,
    'coupon.deleted': CouponDeletedEvent.fromJson,
    'coupon.updated': CouponUpdatedEvent.fromJson,
    'credit_note.created': CreditNoteCreatedEvent.fromJson,
    'credit_note.updated': CreditNoteUpdatedEvent.fromJson,
    'credit_note.voided': CreditNoteVoidedEvent.fromJson,
    'customer.created': CustomerCreatedEvent.fromJson,
    'customer.deleted': CustomerDeletedEvent.fromJson,
    'customer.discount.created': CustomerDiscountCreatedEvent.fromJson,
    'customer.discount.deleted': CustomerDiscountDeletedEvent.fromJson,
    'customer.discount.updated': CustomerDiscountUpdatedEvent.fromJson,
    'customer.source.created': CustomerSourceCreatedEvent.fromJson,
    'customer.source.deleted': CustomerSourceDeletedEvent.fromJson,
    'customer.source.expiring': CustomerSourceExpiringEvent.fromJson,
    'customer.source.updated': CustomerSourceUpdatedEvent.fromJson,
    'customer.subscription.created': CustomerSubscriptionCreatedEvent.fromJson,
    'customer.subscription.deleted': CustomerSubscriptionDeletedEvent.fromJson,
    'customer.subscription.paused': CustomerSubscriptionPausedEvent.fromJson,
    'customer.subscription.pending_update_applied':
        CustomerSubscriptionPendingUpdateAppliedEvent.fromJson,
    'customer.subscription.pending_update_expired':
        CustomerSubscriptionPendingUpdateExpiredEvent.fromJson,
    'customer.subscription.resumed': CustomerSubscriptionResumedEvent.fromJson,
    'customer.subscription.trial_will_end':
        CustomerSubscriptionTrialWillEndEvent.fromJson,
    'customer.subscription.updated': CustomerSubscriptionUpdatedEvent.fromJson,
    'customer.tax_id.created': CustomerTaxIdCreatedEvent.fromJson,
    'customer.tax_id.deleted': CustomerTaxIdDeletedEvent.fromJson,
    'customer.tax_id.updated': CustomerTaxIdUpdatedEvent.fromJson,
    'customer.updated': CustomerUpdatedEvent.fromJson,
    'customer_cash_balance_transaction.created':
        CustomerCashBalanceTransactionCreatedEvent.fromJson,
    'file.created': FileCreatedEvent.fromJson,
    'financial_connections.account.created':
        FinancialConnectionsAccountCreatedEvent.fromJson,
    'financial_connections.account.deactivated':
        FinancialConnectionsAccountDeactivatedEvent.fromJson,
    'financial_connections.account.disconnected':
        FinancialConnectionsAccountDisconnectedEvent.fromJson,
    'financial_connections.account.reactivated':
        FinancialConnectionsAccountReactivatedEvent.fromJson,
    'financial_connections.account.refreshed_balance':
        FinancialConnectionsAccountRefreshedBalanceEvent.fromJson,
    'financial_connections.account.refreshed_ownership':
        FinancialConnectionsAccountRefreshedOwnershipEvent.fromJson,
    'financial_connections.account.refreshed_transactions':
        FinancialConnectionsAccountRefreshedTransactionsEvent.fromJson,
    'identity.verification_session.canceled':
        IdentityVerificationSessionCanceledEvent.fromJson,
    'identity.verification_session.created':
        IdentityVerificationSessionCreatedEvent.fromJson,
    'identity.verification_session.processing':
        IdentityVerificationSessionProcessingEvent.fromJson,
    'identity.verification_session.redacted':
        IdentityVerificationSessionRedactedEvent.fromJson,
    'identity.verification_session.requires_input':
        IdentityVerificationSessionRequiresInputEvent.fromJson,
    'identity.verification_session.verified':
        IdentityVerificationSessionVerifiedEvent.fromJson,
    'invoice.created': InvoiceCreatedEvent.fromJson,
    'invoice.deleted': InvoiceDeletedEvent.fromJson,
    'invoice.finalization_failed': InvoiceFinalizationFailedEvent.fromJson,
    'invoice.finalized': InvoiceFinalizedEvent.fromJson,
    'invoice.marked_uncollectible': InvoiceMarkedUncollectibleEvent.fromJson,
    'invoice.paid': InvoicePaidEvent.fromJson,
    'invoice.payment_action_required':
        InvoicePaymentActionRequiredEvent.fromJson,
    'invoice.payment_failed': InvoicePaymentFailedEvent.fromJson,
    'invoice.payment_succeeded': InvoicePaymentSucceededEvent.fromJson,
    'invoice.sent': InvoiceSentEvent.fromJson,
    'invoice.upcoming': InvoiceUpcomingEvent.fromJson,
    'invoice.updated': InvoiceUpdatedEvent.fromJson,
    'invoice.voided': InvoiceVoidedEvent.fromJson,
    'invoiceitem.created': InvoiceitemCreatedEvent.fromJson,
    'invoiceitem.deleted': InvoiceitemDeletedEvent.fromJson,
    'issuing_authorization.created': IssuingAuthorizationCreatedEvent.fromJson,
    'issuing_authorization.request': IssuingAuthorizationRequestEvent.fromJson,
    'issuing_authorization.updated': IssuingAuthorizationUpdatedEvent.fromJson,
    'issuing_card.created': IssuingCardCreatedEvent.fromJson,
    'issuing_card.updated': IssuingCardUpdatedEvent.fromJson,
    'issuing_cardholder.created': IssuingCardholderCreatedEvent.fromJson,
    'issuing_cardholder.updated': IssuingCardholderUpdatedEvent.fromJson,
    'issuing_dispute.closed': IssuingDisputeClosedEvent.fromJson,
    'issuing_dispute.created': IssuingDisputeUpdatedEvent.fromJson,
    'issuing_dispute.funds_reinstated':
        IssuingDisputeFundsReinstatedEvent.fromJson,
    'issuing_dispute.submitted': IssuingDisputeSubmittedEvent.fromJson,
    'issuing_dispute.updated': IssuingDisputeUpdatedEvent.fromJson,
    'issuing_token.created': IssuingTokenCreatedEvent.fromJson,
    'issuing_token.updated': IssuingTokenUpdatedEvent.fromJson,
    'issuing_transaction.created': IssuingTransactionCreatedEvent.fromJson,
    'issuing_transaction.updated': IssuingTransactionUpdatedEvent.fromJson,
    'mandate.updated': MandateUpdatedEvent.fromJson,
    'payment_intent.amount_capturable_updated':
        PaymentIntentAmountCapturableUpdatedEvent.fromJson,
    'payment_intent.canceled': PaymentIntentCanceledEvent.fromJson,
    'payment_intent.created': PaymentIntentCreatedEvent.fromJson,
    'payment_intent.partially_funded':
        PaymentIntentPartiallyFundedEvent.fromJson,
    'payment_intent.payment_failed': PaymentIntentPaymentFailedEvent.fromJson,
    'payment_intent.processing': PaymentIntentProcessingEvent.fromJson,
    'payment_intent.requires_action': PaymentIntentRequiresActionEvent.fromJson,
    'payment_intent.succeeded': PaymentIntentSucceededEvent.fromJson,
    'payment_link.created': PaymentLinkCreatedEvent.fromJson,
    'payment_link.updated': PaymentLinkUpdatedEvent.fromJson,
    'payment_method.attached': PaymentMethodAttachedEvent.fromJson,
    'payment_method.automatically_updated':
        PaymentMethodAutomaticallyUpdatedEvent.fromJson,
    'payment_method.detached': PaymentMethodDetachedEvent.fromJson,
    'payment_method.updated': PaymentMethodUpdatedEvent.fromJson,
    'payout.canceled': PayoutCanceledEvent.fromJson,
    'payout.created': PayoutCreatedEvent.fromJson,
    'payout.failed': PayoutFailedEvent.fromJson,
    'payout.paid': PayoutPaidEvent.fromJson,
    'payout.reconciliation_completed':
        PayoutReconciliationCompletedEvent.fromJson,
    'payout.updated': PayoutUpdatedEvent.fromJson,
    'person.created': PersonCreatedEvent.fromJson,
    'person.deleted': PersonDeletedEvent.fromJson,
    'person.updated': PersonUpdatedEvent.fromJson,
    'plan.created': PlanCreatedEvent.fromJson,
    'plan.deleted': PlanDeletedEvent.fromJson,
    'plan.updated': PlanUpdatedEvent.fromJson,
    'price.created': PriceCreatedEvent.fromJson,
    'price.deleted': PriceDeletedEvent.fromJson,
    'price.updated': PriceUpdatedEvent.fromJson,
    'product.created': ProductCreatedEvent.fromJson,
    'product.deleted': ProductDeletedEvent.fromJson,
    'product.updated': ProductUpdatedEvent.fromJson,
    'promotion_code.created': PromotionCodeCreatedEvent.fromJson,
    'promotion_code.updated': PromotionCodeUpdatedEvent.fromJson,
    'quote.accepted': QuoteAcceptedEvent.fromJson,
    'quote.canceled': QuoteCanceledEvent.fromJson,
    'quote.created': QuoteCreatedEvent.fromJson,
    'quote.finalized': QuoteFinalizedEvent.fromJson,
    'radar.early_fraud_warning.created':
        RadarEarlyFraudWarningCreatedEvent.fromJson,
    'radar.early_fraud_warning.updated':
        RadarEarlyFraudWarningUpdatedEvent.fromJson,
    'refund.created': RefundCreatedEvent.fromJson,
    'refund.updated': RefundUpdatedEvent.fromJson,
    'reporting.report_run.failed': ReportingReportRunFailedEvent.fromJson,
    'reporting.report_run.succeeded': ReportingReportRunSucceededEvent.fromJson,
    'reporting.report_type.updated': ReportingReportTypeUpdatedEvent.fromJson,
    'review.closed': ReviewClosedEvent.fromJson,
    'review.opened': ReviewOpenedEvent.fromJson,
    'setup_intent.canceled': SetupIntentCanceledEvent.fromJson,
    'setup_intent.created': SetupIntentCreatedEvent.fromJson,
    'setup_intent.requires_action': SetupIntentRequiresActionEvent.fromJson,
    'setup_intent.setup_failed': SetupIntentSetupFailedEvent.fromJson,
    'setup_intent.succeeded': SetupIntentSucceededEvent.fromJson,
    'sigma.scheduled_query_run.created':
        SigmaScheduledQueryRunCreatedEvent.fromJson,
    'source.canceled': SourceCanceledEvent.fromJson,
    'source.chargeable': SourceChargeableEvent.fromJson,
    'source.failed': SourceFailedEvent.fromJson,
    'source.mandate_notification': SourceMandateNotificationEvent.fromJson,
    'source.refund_attributes_required':
        SourceRefundAttributesRequiredEvent.fromJson,
    'source.transaction.created': SourceTransactionCreatedEvent.fromJson,
    'source.transaction.updated': SourceTransactionUpdatedEvent.fromJson,
    'subscription_schedule.aborted': SubscriptionScheduleAbortedEvent.fromJson,
    'subscription_schedule.canceled':
        SubscriptionScheduleCanceledEvent.fromJson,
    'subscription_schedule.completed':
        SubscriptionScheduleCompletedEvent.fromJson,
    'subscription_schedule.created': SubscriptionScheduleCreatedEvent.fromJson,
    'subscription_schedule.expiring':
        SubscriptionScheduleExpiringEvent.fromJson,
    'subscription_schedule.released':
        SubscriptionScheduleReleasedEvent.fromJson,
    'subscription_schedule.updated': SubscriptionScheduleUpdatedEvent.fromJson,
    'tax.settings.updated': TaxSettingsUpdatedEvent.fromJson,
    'tax_rate.created': TaxRateCreatedEvent.fromJson,
    'tax_rate.updated': TaxRateUpdatedEvent.fromJson,
    'terminal.reader.action_failed': TerminalReaderActionFailedEvent.fromJson,
    'terminal.reader.action_succeeded':
        TerminalReaderActionSucceededEvent.fromJson,
    'test_helpers.test_clock.advancing':
        TestHelpersTestClockAdvancingEvent.fromJson,
    'test_helpers.test_clock.created':
        TestHelpersTestClockCreatedEvent.fromJson,
    'test_helpers.test_clock.deleted':
        TestHelpersTestClockDeletedEvent.fromJson,
    'test_helpers.test_clock.internal_failure':
        TestHelpersTestClockInternalFailureEvent.fromJson,
    'test_helpers.test_clock.ready': TestHelpersTestClockReadyEvent.fromJson,
    'topup.canceled': TopupCanceledEvent.fromJson,
    'topup.created': TopupCreatedEvent.fromJson,
    'topup.failed': TopupFailedEvent.fromJson,
    'topup.reversed': TopupReversedEvent.fromJson,
    'topup.succeeded': TopupSucceededEvent.fromJson,
    'transfer.created': TransferCreatedEvent.fromJson,
    'transfer.reversed': TransferReversedEvent.fromJson,
    'transfer.updated': TransferUpdatedEvent.fromJson,
    'treasury.credit_reversal.created':
        TreasuryCreditReversalCreatedEvent.fromJson,
    'treasury.credit_reversal.posted':
        TreasuryCreditReversalPostedEvent.fromJson,
    'treasury.debit_reversal.completed':
        TreasuryDebitReversalCompletedEvent.fromJson,
    'treasury.debit_reversal.created':
        TreasuryDebitReversalCreatedEvent.fromJson,
    'treasury.debit_reversal.initial_credit_granted':
        TreasuryDebitReversalInitialCreditGrantedEvent.fromJson,
    'treasury.financial_account.closed':
        TreasuryFinancialAccountClosedEvent.fromJson,
    'treasury.financial_account.created':
        TreasuryFinancialAccountCreatedEvent.fromJson,
    'treasury.financial_account.features_status_updated':
        TreasuryFinancialAccountFeaturesStatusUpdatedEvent.fromJson,
    'treasury.inbound_transfer.canceled':
        TreasuryInboundTransferCanceledEvent.fromJson,
    'treasury.inbound_transfer.created':
        TreasuryInboundTransferCreatedEvent.fromJson,
    'treasury.inbound_transfer.failed':
        TreasuryInboundTransferFailedEvent.fromJson,
    'treasury.inbound_transfer.succeeded':
        TreasuryInboundTransferSucceededEvent.fromJson,
    'treasury.outbound_payment.canceled':
        TreasuryOutboundPaymentCanceledEvent.fromJson,
    'treasury.outbound_payment.created':
        TreasuryOutboundPaymentCreatedEvent.fromJson,
    'treasury.outbound_payment.expected_arrival_date_updated':
        TreasuryOutboundPaymentExpectedArrivalDateUpdatedEvent.fromJson,
    'treasury.outbound_payment.failed':
        TreasuryOutboundPaymentFailedEvent.fromJson,
    'treasury.outbound_payment.posted':
        TreasuryOutboundPaymentPostedEvent.fromJson,
    'treasury.outbound_payment.returned':
        TreasuryOutboundPaymentReturnedEvent.fromJson,
    'treasury.outbound_transfer.canceled':
        TreasuryOutboundTransferCanceledEvent.fromJson,
    'treasury.outbound_transfer.created':
        TreasuryOutboundTransferCreatedEvent.fromJson,
    'treasury.outbound_transfer.expected_arrival_date_updated':
        TreasuryOutboundTransferExpectedArrivalDateUpdatedEvent.fromJson,
    'treasury.outbound_transfer.failed':
        TreasuryOutboundTransferFailedEvent.fromJson,
    'treasury.outbound_transfer.posted':
        TreasuryOutboundTransferPostedEvent.fromJson,
    'treasury.outbound_transfer.returned':
        TreasuryOutboundTransferReturnedEvent.fromJson,
    'treasury.received_credit.created':
        TreasuryReceivedCreditCreatedEvent.fromJson,
    'treasury.received_credit.failed':
        TreasuryReceivedCreditFailedEvent.fromJson,
    'treasury.received_credit.succeeded':
        TreasuryReceivedCreditSucceededEvent.fromJson,
    'treasury.received_debit.created':
        TreasuryReceivedDebitCreatedEvent.fromJson,
  };

  String get type;
  Map<String, Object?> toJson();
  static V encode<V>(
    StripeEvent instance,
    Encoder<V> encoder,
  ) {
    return instance.encodeWith(encoder);
  }

  V encodeWith<V>(Encoder<V> encoder);
}
