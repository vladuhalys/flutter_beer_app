import 'amount.dart';

//TODO domain level should contain entities, while data level should contain models
class Malt {
  String? name;
  Amount? amount;

  Malt({this.name, this.amount});

  Malt.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    amount = json['amount'] != null ? Amount.fromJson(json['amount']) : null;
  }
}
