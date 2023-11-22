import 'package:flutter_beer_app/core/dto/validation_dto/base/validation_dto_base.dart';

class ValidateFailed<T> extends ValidateState<T> {
  const ValidateFailed(String error) : super(error: error);
}
