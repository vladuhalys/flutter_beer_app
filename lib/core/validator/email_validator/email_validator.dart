import 'package:flutter_beer_app/core/dto/validation_dto/validate_dto_exports.dart';
import 'package:flutter_beer_app/core/extension/string_extensio.dart';

import 'package:flutter_beer_app/core/validator/validator.dart';

/// A validator for email addresses.
///
/// This validator checks if an email address is valid by using a regular expression.
/// It extends the [ValidatorChain] class and overrides the [validate] method to perform the validation.
class ValidatorEmail extends ValidatorChain<String?> {
  @override
  ValidateState<String?> validate(String? value) {
    if (value.isNullOrEmpty) {
      return const ValidateFailed<String?>('Email is required');
    }
    if (!RegExp(
            r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
        .hasMatch(value!)) {
      return const ValidateFailed<String?>('Email is invalid');
    }
    return super.validate(value);
  }
}
