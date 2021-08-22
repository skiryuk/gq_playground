// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'gq_models.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class SalesPointHistoryItemV2Model extends JsonSerializable
    with EquatableMixin {
  SalesPointHistoryItemV2Model();

  factory SalesPointHistoryItemV2Model.fromJson(Map<String, dynamic> json) =>
      _$SalesPointHistoryItemV2ModelFromJson(json);

  late int id;

  late String name;

  late String code;

  @override
  List<Object?> get props => [id, name, code];
  @override
  Map<String, dynamic> toJson() => _$SalesPointHistoryItemV2ModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SalePointsHistoryResponseModel extends JsonSerializable
    with EquatableMixin {
  SalePointsHistoryResponseModel();

  factory SalePointsHistoryResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SalePointsHistoryResponseModelFromJson(json);

  late List<SalesPointHistoryItemV2Model> items;

  late int totalCount;

  @override
  List<Object?> get props => [items, totalCount];
  @override
  Map<String, dynamic> toJson() => _$SalePointsHistoryResponseModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Salepoints$Query extends JsonSerializable with EquatableMixin {
  Salepoints$Query();

  factory Salepoints$Query.fromJson(Map<String, dynamic> json) =>
      _$Salepoints$QueryFromJson(json);

  late SalePointsHistoryResponseModel salePointHistory;

  @override
  List<Object?> get props => [salePointHistory];
  @override
  Map<String, dynamic> toJson() => _$Salepoints$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ContractItemModel extends JsonSerializable with EquatableMixin {
  ContractItemModel();

  factory ContractItemModel.fromJson(Map<String, dynamic> json) =>
      _$ContractItemModelFromJson(json);

  String? ctn;

  late int contractId;

  String? barcode;

  String? iccid;

  @override
  List<Object?> get props => [ctn, contractId, barcode, iccid];
  @override
  Map<String, dynamic> toJson() => _$ContractItemModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PagingResponseModelOfContractItemModel extends JsonSerializable
    with EquatableMixin {
  PagingResponseModelOfContractItemModel();

  factory PagingResponseModelOfContractItemModel.fromJson(
          Map<String, dynamic> json) =>
      _$PagingResponseModelOfContractItemModelFromJson(json);

  late List<ContractItemModel> items;

  late int totalCount;

  @override
  List<Object?> get props => [items, totalCount];
  @override
  Map<String, dynamic> toJson() =>
      _$PagingResponseModelOfContractItemModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ContractsList$Query extends JsonSerializable with EquatableMixin {
  ContractsList$Query();

  factory ContractsList$Query.fromJson(Map<String, dynamic> json) =>
      _$ContractsList$QueryFromJson(json);

  late PagingResponseModelOfContractItemModel contractList;

  @override
  List<Object?> get props => [contractList];
  @override
  Map<String, dynamic> toJson() => _$ContractsList$QueryToJson(this);
}

final SALEPOINTS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'Salepoints'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'salePointHistory'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'model'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'offset'),
                        value: IntValueNode(value: '0')),
                    ObjectFieldNode(
                        name: NameNode(value: 'limit'),
                        value: IntValueNode(value: '10'))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'items'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'code'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'totalCount'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class SalepointsQuery extends GraphQLQuery<Salepoints$Query, JsonSerializable> {
  SalepointsQuery();

  @override
  final DocumentNode document = SALEPOINTS_QUERY_DOCUMENT;

  @override
  final String operationName = 'Salepoints';

  @override
  List<Object?> get props => [document, operationName];
  @override
  Salepoints$Query parse(Map<String, dynamic> json) =>
      Salepoints$Query.fromJson(json);
}

final CONTRACTS_LIST_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'ContractsList'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'contractList'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'model'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'limit'),
                        value: IntValueNode(value: '10')),
                    ObjectFieldNode(
                        name: NameNode(value: 'offset'),
                        value: IntValueNode(value: '0'))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'items'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'ctn'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'contractId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'barcode'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'iccid'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'totalCount'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class ContractsListQuery
    extends GraphQLQuery<ContractsList$Query, JsonSerializable> {
  ContractsListQuery();

  @override
  final DocumentNode document = CONTRACTS_LIST_QUERY_DOCUMENT;

  @override
  final String operationName = 'ContractsList';

  @override
  List<Object?> get props => [document, operationName];
  @override
  ContractsList$Query parse(Map<String, dynamic> json) =>
      ContractsList$Query.fromJson(json);
}
