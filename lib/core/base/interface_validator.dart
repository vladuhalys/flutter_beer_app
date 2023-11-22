import 'package:flutter_beer_app/core/dto/validation_dto/validate_dto_exports.dart';

/// An abstract class representing a validator.
///
/// Validators are used to validate a value of type [T].
/// Each validator can perform a specific validation logic and return a [ValidateState].
/// Validators can be chained together using the `setNext` method to create a validation pipeline.
abstract class Validator<T> {
  /// Returns the validation state for the given [value].
  ///
  /// The [value] is validated based on the specific implementation of the validator.
  /// The validation state is returned as a [ValidateState] object.
  ValidateState<T> validate(T value);

  /// Sets the next validator in the validation pipeline.
  ///
  /// The [handler] is the next validator to be called if this validator returns true.
  /// Returns the next validator for method chaining.
  T handleNext(T value);

  /// Sets the next validator in the validation pipeline.
  ///
  /// The [handler] is the next validator to be called if this validator returns true.
  /// Returns the next validator for method chaining.
  Validator<T> setNext(Validator<T> handler);
}
