import 'package:equatable/equatable.dart';
import 'package:flutter_beer_app/core/constants/constants.dart';

import 'amount.dart';

class HopEntity extends Equatable {
  final String name;
  final AmountEntity amount;
  final String add;
  final String attribute;

  const HopEntity(
      {required this.name,
      required this.amount,
      required this.add,
      required this.attribute});

  factory HopEntity.empty() {
    return HopEntity(
        name: Constants.unknownString, amount: AmountEntity.empty(), add: Constants.unknownString, attribute: Constants.unknownString);
  }

  @override
  List<Object?> get props => [name, amount, add, attribute];
}
