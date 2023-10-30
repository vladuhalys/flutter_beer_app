import 'package:flutter_beer_app/core/base/interface_model.dart';
import 'package:flutter_beer_app/core/constants/constants.dart';
import 'package:flutter_beer_app/features/data/models/beer/ingredients/amount.dart';
import 'package:flutter_beer_app/features/domain/entities/beer/ingredients/amount.dart';
import 'package:flutter_beer_app/features/domain/entities/beer/ingredients/malt.dart';

class MaltModel implements IModel<MaltEntity>{
  final String? name;
  final AmountModel? amount;

  const MaltModel({required this.name, required this.amount});

  factory MaltModel.fromJson(Map<String, dynamic> json) {
    return MaltModel(
      name: json['name'],
      amount: AmountModel.fromJson(json['amount']),
    );
  }

  factory MaltModel.fromEntity(MaltEntity entity) {
    return MaltModel(
      name: entity.name,
      amount: AmountModel.fromEntity(entity.amount),
    );
  }
  
  @override
  MaltEntity convertToEntity() {
    return MaltEntity(
      name: name ?? Constants.unknownString,
      amount: amount?.convertToEntity() ?? AmountEntity.empty(),
    );
  }
}
