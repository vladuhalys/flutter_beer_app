
//TODO domain level should contain entities, while data level should contain models
//Models work with the api and have all fields nullable as well as to.fromJson methods,
//After obtaining json from api it is converted to model and then 
// to entity 
// inbetween this convertion the data is validated and sterealized. Example: null value is
//switched to default (can be null if we know for sure that it is handled everywhere), basic type data is parsed into higher class data(custom classes, other models, enums)


//This is Model class and should be called IngridientAmountModel and be inside data/models/ingridients_model/ingridient_amount_model.dart
class Amount {
  double? value;
  String? unit;

  Amount({this.value, this.unit});

  Amount.fromJson(Map<String, dynamic> json) {
    value = json['value'].toDouble();
    unit = json['unit'];
  }
}
