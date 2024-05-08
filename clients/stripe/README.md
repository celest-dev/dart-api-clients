# Stripe API

*NOTE: This package is not officially affiliated with Stripe.*

This package provides a Dart API for interacting with the Stripe REST API. As best as possible, it provides a 1:1 mapping of the API endpoints and request/response objects using Dart idioms such as sealed classes and extension types.

The package is generated from Stripe's [OpenAPI specification](https://github.com/stripe/openapi), specifically `spec3.sdk.json`.

## Usage

```dart
final stripe = StripeApiClient(apiKey: 'sk_test_...');
final session = await stripe.v1.checkout.sessions.retrieve(session: 'cs_test_123');
```
