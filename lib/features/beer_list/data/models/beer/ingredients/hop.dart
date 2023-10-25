import 'package:flutter_beer_app/features/beer_list/data/models/beer/ingredients/amount.dart';
import 'package:flutter_beer_app/features/beer_list/domain/entities/beer/ingredients/hop.dart';

class HopModel extends Hop {
  const HopModel(
      {String? name, AmountModel? amount, String? add, String? attribute})
      : super(name: name, amount: amount, add: add, attribute: attribute);

  factory HopModel.fromJson(Map<String, dynamic> json) {
    return HopModel(
      name: json['name'],
      amount: AmountModel.fromJson(json['amount']),
      add: json['add'],
      attribute: json['attribute'],
    );
  }

  factory HopModel.fromEntity(Hop? entity) {
    return HopModel(
      name: entity?.name,
      amount: AmountModel.fromEntity(entity?.amount),
      add: entity?.add,
      attribute: entity?.attribute,
    );
  }
}
