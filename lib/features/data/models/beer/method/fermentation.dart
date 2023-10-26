import 'package:flutter_beer_app/features/data/models/beer/method/temp.dart';
import 'package:flutter_beer_app/features/domain/entities/beer/method/fermentation.dart';

class FermentationModel extends Fermentation {
  const FermentationModel({TempModel? temp}) : super(temp: temp);

  factory FermentationModel.fromJson(Map<String, dynamic> json) {
    return FermentationModel(
      temp: json['temp'] != null ? TempModel.fromJson(json['temp']) : null,
    );
  }

  factory FermentationModel.fromEntity(Fermentation? entity) {
    return FermentationModel(
      temp: entity?.temp != null ? TempModel.fromEntity(entity?.temp) : null,
    );
  }
}
