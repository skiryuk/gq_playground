import 'package:gq_playground/application/models/contract_page.dart';
import 'package:gq_playground/application/queries/query.dart';

abstract class IContractsListPageQuery
    implements IQuery<NoParams, ContractPage?> {
  @override
  Future<ContractPage?> call(NoParams params);
}
