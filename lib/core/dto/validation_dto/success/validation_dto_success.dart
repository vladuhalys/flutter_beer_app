import 'package:flutter_beer_app/core/dto/validation_dto/base/validation_dto_base.dart';

class ValidateSuccess<T> extends ValidateState<T> {
  const ValidateSuccess(T data) : super(data: data);
}
