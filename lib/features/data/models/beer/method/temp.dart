import 'package:flutter_beer_app/core/base/interface_model.dart';
import 'package:flutter_beer_app/core/constants/constants.dart';
import 'package:flutter_beer_app/features/domain/entities/beer/method/temp.dart';

class TempModel implements IModel<TempEntity> {
  final num? value;
  final String? unit;

  TempModel({required this.value, required this.unit});

  factory TempModel.fromJson(Map<String, dynamic> json) {
    return TempModel(
      value: json['value'],
      unit: json['unit'],
    );
  }

  factory TempModel.fromEntity(TempEntity entity) {
    return TempModel(
      value: entity.value,
      unit: entity.unit,
    );
  }

  @override
  TempEntity convertToEntity() {
    return TempEntity(
      value: value ?? Constants.unknownNumber,
      unit: unit ?? Constants.unknownString,
    );
  }
}
