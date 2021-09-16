import 'package:artemis/artemis.dart';

abstract class IAppConfig {
  late String url;
}

class AppApiConfig extends IAppConfig {
  final String url = 'http://dolfront.beelinedev.ru/graphql';
}

class GraphQlClient {
  final ArtemisClient instance;

  GraphQlClient._(this.instance);

  factory GraphQlClient(IAppConfig config) {
    final instance = ArtemisClient(config.url);
    return GraphQlClient._(instance);
  }
}
