import 'package:equatable/equatable.dart';
import 'package:flutter_beer_app/core/constants/constants.dart';

import 'temp.dart';

class MashTempEntity extends Equatable {
  final TempEntity temp;
  final num duration;

  const MashTempEntity({required this.temp, required this.duration});

  factory MashTempEntity.empty() {
    return MashTempEntity(
        temp: TempEntity.empty(), duration: Constants.unknownNumber);
  }

  @override
  List<Object?> get props {
    return [temp, duration];
  }
}
