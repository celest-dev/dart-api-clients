import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:checks/checks.dart';
import 'package:client_stripe/client.dart';
import 'package:client_stripe/models.dart' hide File;
import 'package:cross_file/cross_file.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:test/test.dart';

import 'stripe_types.dart';

part 'stripe_types_test.g.dart';

const skip = [
  'billing_portal.configuration', // Doesn't match spec.
  'forwarding.request', // Doesn't match spec.
  'product', // Doesn't match spec.
];

// From: https://github.com/stripe/openapi/blob/master/openapi/fixtures3.json
@JsonLiteral('fixtures3.json', asConst: false)
Map<String, dynamic> get stripeFixtures =>
    (_$stripeFixturesJsonLiteral['resources'] as Map).cast<String, dynamic>()
      ..removeWhere((key, value) => skip.contains(key));

const mockPort = 12111;
final mockUri = Uri.parse('http://localhost:$mockPort');

/// Installs and runs the Stripe mock CLI: https://github.com/stripe/stripe-mock
Future<void> startStripeMock() async {
  final which = Process.runSync('which', ['stripe-mock']);
  final cliFile = which.stdout.toString().trim();
  if (which.exitCode != 0 || cliFile.isEmpty) {
    throw Exception(
      'You must install and open `stripe-mock` locally before running tests. '
      'You can install from: https://github.com/stripe/stripe-mock',
    );
  }
  print('Running stripe-mock from: $cliFile');
  final process = await Process.start(cliFile, [
    '-http-port',
    '$mockPort',
    '-strict-version-check',
  ]);
  final stdout = Completer<void>();
  process.stdout
      .transform(const Utf8Decoder())
      .transform(const LineSplitter())
      .listen((line) {
    print(line);
    if (line.startsWith('Listening for HTTP')) {
      stdout.complete();
    }
  });
  process.stderr
      .transform(const Utf8Decoder())
      .transform(const LineSplitter())
      .listen((line) => print('ERROR: $line'));
  addTearDown(() {
    print('Stopping stripe-mock');
    process.kill();
  });
  await Future.any([
    stdout.future,
    process.exitCode.then(
      (code) => throw ProcessException(
        'stripe-mock',
        [],
        'Could not start mock server: $code',
        code,
      ),
    ),
  ]);
}

void main() {
  group('Stripe', () {
    group('can deserialize', () {
      stripeTypes.forEach((key, fromJson) {
        test(
          key,
          skip: !stripeFixtures.containsKey(key),
          () {
            final json = stripeFixtures[key] as Map;
            check(() => fromJson(json)).returnsNormally();
          },
        );
      });
    });

    group('StripeClient', () {
      final stripe = StripeApiClient(apiKey: 'sk_test_123', baseUri: mockUri);

      setUpAll(() async {
        await startStripeMock();
      });

      testApiClient(stripe);

      test('retrieveCheckoutSession', () async {
        const id = 'cs_test_123';
        final session = await stripe.v1.checkout.sessions.retrieve(session: id);
        check(session.id).equals(id);
      });

      test('getCustomer', () async {
        const id = 'cus_test_123';
        final customer = await stripe.v1.customers.retrieve(customer: id);
        check(customer).isA<Customer>().has((cs) => cs.id, 'id').equals(id);
      });

      test('uploadFile', () async {
        await check(
          stripe.v1.files.create(
            options: FileCreateOptions(
              file: XFile.fromData(
                utf8.encode('hello'),
                name: 'hello.txt',
                mimeType: 'text/plain',
              ),
              fileLinkData: FileLinkData(
                create: true,
                expiresAt: DateTime.now().add(const Duration(days: 1)),
                metadata: {'hello': 'world'},
              ),
              purpose: FileCreateOptionsPurpose.accountRequirement,
            ),
          ),
        ).completes();
      });

      test('createPortalSession', () async {
        const id = 'cus_test_123';
        await check(
          stripe.v1.billingPortal.sessions.create(
            options: BillingPortalSessionCreateOptions(customer: id),
          ),
        ).completes();
      });
    });
  });
}
