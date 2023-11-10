import 'package:flutter_beer_app/core/base/interface_model.dart';
import 'package:flutter_beer_app/core/constants/constants.dart';
import 'package:flutter_beer_app/features/domain/entities/beer/boil_volume.dart';

class BoilVolumeModel implements IModel<BoilVolumeEntity> {
  final num? value;
  final String? unit;
  const BoilVolumeModel({this.value, this.unit});

  factory BoilVolumeModel.fromJson(Map<String, dynamic> json) {
    return BoilVolumeModel(
      value: json['value'],
      unit: json['unit'],
    );
  }

  factory BoilVolumeModel.fromEntity(BoilVolumeEntity entity) {
    return BoilVolumeModel(
      value: entity.value,
      unit: entity.unit,
    );
  }

  @override
  BoilVolumeEntity convertToEntity() {
    return BoilVolumeEntity(
      value: value ?? Constants.unknownNumber,
      unit: unit ?? Constants.unknownString,
    );
  }
}
