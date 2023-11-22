import 'package:flutter/material.dart';
import 'package:flutter_beer_app/features/presentation/bloc/validate_cubit/auth_cubit.dart';
import 'package:flutter_beer_app/features/presentation/bloc/validate_cubit/auth_state.dart';
import 'package:flutter_beer_app/features/presentation/widgets/primary_button.dart';
import 'package:flutter_beer_app/features/presentation/widgets/primary_text_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:lottie/lottie.dart';

class SignInUpScreen extends StatelessWidget {
  const SignInUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: BlocProvider(
          create: (context) => AuthCubit(),
          child: BlocBuilder<AuthCubit, AuthState>(
            builder: (context, state) {
              if (state is LoginAuthState) {
                return _LoadedForm(state: state);
              }
              return const Offstage();
            },
          ),
        ));
  }
}

class _LoadedForm extends StatelessWidget {
  final LoginAuthState state;

  const _LoadedForm({required this.state});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset('assets/welcome.json',
              width: MediaQuery.of(context).size.width * 0.7),
          const SizedBox(height: 25),
          PrimaryTextForm(
              hintText: 'Email',
              textFormType: TextFormType.email,
              validateErrorText: state.errorsValidate.errorEmail),
          const SizedBox(height: 20),
          PrimaryTextForm(
              hintText: 'Password',
              textFormType: TextFormType.password,
              validateErrorText: state.errorsValidate.errorPassword),
          const SizedBox(height: 25),
          if (state.screenType == ScreenType.signUp)
            Column(
              children: [
                PrimaryTextForm(
                    hintText: 'Confirm Password',
                    textFormType: TextFormType.confirmPassword,
                    validateErrorText:
                        state.errorsValidate.errorConfirmPassword),
                const SizedBox(height: 25),
              ],
            ),
          PrimaryButton(
              child: Text(
                  (state.screenType == ScreenType.signIn)
                      ? 'Sign In'
                      : 'Sign Up',
                  style: const TextStyle(fontSize: 16)),
              onPressed: () {
                context.read<AuthCubit>().login();
              }),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  (state.screenType == ScreenType.signIn)
                      ? 'Don\'t have an account?'
                      : 'Already have an account?',
                  style: const TextStyle(fontSize: 16)),
              TextButton(
                  onPressed: () {
                    context.read<AuthCubit>().changeScreenType();
                  },
                  child: Text(
                      (state.screenType == ScreenType.signIn)
                          ? 'Sign Up'
                          : 'Sign In',
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF000000)))),
            ],
          ),
          const SizedBox(height: 25),
          PrimaryButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      (state.screenType == ScreenType.signIn)
                          ? 'Sign in with'
                          : 'Sign up with',
                      style: const TextStyle(fontSize: 16)),
                  const SizedBox(width: 10),
                  const Icon(IonIcons.logo_google, size: 24),
                ],
              ),
              onPressed: () {}),
        ],
      ),
    );
  }
}
