import 'package:flutter_beer_app/features/data/models/beer/ingredients/amount.dart';
import 'package:flutter_beer_app/features/domain/entities/beer/ingredients/malt.dart';

class MaltModel extends Malt {
  const MaltModel({String? name, AmountModel? amount})
      : super(name: name, amount: amount);

  factory MaltModel.fromJson(Map<String, dynamic> json) {
    return MaltModel(
      name: json['name'],
      amount: AmountModel.fromJson(json['amount']),
    );
  }

  factory MaltModel.fromEntity(Malt? entity) {
    return MaltModel(
      name: entity?.name,
      amount: AmountModel.fromEntity(entity?.amount),
    );
  }
}
