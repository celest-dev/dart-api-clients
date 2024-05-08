import 'package:http/http.dart' as http;

final class StripeHttpClient extends http.BaseClient {
  StripeHttpClient({
    required String apiKey,
    String? version,
    http.Client? baseClient,
  })  : _apiKey = apiKey,
        _version = version,
        _ownsInner = baseClient == null,
        _inner = baseClient ?? http.Client();

  final String _apiKey;
  final String? _version;
  final bool _ownsInner;
  final http.Client _inner;

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers['Authorization'] = 'Bearer $_apiKey';
    if (_version != null) {
      request.headers['Stripe-Version'] = _version;
    }
    return _inner.send(request);
  }

  @override
  void close() {
    if (_ownsInner) {
      _inner.close();
    }
  }
}
