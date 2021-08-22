import 'package:gq_playground/infra/gq_models/gq_models.dart';

abstract class IContractsDataSource {
  Future<ContractsList$Query?> getContractsList();
}
