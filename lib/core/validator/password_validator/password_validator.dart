import 'package:flutter_beer_app/core/extension/string_extensio.dart';
import 'package:flutter_beer_app/core/validator/validate_state.dart';
import 'package:flutter_beer_app/core/validator/validator.dart';

/// A validator for password fields.
/// It extends the [ValidatorChain] class and provides a [validate] method
/// to validate the password value.
class ValidatorPassword extends ValidatorChain<String?> {
  @override
  ValidateState<String?> validate(String? value) {
    if (value.isNullOrEmpty) {
      return const ValidateFailed<String?>('Password is required');
    }
    if (value!.length < 6) {
      return const ValidateFailed<String?>('Password is too short');
    }
    return super.validate(value);
  }
}

class ValidatorConfirmPassword extends ValidatorChain<String?> {
  @override
  ValidateState<String?> validate(String? value, [String? password = '']) {
    if (value.isNullOrEmpty) {
      return const ValidateFailed<String?>('Confirm password is required');
    }
    if (value != password) {
      return const ValidateFailed<String?>('Confirm password is not match');
    }
    return super.validate(value);
  }
}
