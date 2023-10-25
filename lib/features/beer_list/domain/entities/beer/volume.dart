import 'package:equatable/equatable.dart';

class Volume extends Equatable {
  final int? value;
  final String? unit;

  const Volume({this.value, this.unit});

  @override
  List<Object?> get props => [value, unit];
}
