import 'package:flutter_beer_app/core/base/interface_model.dart';
import 'package:flutter_beer_app/core/constants/constants.dart';
import 'package:flutter_beer_app/features/domain/entities/beer/ingredients/amount.dart';

class AmountModel implements IModel<AmountEntity>{
  final double? value;
  final String? unit;
  const AmountModel({this.value, this.unit});

  factory AmountModel.fromJson(Map<String, dynamic> json) {
    return AmountModel(
      value: json['value'],
      unit: json['unit'],
    );
  }

  factory AmountModel.fromEntity(AmountEntity entity) {
    return AmountModel(
      value: entity.value,
      unit: entity.unit,
    );
  }
  
  @override
  AmountEntity convertToEntity() {
    return AmountEntity(
      value: value ?? Constants.unknownDouble,
      unit: unit ?? Constants.unknownString,
    );
  }
}
