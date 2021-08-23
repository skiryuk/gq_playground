import 'package:gq_playground/core/gq_models/gq_models.graphql.dart';
import 'package:gq_playground/core/queries/query.dart';

abstract class IContractsListPageQuery
    implements IQuery<NoParams, ContractsList$Query?> {
  @override
  Future<ContractsList$Query?> call(NoParams params);
}
