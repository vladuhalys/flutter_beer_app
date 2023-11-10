import 'package:equatable/equatable.dart';

import 'fermentation.dart';
import 'mash_temp.dart';

class MethodEntity extends Equatable {
  final FermentationEntity fermentation;
  final List<MashTempEntity> mashTemp;
  final Object twist;

  const MethodEntity(
      {required this.fermentation,
      required this.mashTemp,
      required this.twist});

  @override
  List<Object?> get props => [fermentation, mashTemp, twist];

  factory MethodEntity.empty() {
    return MethodEntity(
        fermentation: FermentationEntity.empty(),
        mashTemp: [MashTempEntity.empty()],
        twist: Object());
  }
}
