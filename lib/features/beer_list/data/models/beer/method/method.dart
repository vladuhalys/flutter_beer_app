import 'fermentation.dart';
import 'mash_temp.dart';

//TODO domain level should contain entities, while data level should contain models
class Method {
  Fermentation? fermentation;
  List<MashTemp>? mashTemp;
  Object? twist;

  Method({this.fermentation, this.mashTemp, this.twist});

  Method.fromJson(Map<String, dynamic> json) {
    fermentation = json['fermentation'] != null
        ? Fermentation.fromJson(json['fermentation'])
        : null;
    if (json['mash_temp'] != null) {
      mashTemp = <MashTemp>[];
      json['mash_temp'].forEach((v) {
        mashTemp!.add(MashTemp.fromJson(v));
      });
    }
    twist = json['twist'];
  }
}
