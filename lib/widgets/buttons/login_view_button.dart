import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/constants/routes.dart';
import 'package:mindpal_flutter_app/constants/ui_style.dart';

class LoginViewButton extends StatelessWidget {
  const LoginViewButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: UIStyle.bigButtonStyle,
        onPressed: () => _navigate(context), child: const Text("登入"));
  }

  Future<void> _navigate(BuildContext context) async{
    Navigator.pushNamed(context, Routes.login);
  }
}
