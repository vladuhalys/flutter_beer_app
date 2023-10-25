import 'package:equatable/equatable.dart';

import 'fermentation.dart';
import 'mash_temp.dart';

class Method extends Equatable {
  final Fermentation? fermentation;
  final List<MashTemp>? mashTemp;
  final Object? twist;

  const Method({this.fermentation, this.mashTemp, this.twist});

  @override
  List<Object?> get props => [fermentation, mashTemp, twist];
}
