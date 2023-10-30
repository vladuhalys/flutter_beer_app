import 'package:equatable/equatable.dart';
import 'package:flutter_beer_app/core/constants/constants.dart';

import 'hop.dart';
import 'malt.dart';

class IngredientsEntity extends Equatable {
  final List<MaltEntity> malt;
  final List<HopEntity> hops;
  final String yeast;

  const IngredientsEntity(
      {required this.malt, required this.hops, required this.yeast});

  factory IngredientsEntity.empty() {
    return IngredientsEntity(
        malt: [MaltEntity.empty()],
        hops: [HopEntity.empty()],
        yeast: Constants.unknownString);
  }

  @override
  List<Object?> get props {
    return [malt, hops, yeast];
  }
}
