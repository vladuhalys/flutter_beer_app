import 'package:equatable/equatable.dart';
import 'package:flutter_beer_app/core/constants/constants.dart';

import 'amount.dart';

class MaltEntity extends Equatable {
  final String name;
  final AmountEntity amount;

  const MaltEntity({required this.name, required this.amount});

  factory MaltEntity.empty() {
    return MaltEntity(name: Constants.unknownString, amount: AmountEntity.empty());
  }

  @override
  List<Object?> get props => [name, amount];
}
