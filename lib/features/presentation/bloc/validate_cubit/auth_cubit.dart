import 'package:flutter_beer_app/core/validator/errors_validate/errors_validate.dart';
import 'package:flutter_beer_app/core/validator/password_validator/password_validator.dart';
import 'package:flutter_beer_app/features/presentation/bloc/validate_cubit/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit()
      : super(LoginAuthState(
          screenType: ScreenType.signIn,
          values: [null, null, null],
          errorsValidate: ErrorsValidate(),
        ));

  void validate() {
    var authState = (state as LoginAuthState);

    List<String?> errors = [];
    for (int i = 0; i < authState.values.length - 1; i++) {
      errors.add(authState.errorsValidate.validators[i]
          .validate(authState.values[i])
          .error);
    }

    List<String?> newAuthStateValues = [];
    for (int i = 0; i < authState.values.length - 1; i++) {
      newAuthStateValues.add(authState.errorsValidate.validators[i]
          .validate(authState.values[i])
          .data);
    }
    final validatorConfirm =
        authState.errorsValidate.validators[2] as ValidatorConfirmPassword;
    newAuthStateValues.add(validatorConfirm
        .validate(authState.values[2], authState.values[1])
        .data);

    errors.add(validatorConfirm
        .validate(authState.values[2], authState.values[1])
        .error);
    emit(authState.copyWith(
      errorsValidate: ErrorsValidate(
        errorEmail: errors[0],
        errorPassword: errors[1],
        errorConfirmPassword: errors[2],
      ),
    ));
  }

  void changeScreenType() {
    final authState = (state as LoginAuthState);
    final ScreenType screenType = (authState.screenType != ScreenType.signIn)
        ? ScreenType.signIn
        : ScreenType.signUp;
    emit((state as LoginAuthState).copyWith(
        screenType: screenType,
        values: authState.values,
        errorsValidate: ErrorsValidate()));
  }

  void onChangedEmail(String email) {
    var values = (state as LoginAuthState).values;
    values[0] = email;
    emit((state as LoginAuthState).copyWith(values: values));
  }

  void onChangedPassword(String password) {
    var values = (state as LoginAuthState).values;
    values[1] = password;
    emit((state as LoginAuthState).copyWith(values: values));
  }

  void onChangedConfirmPassword(String confirmPassword) {
    var values = (state as LoginAuthState).values;
    values[2] = confirmPassword;
    emit((state as LoginAuthState).copyWith(values: values));
  }
}
