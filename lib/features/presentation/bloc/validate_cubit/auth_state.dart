// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';

import 'package:flutter_beer_app/core/validator/errors_validate/errors_validate.dart';

class AuthState {}

enum ScreenType { signIn, signUp }

class LoginAuthState extends AuthState {
  final ScreenType? screenType;

  ///List contains email, password, confirmPassword
  final List<String?> values;
  final ErrorsValidate errorsValidate;

  LoginAuthState(
      {required this.screenType,
      required this.values,
      required this.errorsValidate});

  LoginAuthState copyWith({
    ScreenType? screenType,
    List<String?>? values,
    ErrorsValidate? errorsValidate,
  }) {
    return LoginAuthState(
      screenType: screenType ?? this.screenType,
      values: values ?? this.values,
      errorsValidate: errorsValidate ?? this.errorsValidate,
    );
  }

  @override
  bool operator ==(covariant LoginAuthState other) {
    if (identical(this, other)) return true;

    return other.screenType == screenType &&
        listEquals(other.values, values) &&
        other.errorsValidate == errorsValidate;
  }

  @override
  int get hashCode =>
      screenType.hashCode ^ values.hashCode ^ errorsValidate.hashCode;
}
