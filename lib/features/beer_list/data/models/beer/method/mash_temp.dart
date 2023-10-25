import 'package:flutter_beer_app/features/beer_list/data/models/beer/method/temp.dart';
import 'package:flutter_beer_app/features/beer_list/domain/entities/beer/method/mash_temp.dart';

class MashTempModel extends MashTemp {
  const MashTempModel({TempModel? temp, int? duration})
      : super(temp: temp, duration: duration);

  factory MashTempModel.fromJson(Map<String, dynamic> json) {
    return MashTempModel(
      temp: json['temp'] != null ? TempModel.fromJson(json['temp']) : null,
      duration: json['duration'],
    );
  }

  factory MashTempModel.fromEntity(MashTemp? entity) {
    return MashTempModel(
      temp: entity?.temp != null ? TempModel.fromEntity(entity?.temp) : null,
      duration: entity?.duration,
    );
  }
}
