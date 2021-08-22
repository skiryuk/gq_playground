import 'package:artemis/artemis.dart';
import 'package:gq_playground/infra/datasources/contracts/contracts_datasource.dart';
import 'package:gq_playground/infra/exceptions/graphql_exception.dart';
import 'package:gq_playground/infra/gq_models/gq_models.dart';
import 'package:gq_playground/infra/http/graphql_client.dart';
import 'package:json_annotation/json_annotation.dart';

class ContractsDataSourceGq implements IContractsDataSource {
  final IGqClient _client;

  ContractsDataSourceGq(client) : _client = client;

  @override
  Future<ContractsList$Query?> getContractsList(
      GraphQLQuery<ContractsList$Query, JsonSerializable> query) async {
    return _client
        .execute(query)
        .then((GraphQLResponse<ContractsList$Query> res) => res.data)
        .catchError((e) => throw GqException('Ошибка'));
  }
}
