import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/constants/routes.dart';
import 'package:mindpal_flutter_app/constants/ui_colors.dart';
import 'package:mindpal_flutter_app/constants/ui_style.dart';

class ForgetPasswordButton extends StatefulWidget {
  const ForgetPasswordButton({super.key});

  @override
  State<ForgetPasswordButton> createState() => _ForgetPasswordButtonState();
}

class _ForgetPasswordButtonState extends State<ForgetPasswordButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print("Forget Password Button Pressed.");
        Navigator.pushNamed(context, Routes.forgetPassword);
      },
      style: MyButtonStyles.forgetPasswordButtonStyle,
      child: Text("忘記密碼?")
    );
  }
}
