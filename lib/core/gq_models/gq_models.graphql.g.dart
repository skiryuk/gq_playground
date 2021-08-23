// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'gq_models.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalesPointHistoryItemV2Model _$SalesPointHistoryItemV2ModelFromJson(
    Map<String, dynamic> json) {
  return SalesPointHistoryItemV2Model()
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..code = json['code'] as String;
}

Map<String, dynamic> _$SalesPointHistoryItemV2ModelToJson(
        SalesPointHistoryItemV2Model instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
    };

SalePointsHistoryResponseModel _$SalePointsHistoryResponseModelFromJson(
    Map<String, dynamic> json) {
  return SalePointsHistoryResponseModel()
    ..items = (json['items'] as List<dynamic>)
        .map((e) =>
            SalesPointHistoryItemV2Model.fromJson(e as Map<String, dynamic>))
        .toList()
    ..totalCount = json['totalCount'] as int;
}

Map<String, dynamic> _$SalePointsHistoryResponseModelToJson(
        SalePointsHistoryResponseModel instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'totalCount': instance.totalCount,
    };

Salepoints$Query _$Salepoints$QueryFromJson(Map<String, dynamic> json) {
  return Salepoints$Query()
    ..salePointHistory = SalePointsHistoryResponseModel.fromJson(
        json['salePointHistory'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Salepoints$QueryToJson(Salepoints$Query instance) =>
    <String, dynamic>{
      'salePointHistory': instance.salePointHistory.toJson(),
    };

ContractItemModel _$ContractItemModelFromJson(Map<String, dynamic> json) {
  return ContractItemModel()
    ..ctn = json['ctn'] as String?
    ..contractId = json['contractId'] as int
    ..barcode = json['barcode'] as String?
    ..iccid = json['iccid'] as String?;
}

Map<String, dynamic> _$ContractItemModelToJson(ContractItemModel instance) =>
    <String, dynamic>{
      'ctn': instance.ctn,
      'contractId': instance.contractId,
      'barcode': instance.barcode,
      'iccid': instance.iccid,
    };

PagingResponseModelOfContractItemModel
    _$PagingResponseModelOfContractItemModelFromJson(
        Map<String, dynamic> json) {
  return PagingResponseModelOfContractItemModel()
    ..items = (json['items'] as List<dynamic>)
        .map((e) => ContractItemModel.fromJson(e as Map<String, dynamic>))
        .toList()
    ..totalCount = json['totalCount'] as int;
}

Map<String, dynamic> _$PagingResponseModelOfContractItemModelToJson(
        PagingResponseModelOfContractItemModel instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'totalCount': instance.totalCount,
    };

ContractsList$Query _$ContractsList$QueryFromJson(Map<String, dynamic> json) {
  return ContractsList$Query()
    ..contractList = PagingResponseModelOfContractItemModel.fromJson(
        json['contractList'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ContractsList$QueryToJson(
        ContractsList$Query instance) =>
    <String, dynamic>{
      'contractList': instance.contractList.toJson(),
    };
