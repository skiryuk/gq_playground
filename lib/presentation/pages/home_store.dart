import 'package:get/get.dart';
import 'package:gq_playground/application/models/contract_page.dart';
import 'package:gq_playground/application/models/contract_page_item.dart';
import 'package:gq_playground/application/queries/contracts/contract_list_page_query.dart';
import 'package:gq_playground/application/queries/query.dart';

class HomeStore extends GetxController {
  final IContractsListPageQuery _query;

  HomeStore(query) : _query = query;

  // final _contractsListPage = Rxn<ContractPage>();

  final _total = 0.obs;
  final _items = RxList<ContractPageItem>([]);

  int get total => _total.value;
  List<ContractPageItem> get items => List.from(_items);

  void loadContractsPage() async {
    ContractPage? page = await _query(NoParams());
    _total.value = page?.totalCount ?? 0;
    _items.value = page?.items ?? [];
  }
}
