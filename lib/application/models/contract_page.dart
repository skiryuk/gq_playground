import 'package:gq_playground/application/models/contract_page_item.dart';

class ContractPage {
  final List<ContractPageItem> items;
  final int totalCount;

  const ContractPage({required this.items, required this.totalCount});
}
