import 'temp.dart';

//TODO domain level should contain entities, while data level should contain models
class MashTemp {
  Temp? temp;
  int? duration;

  MashTemp({this.temp, this.duration});

  MashTemp.fromJson(Map<String, dynamic> json) {
    temp = json['temp'] != null ? Temp.fromJson(json['temp']) : null;
    duration = json['duration'];
  }
}
