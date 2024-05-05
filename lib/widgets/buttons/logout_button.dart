import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/constants/routes.dart';
import 'package:mindpal_flutter_app/constants/ui_style.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: UIStyle.profileButtonStyle,
        onPressed: () {
          _logout(context);
        },
        child: const Text("登出本帳號")
    );
  }

  Future<void> _logout(BuildContext context) async {
    print("Log out");
    Navigator.pushNamedAndRemoveUntil(context, Routes.first, (route) => false);
  }
}