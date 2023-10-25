import 'amount.dart';

//TODO domain level should contain entities, while data level should contain models
class Hop {
  String? name;
  Amount? amount;
  String? add;
  String? attribute;

  Hop({this.name, this.amount, this.add, this.attribute});

  Hop.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        amount =
            json['amount'] != null ? Amount.fromJson(json['amount']) : null,
        add = json['add'],
        attribute = json['attribute'];
}
