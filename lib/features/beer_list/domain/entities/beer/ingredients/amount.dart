import 'package:equatable/equatable.dart';

class Amount extends Equatable {
  final double? value;
  final String? unit;

  const Amount({this.value, this.unit});

  @override
  List<Object?> get props => [value, unit];
}
