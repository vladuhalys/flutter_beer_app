import 'package:flutter_beer_app/features/beer_list/domain/entities/beer/volume.dart';

class VolumeModel extends Volume {
  const VolumeModel({int? value, String? unit})
      : super(value: value, unit: unit);

  factory VolumeModel.fromJson(Map<String, dynamic> json) {
    return VolumeModel(
      value: json['value'],
      unit: json['unit'],
    );
  }

  factory VolumeModel.fromEntity(Volume entity) {
    return VolumeModel(
      value: entity.value,
      unit: entity.unit,
    );
  }
}
