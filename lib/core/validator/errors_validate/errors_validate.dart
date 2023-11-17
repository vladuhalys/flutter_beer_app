import 'package:flutter_beer_app/core/validator/email_validator/email_validator.dart';
import 'package:flutter_beer_app/core/validator/password_validator/password_validator.dart';
import 'package:flutter_beer_app/core/validator/validator.dart';

class ErrorsValidate {
  final String? errorEmail;
  final String? errorPassword;
  final String? errorConfirmPassword;

  List<ValidatorChain> get validators => [
        ValidatorEmail(),
        ValidatorPassword(),
        ValidatorConfirmPassword(),
      ];

  ErrorsValidate(
      {this.errorEmail, this.errorPassword, this.errorConfirmPassword});
}
