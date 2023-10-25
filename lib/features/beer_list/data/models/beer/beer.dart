import 'boil_volume.dart';
import 'volume.dart';
import 'ingredients/ingredient.dart';
import 'method/method.dart';

class Beer {
  int? id;
  String? name;
  String? tagline;
  String? firstBrewed;
  String? description;
  String? imageUrl;
  double? abv;
  double? ibu;
  double? targetFg;
  double? targetOg;
  double? ebc;
  double? srm;
  double? ph;
  double? attenuationLevel;
  Volume? volume;
  BoilVolume? boilVolume;
  Method? method;
  Ingredients? ingredients;
  List<String>? foodPairing;
  String? brewersTips;

  Beer.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        tagline = json['tagline'],
        firstBrewed = json['first_brewed'],
        description = json['description'],
        imageUrl = json['image_url'],
        abv = json['abv']?.toDouble(),
        ibu = json['ibu']?.toDouble(),
        targetFg = json['target_fg']?.toDouble(),
        targetOg = json['target_og']?.toDouble(),
        ebc = json['ebc']?.toDouble(),
        srm = json['srm']?.toDouble(),
        ph = json['ph']?.toDouble(),
        attenuationLevel = json['attenuation_level'].toDouble(),
        volume =
            json['volume'] != null ? Volume.fromJson(json['volume']) : null,
        boilVolume = json['boil_volume'] != null
            ? BoilVolume.fromJson(json['boil_volume'])
            : null,
        method =
            json['method'] != null ? Method.fromJson(json['method']) : null,
        ingredients = json['ingredients'] != null
            ? Ingredients.fromJson(json['ingredients'])
            : null,
        foodPairing = json['food_pairing'] != null
            ? List<String>.from(json['food_pairing'])
            : null,
        brewersTips = json['brewers_tips'];
}
