import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/constants/routes.dart';
import 'package:mindpal_flutter_app/constants/ui_style.dart';
class NavToSystemSettingsButton extends StatelessWidget {
  const NavToSystemSettingsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: MyButtonStyles.profileButtonStyle,
        onPressed: () => {
          print("NavToSystemSettingsButton on pressed."),
          Navigator.pushNamed(context, Routes.systemSettings)
        },
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("設定"),
            Text(">")
          ],
        )
    );
  }
}

