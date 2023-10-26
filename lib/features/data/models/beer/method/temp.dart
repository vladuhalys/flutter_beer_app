import 'package:flutter_beer_app/features/domain/entities/beer/method/temp.dart';

class TempModel extends Temp {
  const TempModel({int? value, String? unit}) : super(value: value, unit: unit);

  factory TempModel.fromJson(Map<String, dynamic> json) {
    return TempModel(
      value: json['value'],
      unit: json['unit'],
    );
  }

  factory TempModel.fromEntity(Temp? entity) {
    return TempModel(
      value: entity?.value,
      unit: entity?.unit,
    );
  }
}
