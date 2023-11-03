import 'package:flutter_beer_app/core/base/interface_model.dart';
import 'package:flutter_beer_app/features/data/models/beer/method/temp.dart';
import 'package:flutter_beer_app/features/domain/entities/beer/method/mash_temp.dart';
import 'package:flutter_beer_app/features/domain/entities/beer/method/temp.dart';

class MashTempModel implements IModel<MashTempEntity> {
  final TempModel? temp;
  final num? duration;
  const MashTempModel({this.temp, this.duration});

  factory MashTempModel.fromJson(Map<String, dynamic> json) {
    return MashTempModel(
      temp: json['temp'] != null ? TempModel.fromJson(json['temp']) : null,
      duration: json['duration'],
    );
  }

  factory MashTempModel.fromEntity(MashTempEntity entity) {
    return MashTempModel(
      temp: TempModel.fromEntity(entity.temp),
      duration: entity.duration,
    );
  }

  @override
  MashTempEntity convertToEntity() {
    return MashTempEntity(
      temp: temp?.convertToEntity() ?? TempEntity.empty(),
      duration: duration ?? 0,
    );
  }
}
