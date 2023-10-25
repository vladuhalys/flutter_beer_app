import 'temp.dart';

//TODO domain level should contain entities, while data level should contain models
class Fermentation {
  Temp? temp;

  Fermentation({this.temp});

  Fermentation.fromJson(Map<String, dynamic> json) {
    temp = json['temp'] != null ? Temp.fromJson(json['temp']) : null;
  }
}
