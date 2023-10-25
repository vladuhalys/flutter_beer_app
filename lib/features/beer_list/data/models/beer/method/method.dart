import 'package:flutter_beer_app/features/beer_list/data/models/beer/method/fermentation.dart';
import 'package:flutter_beer_app/features/beer_list/data/models/beer/method/mash_temp.dart';
import 'package:flutter_beer_app/features/beer_list/domain/entities/beer/method/method.dart';

class MethodModel extends Method {
  const MethodModel(
      {List<MashTempModel>? mashTemp,
      FermentationModel? fermentation,
      Object? twist})
      : super(mashTemp: mashTemp, fermentation: fermentation, twist: twist);

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

  factory MethodModel.fromEntity(Method? entity) {
    return MethodModel(
      mashTemp:
          entity?.mashTemp?.map((e) => MashTempModel.fromEntity(e)).toList(),
      fermentation: entity?.fermentation != null
          ? FermentationModel.fromEntity(entity?.fermentation)
          : null,
      twist: entity?.twist,
    );
  }
}
