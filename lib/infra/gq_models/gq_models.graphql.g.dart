// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'gq_models.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Salepoints$Query$SalePointsHistoryResponseModel$SalesPointHistoryItemV2Model
    _$Salepoints$Query$SalePointsHistoryResponseModel$SalesPointHistoryItemV2ModelFromJson(
        Map<String, dynamic> json) {
  return Salepoints$Query$SalePointsHistoryResponseModel$SalesPointHistoryItemV2Model()
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..code = json['code'] as String;
}

Map<String, dynamic>
    _$Salepoints$Query$SalePointsHistoryResponseModel$SalesPointHistoryItemV2ModelToJson(
            Salepoints$Query$SalePointsHistoryResponseModel$SalesPointHistoryItemV2Model
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
          'code': instance.code,
        };

Salepoints$Query$SalePointsHistoryResponseModel
    _$Salepoints$Query$SalePointsHistoryResponseModelFromJson(
        Map<String, dynamic> json) {
  return Salepoints$Query$SalePointsHistoryResponseModel()
    ..items = (json['items'] as List<dynamic>)
        .map((e) =>
            Salepoints$Query$SalePointsHistoryResponseModel$SalesPointHistoryItemV2Model
                .fromJson(e as Map<String, dynamic>))
        .toList()
    ..totalCount = json['totalCount'] as int;
}

Map<String, dynamic> _$Salepoints$Query$SalePointsHistoryResponseModelToJson(
        Salepoints$Query$SalePointsHistoryResponseModel instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'totalCount': instance.totalCount,
    };

Salepoints$Query _$Salepoints$QueryFromJson(Map<String, dynamic> json) {
  return Salepoints$Query()
    ..salePointHistory =
        Salepoints$Query$SalePointsHistoryResponseModel.fromJson(
            json['salePointHistory'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Salepoints$QueryToJson(Salepoints$Query instance) =>
    <String, dynamic>{
      'salePointHistory': instance.salePointHistory.toJson(),
    };

ContractsList$Query$PagingResponseModelOfContractItemModel$ContractItemModel
    _$ContractsList$Query$PagingResponseModelOfContractItemModel$ContractItemModelFromJson(
        Map<String, dynamic> json) {
  return ContractsList$Query$PagingResponseModelOfContractItemModel$ContractItemModel()
    ..ctn = json['ctn'] as String?
    ..contractId = json['contractId'] as int
    ..barcode = json['barcode'] as String?
    ..iccid = json['iccid'] as String?;
}

Map<String, dynamic>
    _$ContractsList$Query$PagingResponseModelOfContractItemModel$ContractItemModelToJson(
            ContractsList$Query$PagingResponseModelOfContractItemModel$ContractItemModel
                instance) =>
        <String, dynamic>{
          'ctn': instance.ctn,
          'contractId': instance.contractId,
          'barcode': instance.barcode,
          'iccid': instance.iccid,
        };

ContractsList$Query$PagingResponseModelOfContractItemModel
    _$ContractsList$Query$PagingResponseModelOfContractItemModelFromJson(
        Map<String, dynamic> json) {
  return ContractsList$Query$PagingResponseModelOfContractItemModel()
    ..items = (json['items'] as List<dynamic>)
        .map((e) =>
            ContractsList$Query$PagingResponseModelOfContractItemModel$ContractItemModel
                .fromJson(e as Map<String, dynamic>))
        .toList()
    ..totalCount = json['totalCount'] as int;
}

Map<String,
    dynamic> _$ContractsList$Query$PagingResponseModelOfContractItemModelToJson(
        ContractsList$Query$PagingResponseModelOfContractItemModel instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'totalCount': instance.totalCount,
    };

ContractsList$Query _$ContractsList$QueryFromJson(Map<String, dynamic> json) {
  return ContractsList$Query()
    ..contractList =
        ContractsList$Query$PagingResponseModelOfContractItemModel.fromJson(
            json['contractList'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ContractsList$QueryToJson(
        ContractsList$Query instance) =>
    <String, dynamic>{
      'contractList': instance.contractList.toJson(),
    };
