import 'package:flutter_beer_app/core/base/interface_model.dart';
import 'package:flutter_beer_app/features/data/models/beer/method/temp.dart';
import 'package:flutter_beer_app/features/domain/entities/beer/method/fermentation.dart';
import 'package:flutter_beer_app/features/domain/entities/beer/method/temp.dart';

class FermentationModel implements IModel<FermentationEntity>{
  final TempModel? temp;
  const FermentationModel({this.temp});

  factory FermentationModel.fromJson(Map<String, dynamic> json) {
    return FermentationModel(
      temp: json['temp'] != null ? TempModel.fromJson(json['temp']) : null,
    );
  }

  factory FermentationModel.fromEntity(FermentationEntity entity) {
    return FermentationModel(
      temp: TempModel.fromEntity(entity.temp),
    );
  }
  
  @override
  FermentationEntity convertToEntity() {
    return FermentationEntity(
      temp: temp?.convertToEntity() ?? TempEntity.empty(),
    );
  }
}
