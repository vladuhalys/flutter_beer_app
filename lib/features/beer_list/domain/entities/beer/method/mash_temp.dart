import 'package:equatable/equatable.dart';

import 'temp.dart';

class MashTemp extends Equatable {
  final Temp? temp;
  final int? duration;

  const MashTemp({this.temp, this.duration});

  @override
  List<Object?> get props {
    return [temp, duration];
  }
}
