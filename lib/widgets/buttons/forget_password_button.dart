import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/constants/routes.dart';
import 'package:mindpal_flutter_app/constants/ui_colors.dart';

class ForgetPasswordButton extends StatefulWidget {
  const ForgetPasswordButton({super.key});

  @override
  State<ForgetPasswordButton> createState() => _ForgetPasswordButtonState();
}

class _ForgetPasswordButtonState extends State<ForgetPasswordButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        print("Forget Password Button Pressed.");
        Navigator.pushNamed(context, Routes.forgetPassword);
      },
      style: TextButton.styleFrom(
        splashFactory: NoSplash.splashFactory, // 完全取消水波紋效果
      ),
      child: Text("忘記密碼?", style: TextStyle(color: UIColors.lightGreen, fontWeight: FontWeight.bold, fontSize: 16), )
    );
  }
}
