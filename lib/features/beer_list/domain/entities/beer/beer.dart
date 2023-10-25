import 'package:equatable/equatable.dart';

import 'boil_volume.dart';
import 'volume.dart';
import 'ingredients/ingredient.dart';
import 'method/method.dart';

class Beer extends Equatable {
  final int? id;
  final String? name;
  final String? tagline;
  final String? firstBrewed;
  final String? description;
  final String? imageUrl;
  final double? abv;
  final double? ibu;
  final double? targetFg;
  final double? targetOg;
  final double? ebc;
  final double? srm;
  final double? ph;
  final double? attenuationLevel;
  final Volume? volume;
  final BoilVolume? boilVolume;
  final Method? method;
  final Ingredients? ingredients;
  final List<String>? foodPairing;
  final String? brewersTips;

  const Beer(
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
