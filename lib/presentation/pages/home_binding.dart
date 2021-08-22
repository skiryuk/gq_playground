import 'package:get/get.dart';
import 'package:gq_playground/application/queries/contracts/contract_list_page_query.dart';
import 'package:gq_playground/infra/datasources/contracts/contracts_datasource.dart';
import 'package:gq_playground/infra/datasources/contracts/contracts_datasource_gq.dart';
import 'package:gq_playground/infra/http/app_graphql_client.dart';
import 'package:gq_playground/infra/http/graphql_client.dart';
import 'package:gq_playground/infra/queries/contracts/contracts_list_page_query.dart';
import 'package:gq_playground/presentation/pages/home_store.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<IGqClient>(AppGqClient());
    Get.put<IContractsDataSource>(ContractsDataSourceGq(Get.find<IGqClient>()));
    Get.put<IContractsListPageQuery>(
        ContractsListPageQuery(Get.find<IContractsDataSource>()));
    Get.put(HomeStore(Get.find<IContractsListPageQuery>()));
  }
}
