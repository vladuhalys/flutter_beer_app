import 'package:equatable/equatable.dart';
import 'package:flutter_beer_app/core/constants/constants.dart';

import 'boil_volume.dart';
import 'volume.dart';
import 'ingredients/ingredient.dart';
import 'method/method.dart';

class BeerEntity extends Equatable {
  final int id;
  final String name;
  final String tagline;
  final String firstBrewed;
  final String description;
  final String imageUrl;
  final double abv;
  final double ibu;
  final double targetFg;
  final double targetOg;
  final double ebc;
  final double srm;
  final double ph;
  final double attenuationLevel;
  final VolumeEntity volume;
  final BoilVolumeEntity boilVolume;
  final MethodEntity method;
  final IngredientsEntity ingredients;
  final List<String> foodPairing;
  final String brewersTips;

  const BeerEntity(
      {required this.id,
      required this.name,
      required this.tagline,
      required this.firstBrewed,
      required this.description,
      required this.imageUrl,
      required this.abv,
      required this.ibu,
      required this.targetFg,
      required this.targetOg,
      required this.ebc,
      required this.srm,
      required this.ph,
      required this.attenuationLevel,
      required this.volume,
      required this.boilVolume,
      required this.method,
      required this.ingredients,
      required this.foodPairing,
      required this.brewersTips});

  factory BeerEntity.empty() {
    return BeerEntity(
        id: Constants.unknownInt,
        name: Constants.unknownString,
        tagline: Constants.unknownString,
        firstBrewed: Constants.unknownString,
        description: Constants.unknownString,
        imageUrl: Constants.unknownString,
        abv: Constants.unknownDouble,
        ibu: Constants.unknownDouble,
        targetFg: Constants.unknownDouble,
        targetOg: Constants.unknownDouble,
        ebc: Constants.unknownDouble,
        srm: Constants.unknownDouble,
        ph: Constants.unknownDouble,
        attenuationLevel: 0,
        volume: VolumeEntity.empty(),
        boilVolume: BoilVolumeEntity.empty(),
        method: MethodEntity.empty(),
        ingredients: IngredientsEntity.empty(),
        foodPairing: const [Constants.unknownString],
        brewersTips: Constants.unknownString);
  }

  @override
  List<Object?> get props {
    return [
      id,
      name,
      tagline,
      firstBrewed,
      description,
      imageUrl,
      abv,
      ibu,
      targetFg,
      targetOg,
      ebc,
      srm,
      ph,
      attenuationLevel,
      volume,
      boilVolume,
      method,
      ingredients,
      foodPairing,
      brewersTips,
    ];
  }
}
