import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, this.child, this.onPressed});

  final Widget? child;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          elevation: 0,
          minimumSize: const Size(double.infinity, 50),
          maximumSize: const Size(double.infinity, 50),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white),
      child: child,
    );
  }
}
