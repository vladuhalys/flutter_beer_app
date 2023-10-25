import 'package:equatable/equatable.dart';

import 'amount.dart';

class Hop extends Equatable {
  final String? name;
  final Amount? amount;
  final String? add;
  final String? attribute;

  const Hop({this.name, this.amount, this.add, this.attribute});

  @override
  List<Object?> get props => [name, amount, add, attribute];
}
