import 'dart:convert';

import 'package:gq_playground/core/gq_models/gq_models.graphql.dart';
import 'package:gq_playground/core/queries/query.dart';

import '../contract_list_page_query.dart';

class MockContractsListPageQuery implements IContractsListPageQuery {
  @override
  Future<ContractsList$Query?> call(NoParams params) async {
    await Future<void>.delayed(Duration(milliseconds: 750));
    return ContractsList$Query.fromJson(json.decode(
        '{"contractList":{"totalCount":3,"items":[{"contractId":82778197,"ctn":"9123223434","barcode":"1111111111","iccid":"897019900836112798"},{"contractId":82778198,"ctn":"9123223333","barcode":"2222222222","iccid":"897019900836112800"},{"contractId":82772343,"ctn":"9123224444","barcode":"33333333333","iccid":"897019900836115433"}]}}'));
  }
}
