import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:async/async.dart';
import 'package:client_stripe/models.dart' hide Request;
import 'package:client_stripe/webhooks.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:test/test.dart';

final signingSecretRegex =
    RegExp(r'Your webhook signing secret is (whsec_[a-z0-9]+)');

// From: `stripe trigger --help`
const supportedEvents = [
  // Require Stripe Connect
  // 'account.application.deauthorized',
  // 'account.updated',
  // TODO(dnys1): Times out
  // 'balance.available',
  'charge.captured',
  'charge.dispute.created',
  'charge.failed',
  'charge.refund.updated',
  'charge.refunded',
  'charge.succeeded',
  'checkout.session.async_payment_failed',
  'checkout.session.async_payment_succeeded',
  'checkout.session.completed',
  'customer.created',
  'customer.deleted',
  'customer.source.created',
  'customer.source.updated',
  'customer.subscription.created',
  'customer.subscription.deleted',
  'customer.subscription.updated',
  'customer.updated',
  // Requires elevated permissions
  // 'identity.verification_session.canceled',
  // 'identity.verification_session.created',
  // 'identity.verification_session.redacted',
  'invoice.created',
  'invoice.finalized',
  'invoice.paid',
  'invoice.payment_action_required',
  'invoice.payment_failed',
  'invoice.payment_succeeded',
  'invoice.updated',
  // Requires enabling Issuing
  // 'issuing_authorization.request',
  // 'issuing_authorization.request.eu',
  // 'issuing_authorization.request.gb',
  // 'issuing_card.created',
  // 'issuing_card.created.eu',
  // 'issuing_card.created.gb',
  // 'issuing_cardholder.created',
  // 'issuing_cardholder.created.eu',
  // 'issuing_cardholder.created.gb',
  'payment_intent.amount_capturable_updated',
  'payment_intent.canceled',
  'payment_intent.created',
  // Doesn't work
  // 'payment_intent.partially_funded',
  'payment_intent.payment_failed',
  'payment_intent.requires_action',
  'payment_intent.succeeded',
  'payment_link.created',
  'payment_link.updated',
  'payment_method.attached',
  // Doesn't work
  // 'payment_method.detached',
  'payout.created',
  'payout.updated',
  'plan.created',
  'plan.deleted',
  'plan.updated',
  'price.created',
  'price.updated',
  'product.created',
  'product.deleted',
  'product.updated',
  'quote.accepted',
  'quote.canceled',
  'quote.created',
  'quote.finalized',
  // Doesn't work
  // 'reporting.report_run.succeeded',
  'setup_intent.canceled',
  'setup_intent.created',
  'setup_intent.setup_failed',
  'setup_intent.succeeded',
  // TODO(dnys1): Times out
  // 'subscription.payment_failed',
  // 'subscription.payment_succeeded',
  'subscription_schedule.canceled',
  'subscription_schedule.created',
  'subscription_schedule.released',
  'subscription_schedule.updated',
];

Future<void> _stripe(List<String> args) async {
  final res = await Process.run(
    'stripe',
    args,
    stdoutEncoding: utf8,
    stderrEncoding: utf8,
  );
  if (res.exitCode != 0) {
    throw ProcessException(
      'stripe',
      args,
      'Failed to run stripe: ${res.stdout}\n${res.stderr}',
      res.exitCode,
    );
  }
}

void main() {
  group('StripeWebhookValidator', () {
    late final StreamQueue<StripeEvent> events;

    setUpAll(() async {
      final socket = await ServerSocket.bind(InternetAddress.loopbackIPv4, 0);
      final port = socket.port;
      await socket.close();

      final stripeProc = await Process.start('stripe', [
        'listen',
        '--forward-to',
        'http://localhost:$port/webhook',
      ]);

      final signingSecretCompleter = Completer<String>();
      stripeProc.stdout
          .merge(stripeProc.stderr)
          .transform(utf8.decoder)
          .listen((line) {
        if (!signingSecretCompleter.isCompleted) {
          final match = signingSecretRegex.firstMatch(line)?.group(1);
          if (match != null) {
            signingSecretCompleter.complete(match);
            return;
          }
        }
        stdout.write(line);
      });

      final signingSecret = await Future.any([
        signingSecretCompleter.future,
        stripeProc.exitCode.then(
          (code) => throw ProcessException(
            'stripe',
            ['listen'],
            'Could not start stripe listen: $code',
            code,
          ),
        ),
      ]).timeout(const Duration(seconds: 10));

      final validator = StripeWebhookValidator(signingSecret: signingSecret);

      final eventsController = StreamController<StripeEvent>();
      events = StreamQueue(eventsController.stream);
      final router = Router()
        ..post('/webhook', (Request request) async {
          final body = await request.readAsString();
          try {
            await validator.validate(
              headers: request.headers,
              body: body,
            );
            final event = StripeEvent.fromJson(jsonDecode(body));
            eventsController.add(event);
            return Response.ok(null);
          } on Object catch (e, st) {
            eventsController.addError('Error validating event: $e\n$body', st);
            return Response.internalServerError();
          }
        });
      final server = await serve(
        router.call,
        InternetAddress.loopbackIPv4,
        port,
      );

      addTearDown(() async {
        stripeProc.kill();
        await stripeProc.exitCode;
        unawaited(eventsController.close());
        await server.close(force: true);
      });
    });

    for (final eventType in supportedEvents) {
      const timeout = Timeout(Duration(minutes: 2));
      test(eventType, timeout: timeout, () async {
        expect(_stripe(['trigger', eventType]), completes);
        await events.withTransaction((events) async {
          while (await events.hasNext) {
            final event = await events.next;
            if (event.type != eventType) {
              print('Skipping event: ${event.type}');
              continue;
            }
            print('Received event: ${event.type}');
            return true;
          }
          fail('Expected event $eventType not received');
        });
      });
    }
  });
}
