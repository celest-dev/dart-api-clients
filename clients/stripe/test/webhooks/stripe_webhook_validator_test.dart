import 'dart:convert';

import 'package:client_stripe/webhooks.dart';
import 'package:clock/clock.dart';
import 'package:crypto/crypto.dart';
import 'package:logging/logging.dart';
import 'package:test/test.dart';

const eventPayload = {
  'id': 'evt_test_webhook',
  'object': 'event',
};
final eventPayloadString = jsonEncode(eventPayload);
const secret = 'whsec_test_secret';

Future<String> createSignature({
  DateTime? timestamp,
}) async {
  timestamp ??= clock.now();
  final timestampSecs =
      timestamp.millisecondsSinceEpoch ~/ Duration.millisecondsPerSecond;
  final payload = '$timestampSecs.$eventPayloadString';
  final signature = Hmac(sha256, utf8.encode(secret))
      .convert(utf8.encode(payload))
      .toString();
  return 't=$timestampSecs,v1=$signature';
}

void main() {
  final logger = Logger('StripeWebhookValidator');
  final validator = StripeWebhookValidator(
    signingSecret: secret,
    logger: logger,
  );

  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    print('${record.level.name}: ${record.message}');
  });

  group('validator.validate', () {
    test(
      'should complete when the header contains a valid signature',
      () async {
        await expectLater(
          validator.validate(
            headers: {
              'Stripe-Signature': await createSignature(),
              'Content-Type': 'application/json',
            },
            body: eventPayloadString,
          ),
          completes,
        );
      },
    );

    test(
      'should throw when the header does not have the expected format',
      () async {
        const header = "I'm not even a real signature header";
        await expectLater(
          validator.validate(
            headers: {
              'Stripe-Signature': header,
              'Content-Type': 'application/json',
            },
            body: eventPayloadString,
          ),
          throwsA(isA<StripeWebhookValidationException>()),
        );
      },
    );

    test(
      'should throw when the header is null or empty',
      () async {
        await expectLater(
          validator.validate(
            headers: {},
            body: eventPayloadString,
          ),
          throwsA(isA<StripeWebhookValidationException>()),
        );
        await expectLater(
          validator.validate(
            headers: {
              'Stripe-Signature': '',
              'Content-Type': 'application/json',
            },
            body: eventPayloadString,
          ),
          throwsA(isA<StripeWebhookValidationException>()),
        );
      },
    );

    test(
      'should throw when there are no signatures with the expected scheme',
      () async {
        await expectLater(
          validator.validate(
            headers: {
              'Stripe-Signature': 't=123,v0=123',
              'Content-Type': 'application/json',
            },
            body: eventPayloadString,
          ),
          throwsA(isA<StripeWebhookValidationException>()),
        );
      },
    );

    test(
      'should throw when there are no valid signatures for the payload',
      () async {
        await expectLater(
          validator.validate(
            headers: {
              'Stripe-Signature': 't=123,v1=bad_signature',
              'Content-Type': 'application/json',
            },
            body: eventPayloadString,
          ),
          throwsA(isA<StripeWebhookValidationException>()),
        );
      },
    );

    test(
      'should throw when the timestamp is not within the tolerance of the provided timestamp',
      () async {
        final timestamp = clock.now().subtract(const Duration(days: 1));
        await expectLater(
          validator.validate(
            headers: {
              'Stripe-Signature': await createSignature(timestamp: timestamp),
              'Content-Type': 'application/json',
            },
            body: eventPayloadString,
          ),
          throwsA(isA<StripeWebhookValidationException>()),
        );
      },
    );

    test(
      'should throw when missing or invalid content type',
      () async {
        await expectLater(
          validator.validate(
            headers: {
              'Stripe-Signature': '${await createSignature()} ',
            },
            body: eventPayloadString,
          ),
          throwsA(isA<StripeWebhookValidationException>()),
        );
        await expectLater(
          validator.validate(
            headers: {
              'Stripe-Signature': '${await createSignature()} ',
              'Content-Type': 'application/xml',
            },
            body: eventPayloadString,
          ),
          throwsA(isA<StripeWebhookValidationException>()),
        );
      },
    );

    test(
      'should throw when the signature contains whitespace',
      () async {
        await expectLater(
          validator.validate(
            headers: {
              'Stripe-Signature': '${await createSignature()} ',
              'Content-Type': 'application/json',
            },
            body: eventPayloadString,
          ),
          throwsA(isA<StripeWebhookValidationException>()),
        );
      },
    );
  });
}
