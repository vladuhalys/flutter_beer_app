import 'package:flutter_beer_app/core/base/interface_model.dart';
import 'package:flutter_beer_app/core/constants/constants.dart';
import 'package:flutter_beer_app/features/domain/entities/beer/beer.dart';
import 'package:flutter_beer_app/features/domain/entities/beer/boil_volume.dart';
import 'package:flutter_beer_app/features/domain/entities/beer/ingredients/ingredient.dart';
import 'package:flutter_beer_app/features/domain/entities/beer/method/method.dart';
import 'package:flutter_beer_app/features/domain/entities/beer/volume.dart';

import 'beer_models_exports.dart';

class BeerModel implements IModel<BeerEntity> {
  final num? id;
  final String? name;
  final String? tagline;
  final String? firstBrewed;
  final String? description;
  final String? imageUrl;
  final num? abv;
  final num? ibu;
  final num? targetFg;
  final num? targetOg;
  final num? ebc;
  final num? srm;
  final num? ph;
  final num? attenuationLevel;
  final VolumeModel? volume;
  final BoilVolumeModel? boilVolume;

  final MethodModel? method;
  final IngredientsModel? ingredients;
  final List<String>? foodPairing;
  final String? brewersTips;

  const BeerModel(
      {this.id,
      this.name,
      this.tagline,
      this.firstBrewed,
      this.description,
      this.imageUrl,
      this.abv,
      this.ibu,
      this.targetFg,
      this.targetOg,
      this.ebc,
      this.srm,
      this.ph,
      this.attenuationLevel,
      this.volume,
      this.boilVolume,
      this.method,
      this.ingredients,
      this.foodPairing,
      this.brewersTips});

  factory BeerModel.fromJson(Map<String, dynamic> json) {
    return BeerModel(
        id: json['id'],
        name: json['name'],
        tagline: json['tagline'],
        firstBrewed: json['first_brewed'],
        description: json['description'],
        imageUrl: json['image_url'],
        abv: json['abv']?.toDouble(),
        ibu: json['ibu']?.toDouble(),
        targetFg: json['target_fg']?.toDouble(),
        targetOg: json['target_og']?.toDouble(),
        ebc: json['ebc']?.toDouble(),
        srm: json['srm']?.toDouble(),
        ph: json['ph']?.toDouble(),
        attenuationLevel: json['attenuation_level'].toDouble(),
        volume: json['volume'] != null
            ? VolumeModel.fromJson(json['volume'])
            : null,
        boilVolume: json['boil_volume'] != null
            ? BoilVolumeModel.fromJson(json['boil_volume'])
            : null,
        method: json['method'] != null
            ? MethodModel.fromJson(json['method'])
            : null,
        ingredients: json['ingredients'] != null
            ? IngredientsModel.fromJson(json['ingredients'])
            : null,
        foodPairing: json['food_pairing'] != null
            ? List<String>.from(json['food_pairing'])
            : null,
        brewersTips: json['brewers_tips']);
  }
  factory BeerModel.fromEntity(BeerEntity entity) {
    return BeerModel(
        id: entity.id,
        name: entity.name,
        tagline: entity.tagline,
        firstBrewed: entity.firstBrewed,
        description: entity.description,
        imageUrl: entity.imageUrl,
        abv: entity.abv,
        ibu: entity.ibu,
        targetFg: entity.targetFg,
        targetOg: entity.targetOg,
        ebc: entity.ebc,
        srm: entity.srm,
        ph: entity.ph,
        attenuationLevel: entity.attenuationLevel,
        volume: VolumeModel.fromEntity(entity.volume),
        boilVolume: BoilVolumeModel.fromEntity(entity.boilVolume),
        method: MethodModel.fromEntity(entity.method),
        ingredients: IngredientsModel.fromEntity(entity.ingredients),
        foodPairing: entity.foodPairing,
        brewersTips: entity.brewersTips);
  }

  @override
  BeerEntity convertToEntity() {
    return BeerEntity(
        id: id ?? Constants.unknownNumber,
        name: name ?? Constants.unknownString,
        tagline: tagline ?? Constants.unknownString,
        firstBrewed: firstBrewed ?? Constants.unknownString,
        description: description ?? Constants.unknownString,
        imageUrl: imageUrl ?? Constants.unknownString,
        abv: abv ?? Constants.unknownNumber,
        ibu: ibu ?? Constants.unknownNumber,
        targetFg: targetFg ?? Constants.unknownNumber,
        targetOg: targetOg ?? Constants.unknownNumber,
        ebc: ebc ?? Constants.unknownNumber,
        srm: srm ?? Constants.unknownNumber,
        ph: ph ?? Constants.unknownNumber,
        attenuationLevel: attenuationLevel ?? Constants.unknownNumber,
        volume: volume?.convertToEntity() ?? VolumeEntity.empty(),
        boilVolume: boilVolume?.convertToEntity() ?? BoilVolumeEntity.empty(),
        method: method?.convertToEntity() ?? MethodEntity.empty(),
        ingredients:
            ingredients?.convertToEntity() ?? IngredientsEntity.empty(),
        foodPairing: foodPairing ?? [],
        brewersTips: brewersTips ?? Constants.unknownString);
  }
}
