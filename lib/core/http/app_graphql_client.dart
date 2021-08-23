import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';

import 'graphql_client.dart';

class AppGqClient implements IGqClient {
  final client = ArtemisClient(
    'http://dolfront.beelinedev.ru/graphql',
  );

  @override
  Future<GraphQLResponse<T>> execute<T, U extends JsonSerializable>(
      GraphQLQuery<T, U> query) {
    return client.execute(query);
  }
}
