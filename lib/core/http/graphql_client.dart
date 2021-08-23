import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';

abstract class IGqClient {
  Future<GraphQLResponse<T>> execute<T, U extends JsonSerializable>(
      GraphQLQuery<T, U> query);
}
