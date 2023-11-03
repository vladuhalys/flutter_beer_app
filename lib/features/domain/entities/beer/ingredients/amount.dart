import 'package:equatable/equatable.dart';
import 'package:flutter_beer_app/core/constants/constants.dart';

class AmountEntity extends Equatable {
  final num value;
  final String unit;

  const AmountEntity({required this.value, required this.unit});

  factory AmountEntity.empty() {
    return const AmountEntity(
        value: Constants.unknownNumber, unit: Constants.unknownString);
  }

  @override
  List<Object?> get props => [value, unit];
}
