import 'package:get/get.dart';
import 'package:gq_playground/core/gq_models/gq_models.dart';
import 'package:gq_playground/core/queries/contracts/contract_list_page_query.dart';
import 'package:gq_playground/core/queries/query.dart';

import 'home_state.dart';

class HomeController extends GetxController {
  final IContractsListPageQuery _query;
  final HomeState _state;

  HomeController(query, state)
      : _query = query,
        _state = state;

  int get total => _state.total.value;
  List<ContractItemModel> get items => List.from(_state.items);

  void loadContractsPage() async {
    ContractsList$Query? res = await _query(NoParams());
    _state.total.value = res?.contractList.totalCount ?? 0;
    _state.items.value = res?.contractList.items ?? [];
  }

  void increaseTotal() {
    _state.total.value++;
  }
}
