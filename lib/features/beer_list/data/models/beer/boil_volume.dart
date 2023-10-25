import 'package:flutter_beer_app/features/beer_list/domain/entities/beer/boil_volume.dart';

class BoilVolumeModel extends BoilVolume {
  const BoilVolumeModel({int? value, String? unit})
      : super(value: value, unit: unit);

  factory BoilVolumeModel.fromJson(Map<String, dynamic> json) {
    return BoilVolumeModel(
      value: json['value'],
      unit: json['unit'],
    );
  }

  factory BoilVolumeModel.fromEntity(BoilVolume entity) {
    return BoilVolumeModel(
      value: entity.value,
      unit: entity.unit,
    );
  }
}
