import 'package:flutter_beer_app/core/base/interface_model.dart';
import 'package:flutter_beer_app/features/data/models/beer/method/fermentation.dart';
import 'package:flutter_beer_app/features/data/models/beer/method/mash_temp.dart';
import 'package:flutter_beer_app/features/domain/entities/beer/method/fermentation.dart';
import 'package:flutter_beer_app/features/domain/entities/beer/method/method.dart';

class MethodModel implements IModel<MethodEntity> {
  final List<MashTempModel>? mashTemp;
  final FermentationModel? fermentation;
  final Object? twist;
  const MethodModel(
      {required this.mashTemp,
      required this.fermentation,
      required this.twist});

  factory MethodModel.fromJson(Map<String, dynamic> json) {
    return MethodModel(
      mashTemp: json['mash_temp'] != null
          ? (json['mash_temp'] as List)
              .map((e) => MashTempModel.fromJson(e))
              .toList()
          : null,
      fermentation: json['fermentation'] != null
          ? FermentationModel.fromJson(json['fermentation'])
          : null,
      twist: json['twist'],
    );
  }

  factory MethodModel.fromEntity(MethodEntity entity) {
    return MethodModel(
      mashTemp:
          entity.mashTemp.map((e) => MashTempModel.fromEntity(e)).toList(),
      fermentation: FermentationModel.fromEntity(entity.fermentation),
      twist: entity.twist,
    );
  }
  
  @override
  MethodEntity convertToEntity() {
    return MethodEntity(
      mashTemp: mashTemp?.map((e) => e.convertToEntity()).toList() ?? [],
      fermentation: fermentation?.convertToEntity() ?? FermentationEntity.empty(),
      twist: twist ?? Object(),
    );
  }
}
