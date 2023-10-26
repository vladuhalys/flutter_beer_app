import 'package:equatable/equatable.dart';

import 'amount.dart';

class Malt extends Equatable {
  final String? name;
  final Amount? amount;

  const Malt({this.name, this.amount});

  @override
  List<Object?> get props => [name, amount];
}
