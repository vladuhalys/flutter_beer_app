import 'package:flutter_beer_app/features/beer_list/data/models/beer/ingredients/hop.dart';
import 'package:flutter_beer_app/features/beer_list/data/models/beer/ingredients/malt.dart';
import 'package:flutter_beer_app/features/beer_list/domain/entities/beer/ingredients/ingredient.dart';

class IngredientsModel extends Ingredients {
  const IngredientsModel({
    List<MaltModel>? malt,
    List<HopModel>? hops,
    String? yeast,
  }) : super(malt: malt, hops: hops, yeast: yeast);

  factory IngredientsModel.fromJson(Map<String, dynamic> json) {
    return IngredientsModel(
      malt: json['malt'] != null
          ? List<MaltModel>.from(json['malt'].map((x) => MaltModel.fromJson(x)))
          : null,
      hops: json['hops'] != null
          ? List<HopModel>.from(json['hops'].map((x) => HopModel.fromJson(x)))
          : null,
      yeast: json['yeast'],
    );
  }

  factory IngredientsModel.fromEntity(Ingredients? entity) {
    return IngredientsModel(
      malt: entity?.malt?.map((e) => MaltModel.fromEntity(e)).toList(),
      hops: entity?.hops?.map((e) => HopModel.fromEntity(e)).toList(),
      yeast: entity?.yeast,
    );
  }
}
