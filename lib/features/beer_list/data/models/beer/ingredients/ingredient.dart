import 'hop.dart';
import 'malt.dart';

//TODO domain level should contain entities, while data level should contain models
class Ingredients {
  List<Malt>? malt;
  List<Hop>? hops;
  String? yeast;

  Ingredients({this.malt, this.hops, this.yeast});

  Ingredients.fromJson(Map<String, dynamic> json)
      : malt = json['malt'] != null
            ? (json['malt'] as List).map((i) => Malt.fromJson(i)).toList()
            : null,
        hops = json['hops'] != null
            ? (json['hops'] as List).map((i) => Hop.fromJson(i)).toList()
            : null,
        yeast = json['yeast'];
}
