import 'package:flutter_beer_app/config/dev_log/dev_log.dart';
import 'package:flutter_beer_app/core/dto/firebase_dto/success/firebase_dto_success.dart';
import 'package:flutter_beer_app/core/validator/errors_validate/errors_validate.dart';
import 'package:flutter_beer_app/core/validator/password_validator/password_validator.dart';
import 'package:flutter_beer_app/features/data/repository/user_repository_impliments.dart';
import 'package:flutter_beer_app/features/presentation/bloc/validate_cubit/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit()
      : super(LoginAuthState(
          screenType: ScreenType.signIn,
          values: [null, null, null],
          errorsValidate: ErrorsValidate(),
        ));

  Future<bool> validate() {
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

    if (authState.screenType != ScreenType.signIn) {
      errors.add(validatorConfirm
          .validate(authState.values[2], authState.values[1])
          .error);
    }

    bool isValidate = errors.every((element) => element == null);
    if (isValidate) {
      return Future.value(true);
    } else {
      emit(authState.copyWith(
        values: newAuthStateValues,
        errorsValidate: ErrorsValidate(
          errorEmail: errors[0],
          errorPassword: errors[1],
          errorConfirmPassword: errors[2],
        ),
      ));
      return Future.value(false);
    }
  }

  Future<bool> signInWithGoogle() async {
    UserRepositoryImplements userRepositoryImplements =
        UserRepositoryImplements();
    var result = await userRepositoryImplements.signUpWithGoogle();
    if (result is FirebaseDataSuccess) {
      DevLog.logSuccess('User ID: ${result.data?.email}');
      return true;
    } else {
      DevLog.logError('User not found');
      return false;
    }
  }

  Future<bool> login() async {
    UserRepositoryImplements userRepositoryImplements =
        UserRepositoryImplements();
    if (await validate()) {
      final authState = (state as LoginAuthState);
      final email = authState.values[0]!;
      final password = authState.values[1]!;
      if (authState.screenType == ScreenType.signIn) {
        var result =
            await userRepositoryImplements.signInWithEmail(email, password);
        if (result is FirebaseDataSuccess) {
          DevLog.logSuccess('User ID: ${result.data?.email}');
          return true;
        } else {
          DevLog.logError('User not found');
          return false;
        }
      } else {
        var result =
            await userRepositoryImplements.signUpWithEmail(email, password);
        if (result is FirebaseDataSuccess) {
          DevLog.logSuccess('User ID: ${result.data?.email}');
          return true;
        } else {
          DevLog.logError('User not found');
          return false;
        }
      }
    } else {
      return false;
    }
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
