import 'package:equatable/equatable.dart';

import 'temp.dart';

class Fermentation extends Equatable {
  final Temp? temp;

  const Fermentation({this.temp});

  @override
  List<Object?> get props => [temp];
}
