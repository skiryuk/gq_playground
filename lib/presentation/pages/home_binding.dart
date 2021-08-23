import 'package:get/get.dart';
import 'package:gq_playground/core/http/app_graphql_client.dart';
import 'package:gq_playground/core/http/graphql_client.dart';
import 'package:gq_playground/core/queries/contracts/api/gq_contract_list_page_query.dart';
import 'package:gq_playground/core/queries/contracts/contract_list_page_query.dart';
import 'package:gq_playground/core/queries/contracts/mock/mock_contract_list_page_query.dart';
import 'package:gq_playground/presentation/pages/home_controller.dart';

import 'home_state.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<IGqClient>(AppGqClient());
    /*Get.put<IContractsListPageQuery>(
        GqContractsListPageQuery(Get.find<IGqClient>()));*/
    Get.put<IContractsListPageQuery>(MockContractsListPageQuery());
    Get.put(HomeState());
    Get.put(HomeController(
        Get.find<IContractsListPageQuery>(), Get.find<HomeState>()));
  }
}
