// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_beer_app/core/validator/errors_validate/errors_validate.dart';

class AuthState {}

class LoginAuthState extends AuthState {
  final String? email;
  final String? password;
  final String? confirmPassword;
  final ErrorsValidate errorsValidate;

  LoginAuthState(
      {this.email,
      this.password,
      this.confirmPassword,
      required this.errorsValidate});

  @override
  bool operator ==(covariant LoginAuthState other) {
    if (identical(this, other)) return true;

    return other.email == email &&
        other.password == password &&
        other.confirmPassword == confirmPassword &&
        other.errorsValidate == errorsValidate;
  }

  @override
  int get hashCode {
    return email.hashCode ^
        password.hashCode ^
        confirmPassword.hashCode ^
        errorsValidate.hashCode;
  }

  LoginAuthState copyWith({
    String? email,
    String? password,
    String? confirmPassword,
    ErrorsValidate? errorsValidate,
  }) {
    return LoginAuthState(
      email: email ?? this.email,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
      errorsValidate: errorsValidate ?? this.errorsValidate,
    );
  }
}
