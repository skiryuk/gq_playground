import 'package:gq_playground/application/models/contract_page.dart';
import 'package:gq_playground/application/models/contract_page_item.dart';
import 'package:gq_playground/infra/gq_models/gq_models.dart';

extension ContractsList$QueryX on ContractsList$Query {
  ContractPage toAppModel() => ContractPage(
      totalCount: contractList.totalCount,
      items: contractList.items.map((i) => i.toAppModel()).toList());
}

extension ContractsListItemX
    on ContractsList$Query$PagingResponseModelOfContractItemModel$ContractItemModel {
  ContractPageItem toAppModel() => ContractPageItem(
      contractId: contractId, iccid: iccid, ctn: ctn, barcode: barcode);
}
