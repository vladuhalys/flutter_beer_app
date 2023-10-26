import 'package:flutter_beer_app/features/domain/entities/beer/beer.dart';

import 'beer_models_exports.dart';

class BeerModel extends Beer {
  const BeerModel(
      {int? id,
      String? name,
      String? tagline,
      String? firstBrewed,
      String? description,
      String? imageUrl,
      double? abv,
      double? ibu,
      double? targetFg,
      double? targetOg,
      double? ebc,
      double? srm,
      double? ph,
      double? attenuationLevel,
      VolumeModel? volume,
      BoilVolumeModel? boilVolume,
      MethodModel? method,
      IngredientsModel? ingredients,
      List<String>? foodPairing,
      String? brewersTips})
      : super(
            id: id,
            name: name,
            tagline: tagline,
            firstBrewed: firstBrewed,
            description: description,
            imageUrl: imageUrl,
            abv: abv,
            ibu: ibu,
            targetFg: targetFg,
            targetOg: targetOg,
            ebc: ebc,
            srm: srm,
            ph: ph,
            attenuationLevel: attenuationLevel,
            volume: volume,
            boilVolume: boilVolume,
            method: method,
            ingredients: ingredients,
            foodPairing: foodPairing,
            brewersTips: brewersTips);

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
}
