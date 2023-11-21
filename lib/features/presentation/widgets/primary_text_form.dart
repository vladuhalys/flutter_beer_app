import 'package:flutter/material.dart';
import 'package:flutter_beer_app/features/presentation/bloc/validate_cubit/auth_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum TextFormType { email, password, confirmPassword }

class PrimaryTextForm extends StatefulWidget {
  final String hintText;
  final String? validateErrorText;
  final TextFormType textFormType;

  const PrimaryTextForm(
      {super.key,
      required this.hintText,
      this.validateErrorText,
      required this.textFormType});

  @override
  State<PrimaryTextForm> createState() => _PrimaryTextFormState();
}

class _PrimaryTextFormState extends State<PrimaryTextForm> {
  bool isVisiable = false;
  bool isObscure = true;
  bool isObscureCheck() {
    isVisiable = widget.textFormType == TextFormType.password ||
        widget.textFormType == TextFormType.confirmPassword;
    return isVisiable;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {
        if (widget.textFormType == TextFormType.email) {
          context.read<AuthCubit>().onChangedEmail(value);
        } else if (widget.textFormType == TextFormType.password) {
          context.read<AuthCubit>().onChangedPassword(value);
        } else if (widget.textFormType == TextFormType.confirmPassword) {
          context.read<AuthCubit>().onChangedConfirmPassword(value);
        }
      },
      obscureText: (isObscureCheck()) ? isObscure : false,
      decoration: InputDecoration(
        errorText: widget.validateErrorText,
        hintText: widget.hintText,
        suffixIcon: isObscureCheck()
            ? IconButton(
                onPressed: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
                icon: Icon(
                  (isObscure) ? Icons.visibility_off : Icons.visibility,
                  color: Colors.black,
                ),
              )
            : null,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}
