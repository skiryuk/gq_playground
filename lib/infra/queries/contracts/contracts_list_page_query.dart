import 'package:gq_playground/application/queries/contracts/contract_list_page_query.dart';
import 'package:gq_playground/infra/datasources/contracts/contracts_datasource.dart';
import 'package:gq_playground/application/models/contract_page.dart';
import 'package:gq_playground/application/queries/query.dart';
import 'package:gq_playground/infra/gq_models/gq_models.dart';
import 'package:gq_playground/infra/mappers/contracts_list_page_mapper.dart';

class ContractsListPageQuery implements IContractsListPageQuery {
  final IContractsDataSource _contractsDataSource;

  ContractsListPageQuery(contractsDataSource)
      : _contractsDataSource = contractsDataSource;

  @override
  Future<ContractPage?> call(NoParams params) {
    return _contractsDataSource
        .getContractsList(ContractsListQuery())
        .then((ContractsList$Query? model) => model?.toAppModel());
  }
}
