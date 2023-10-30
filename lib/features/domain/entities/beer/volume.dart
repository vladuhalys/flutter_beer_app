import 'package:equatable/equatable.dart';
import 'package:flutter_beer_app/core/constants/constants.dart';

class VolumeEntity extends Equatable {
  final int value;
  final String unit;

  const VolumeEntity({required this.value, required this.unit});

  factory VolumeEntity.empty() {
    return const VolumeEntity(value: Constants.unknownInt, unit: Constants.unknownString);
  }

  @override
  List<Object?> get props => [value, unit];
}
