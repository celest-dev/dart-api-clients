import 'dart:convert';

import 'package:clock/clock.dart';
import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';
import 'package:http_parser/http_parser.dart';
import 'package:logging/logging.dart';

final class StripeWebhookValidator {
  StripeWebhookValidator({
    required String signingSecret,
    Logger? logger,
  })  : _signingSecret = signingSecret,
        _logger = logger;

  static final RegExp _whitespace = RegExp(r'\s');

  final String _signingSecret;
  final Logger? _logger;

  Future<void> validate({
    required Map<String, String> headers,
    required String body,
  }) async {
    headers = CaseInsensitiveMap.from(headers);

    // Validate content type
    final contentType = headers['Content-Type'];
    _logger?.fine('Request content type: $contentType');
    if (contentType == null) {
      throw const StripeWebhookValidationException('Invalid content type');
    }

    try {
      final mediaType = MediaType.parse(contentType);
      _logger?.finer('Request media type: $mediaType');
      if (mediaType.mimeType != 'application/json') {
        throw const StripeWebhookValidationException('Invalid content type');
      }
    } on FormatException {
      throw const StripeWebhookValidationException('Invalid content type');
    }

    // Validate signature
    final signature = headers['Stripe-Signature'];
    _logger?.fine('Request signature: $signature');
    if (signature == null || signature.isEmpty) {
      throw const StripeWebhookValidationException('Missing Stripe signature');
    }
    if (signature.contains(_whitespace)) {
      throw const StripeWebhookValidationException(
          'Whitespace in Stripe signature');
    }

    final signatureParts = {
      for (final [key, value]
          in signature.split(',').map((kv) => kv.split('=')))
        key: value,
    };
    _logger?.fine('Request signature parts: $signatureParts');

    final t = signatureParts['t'];
    final v1 = signatureParts['v1'];
    if (t == null || v1 == null) {
      throw const StripeWebhookValidationException(
        'Invalid Stripe signature parameters',
      );
    }

    const tolerance = Duration(minutes: 5);
    final timestampSecs = int.tryParse(t) ?? -1;
    _logger?.fine('Request timestamp: $timestampSecs');
    if (timestampSecs < 0) {
      throw const StripeWebhookValidationException('Invalid Stripe timestamp');
    }
    final timestamp = DateTime.fromMillisecondsSinceEpoch(
      timestampSecs * Duration.millisecondsPerSecond,
    );
    final now = clock.now();
    _logger?.fine('Current timestamp: ${now.millisecondsSinceEpoch ~/ 1000}');
    final timestampAge = now.difference(timestamp);
    _logger?.fine('Request age: ${timestampAge.inSeconds}s');
    if (timestampAge > tolerance) {
      throw const StripeWebhookValidationException('Bad Stripe timestamp');
    }

    final payload = '$timestampSecs.$body';
    final hmac = Hmac(sha256, utf8.encode(_signingSecret));
    final calculatedSignature = hmac.convert(utf8.encode(payload));
    _logger?.fine('Calculated signature: $calculatedSignature');
    final expectedSignature = Digest(hex.decode(v1));
    _logger?.fine('Expected signature: $v1');
    final validSignature = calculatedSignature == expectedSignature;
    if (!validSignature) {
      throw const StripeWebhookValidationException(
        'Invalid Stripe signature. Signature does not match expected.',
      );
    }
  }
}

final class StripeWebhookValidationException implements Exception {
  const StripeWebhookValidationException(this.message);

  final String message;

  @override
  String toString() => 'StripeValidationException: $message';
}
