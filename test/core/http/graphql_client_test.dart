import 'package:flutter_test/flutter_test.dart';
import 'package:gq_playground/core/http/graphql_client.dart';
import 'package:mockito/mockito.dart';

class AppConfigMock extends Mock with IAppConfig {
  final String url = 'some';
}

void main() {
  test('create graphql client', () {

    final config = AppConfigMock();
    final gqClient = GraphQlClient(config);

    expect(gqClient.instance != null, true);
  });
}
