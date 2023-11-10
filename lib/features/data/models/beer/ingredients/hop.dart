import 'package:flutter_beer_app/core/base/interface_model.dart';
import 'package:flutter_beer_app/core/constants/constants.dart';
import 'package:flutter_beer_app/features/data/models/beer/ingredients/amount.dart';
import 'package:flutter_beer_app/features/domain/entities/beer/ingredients/amount.dart';
import 'package:flutter_beer_app/features/domain/entities/beer/ingredients/hop.dart';

class HopModel implements IModel<HopEntity> {
  final String? name;
  final AmountModel? amount;
  final String? add;
  final String? attribute;
  const HopModel(
      {required this.name,
      required this.amount,
      required this.add,
      required this.attribute});

  factory HopModel.fromJson(Map<String, dynamic> json) {
    return HopModel(
      name: json['name'],
      amount: AmountModel.fromJson(json['amount']),
      add: json['add'],
      attribute: json['attribute'],
    );
  }



  factory HopModel.fromEntity(HopEntity entity) {
    return HopModel(
      name: entity.name,
      amount: AmountModel.fromEntity(entity.amount),
      add: entity.add,
      attribute: entity.attribute,
    );
  }
  
  @override
  HopEntity convertToEntity() {
    return HopEntity(
      name: name ?? Constants.unknownString,
      amount: amount?.convertToEntity() ?? AmountEntity.empty(),
      add: add ?? Constants.unknownString,
      attribute: attribute ?? Constants.unknownString,
    );
  }
}
