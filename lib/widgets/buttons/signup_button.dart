import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/constants/ui_style.dart';

class SignupButton extends StatelessWidget {
  final VoidCallback onPressed;
  const SignupButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: UIStyle.bigButtonStyle,
        onPressed: onPressed,
        child: const Text("註冊")
    );
  }
}