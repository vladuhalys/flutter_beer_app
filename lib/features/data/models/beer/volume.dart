import 'package:flutter_beer_app/core/base/interface_model.dart';
import 'package:flutter_beer_app/core/constants/constants.dart';
import 'package:flutter_beer_app/features/domain/entities/beer/volume.dart';

class VolumeModel implements IModel<VolumeEntity>{
  final int? value;
  final String? unit;

  VolumeModel({required this.value, required this.unit});

  factory VolumeModel.fromJson(Map<String, dynamic> json) {
    return VolumeModel(
      value: json['value'],
      unit: json['unit'],
    );
  }

  factory VolumeModel.fromEntity(VolumeEntity entity) {
    return VolumeModel(
      value: entity.value,
      unit: entity.unit,
    );
  }
  
  @override
  VolumeEntity convertToEntity() {
    return VolumeEntity(
      value: value ?? Constants.unknownInt,
      unit: unit?? Constants.unknownString,
    );
  }
}
