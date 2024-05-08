import 'package:client_stripe/client.dart';
import 'package:client_stripe/models.dart';

Future<void> main() async {
  final stripe = StripeApiClient(
    apiKey: 'sk_test_123',
    // Runs against: `stripe-mock`
    // https://github.com/stripe/stripe-mock
    baseUri: Uri.parse('http://localhost:12111'),
  );
  final customer = await stripe.v1.customers.retrieve(customer: 'cus_test_123');
  switch (customer) {
    case Customer():
      print('Found customer: $customer');
    case DeletedCustomer():
      print('Customer was deleted');
  }
}
