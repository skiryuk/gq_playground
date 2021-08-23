import 'package:artemis/artemis.dart';
import 'package:gq_playground/core/exceptions/graphql_exception.dart';
import 'package:gq_playground/core/gq_models/gq_models.graphql.dart';
import 'package:gq_playground/core/http/graphql_client.dart';
import 'package:gq_playground/core/queries/query.dart';

abstract class IContractsListPageQuery
    implements IQuery<NoParams, ContractsList$Query?> {
  @override
  Future<ContractsList$Query?> call(NoParams params);
}

class ContractsListPageQuery implements IContractsListPageQuery {
  final IGqClient _client;

  ContractsListPageQuery(client) : _client = client;

  @override
  Future<ContractsList$Query?> call(NoParams params) {
    return _client
        .execute(ContractsListQuery())
        .then((GraphQLResponse<ContractsList$Query> res) => res.data)
        .catchError((e) => throw GqException('Ошибка'));
  }
}
