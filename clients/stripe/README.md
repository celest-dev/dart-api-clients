# Stripe API

*NOTE: This package is not officially affiliated with Stripe.*

This package provides a Dart API for interacting with the Stripe REST API. As best as possible, it provides a 1:1 mapping of the API endpoints and request/response objects using Dart idioms such as sealed classes and extension types.

The package is generated from Stripe's [OpenAPI specification](https://github.com/stripe/openapi), specifically `spec3.sdk.json`.

### Security Considerations

While this package can run in both client and server environments, it is **strongly** recommended to only ever use it on the server. Your Stripe API key should never be available to the client for risk of it leaking. This package was made to work in client-side environments strictly for the purposes of mocking and proxying.

## Usage

```dart
final stripe = StripeApiClient(apiKey: 'sk_test_...');
final session = await stripe.v1.checkout.sessions.retrieve(session: 'cs_test_123');
```
