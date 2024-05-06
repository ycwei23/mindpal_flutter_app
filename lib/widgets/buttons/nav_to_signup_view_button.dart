import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/constants/routes.dart';
import 'package:mindpal_flutter_app/constants/ui_style.dart';

class NavToSignupViewButton extends StatelessWidget {
  const NavToSignupViewButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: MyButtonStyles.firstViewButtonStyle,
        onPressed: () => _navigate(context), child: const Text("註冊"));
  }

  Future<void> _navigate(context) async{
    Navigator.pushNamed(context, Routes.signup);
  }
}