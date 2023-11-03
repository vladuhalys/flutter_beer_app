import 'package:equatable/equatable.dart';
import 'package:flutter_beer_app/core/constants/constants.dart';

class BoilVolumeEntity extends Equatable {
  final num value;
  final String unit;

  const BoilVolumeEntity({required this.value, required this.unit});

  factory BoilVolumeEntity.empty() {
    return const BoilVolumeEntity(
        value: Constants.unknownNumber, unit: Constants.unknownString);
  }

  @override
  List<Object?> get props => [value, unit];
}
