import 'package:flutter_beer_app/core/base/interface_validator.dart';
import 'package:flutter_beer_app/core/dto/validation_dto/validate_dto_exports.dart';

/// A chain of validators that can be used to validate a value of type [T].
/// Each validator in the chain can be linked to the next validator using the [setNext] method.
/// The chain can be used to validate a value by calling the [validate] method, which will
/// return a [ValidateState] indicating whether the value is valid or not.
/// If the chain reaches the end without any errors, it will return a [ValidateSuccess] state.
/// If any validator in the chain encounters an error, it will return a [ValidateError] state
/// with an error message.
/// The chain can also be used to handle the value by calling the [handleNext] method, which
/// will pass the value to the next validator in the chain.
class ValidatorChain<T> implements Validator<T> {
  Validator<T>? _nextValidator;

  @override
  ValidateState<T> validate(T value) {
    if (_nextValidator == null) {
      return ValidateSuccess<T>(value);
    }
    return _nextValidator!.validate(value);
  }

  @override
  T handleNext(T value) {
    if (_nextValidator == null) {
      return value;
    }
    return _nextValidator!.handleNext(value);
  }

  @override
  Validator<T> setNext(Validator<T> handler) {
    _nextValidator = handler;
    return _nextValidator!;
  }
}
