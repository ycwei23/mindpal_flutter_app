import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/constants/routes.dart';
import 'package:mindpal_flutter_app/constants/ui_style.dart';

class NavToMoodDiaryButton extends StatelessWidget {
  const NavToMoodDiaryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: UIStyle.profileButtonStyle,
        onPressed: () => {print("NavToMoodDiaryButton on pressed.")},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("我的情緒日誌"),
            Text(">")
          ],
        )
    );
  }
}

class NavToMyTherapistButton extends StatelessWidget {
  const NavToMyTherapistButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: UIStyle.profileButtonStyle,
        onPressed: () => {print("NavToMyTherapistButton on pressed.")},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("我與諮商師"),
            Text(">")
          ],
        )
    );
  }
}

class NavToConsultlogButton extends StatelessWidget {
  const NavToConsultlogButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: UIStyle.profileButtonStyle,
        onPressed: () => {print("NavToConsultlogButton on pressed.")},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("AI諮商紀錄"),
            Text(">")
          ],
        )
    );
  }
}

class NavToTherapistListButton extends StatelessWidget {
  const NavToTherapistListButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: UIStyle.profileButtonStyle,
        onPressed: () => {print("NavToTherapistListButton on pressed.")},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("MinpPal諮商師總覽"),
            Text(">")
          ],
        )
    );
  }
}

class NavToSystemSettingsButton extends StatelessWidget {
  const NavToSystemSettingsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: UIStyle.profileButtonStyle,
        onPressed: () => {
          print("NavToSystemSettingsButton on pressed."),
          Navigator.pushNamed(context, Routes.systemSettings)
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("設定"),
            Text(">")
          ],
        )
    );
  }
}

