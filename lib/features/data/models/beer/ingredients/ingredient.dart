import 'package:flutter_beer_app/core/base/interface_model.dart';
import 'package:flutter_beer_app/core/constants/constants.dart';
import 'package:flutter_beer_app/features/data/models/beer/ingredients/hop.dart';
import 'package:flutter_beer_app/features/data/models/beer/ingredients/malt.dart';
import 'package:flutter_beer_app/features/domain/entities/beer/ingredients/ingredient.dart';

class IngredientsModel implements IModel<IngredientsEntity>{
  final List<MaltModel>? malt;
  final List<HopModel>? hops;
  final String? yeast;
  const IngredientsModel({this.malt, this.hops, this.yeast});

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

  factory IngredientsModel.fromEntity(IngredientsEntity entity) {
    return IngredientsModel(
      malt: entity.malt.map((e) => MaltModel.fromEntity(e)).toList(),
      hops: entity.hops.map((e) => HopModel.fromEntity(e)).toList(),
      yeast: entity.yeast,
    );
  }
  
  @override
  IngredientsEntity convertToEntity() {
    return IngredientsEntity(
      malt: malt?.map((e) => e.convertToEntity()).toList() ?? [],
      hops: hops?.map((e) => e.convertToEntity()).toList() ?? [],
      yeast: yeast ?? Constants.unknownString,
    );
  }
}
