import 'package:equatable/equatable.dart';
import 'package:flutter_beer_app/core/constants/constants.dart';

class TempEntity extends Equatable {
  final int value;
  final String unit;

  const TempEntity({required this.value, required this.unit});

  factory TempEntity.empty() {
    return const TempEntity(value: Constants.unknownInt, unit: Constants.unknownString);
  }

  @override
  List<Object?> get props {
    return [value, unit];
  }
}
