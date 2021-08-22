import 'package:artemis/artemis.dart';
import 'package:gq_playground/infra/gq_models/gq_models.dart';
import 'package:json_annotation/json_annotation.dart';

abstract class IContractsDataSource {
  Future<ContractsList$Query?> getContractsList(
      GraphQLQuery<ContractsList$Query, JsonSerializable> query);
}
