import 'volume.dart';

class BoilVolume extends Volume {
  BoilVolume({int? value, String? unit}) : super(value: value, unit: unit);

  BoilVolume.fromJson(Map<String, dynamic> json) : super.fromJson(json);
}
