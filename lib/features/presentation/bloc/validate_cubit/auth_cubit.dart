import 'package:flutter_beer_app/core/validator/errors_validate/errors_validate.dart';
import 'package:flutter_beer_app/features/presentation/bloc/validate_cubit/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit()
      : super(LoginAuthState(
          email: '',
          password: '',
          confirmPassword: '',
          errorsValidate: ErrorsValidate(),
        ));

  void validate() {
    var authState = (state as LoginAuthState);

    String? emailError = authState.errorsValidate.validators[0]
        .validate((state as LoginAuthState).email)
        .data;
    String? passwordError = (state as LoginAuthState)
        .errorsValidate
        .validators[1]
        .validate((state as LoginAuthState).password)
        .data;
    String? confirmPasswordError = (state as LoginAuthState)
        .errorsValidate
        .validators[2]
        .validate((state as LoginAuthState).confirmPassword)
        .data;
    emit((state as LoginAuthState).copyWith(
      errorsValidate: ErrorsValidate(
        errorEmail: emailError,
        errorPassword: passwordError,
        errorConfirmPassword: confirmPasswordError,
      ),
    ));
  }

  void onChangedEmail(String email) {
    emit((state as LoginAuthState).copyWith(email: email));
  }

  void onChangedPassword(String password) {
    emit((state as LoginAuthState).copyWith(password: password));
  }

  void onChangedConfirmPassword(String confirmPassword) {
    emit((state as LoginAuthState).copyWith(confirmPassword: confirmPassword));
  }
}
