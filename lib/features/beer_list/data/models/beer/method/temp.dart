//TODO domain level should contain entities, while data level should contain models

class Temp {
  int? value;
  String? unit;

  Temp({this.value, this.unit});

  Temp.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    unit = json['unit'];
  }
}
