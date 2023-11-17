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
          PrimaryButton(
              child: const Text('Sign In', style: TextStyle(fontSize: 16)),
              onPressed: () {
                context.read<AuthCubit>().validate();
              }),
          const SizedBox(height: 25),
          PrimaryButton(
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Sign in with', style: TextStyle(fontSize: 16)),
                  SizedBox(width: 10),
                  Icon(IonIcons.logo_google, size: 24),
                ],
              ),
              onPressed: () {}),
        ],
      ),
    );
  }
}
