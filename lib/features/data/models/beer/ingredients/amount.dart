import 'package:flutter_beer_app/features/domain/entities/beer/ingredients/amount.dart';

class AmountModel extends Amount {
  const AmountModel({double? value, String? unit})
      : super(value: value, unit: unit);

  factory AmountModel.fromJson(Map<String, dynamic> json) {
    return AmountModel(
      value: json['value'],
      unit: json['unit'],
    );
  }

  factory AmountModel.fromEntity(Amount? entity) {
    return AmountModel(
      value: entity?.value,
      unit: entity?.unit,
    );
  }
}
