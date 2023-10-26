import 'package:equatable/equatable.dart';

class Temp extends Equatable {
  final int? value;
  final String? unit;

  const Temp({this.value, this.unit});

  @override
  List<Object?> get props {
    return [value, unit];
  }
}
