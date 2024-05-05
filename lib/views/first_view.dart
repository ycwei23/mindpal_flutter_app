import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/constants/ui_colors.dart';
import 'package:mindpal_flutter_app/widgets/buttons/login_view_button.dart';
import 'package:mindpal_flutter_app/widgets/buttons/signup_view_button.dart';

class FirstView extends StatefulWidget {
  const FirstView({super.key});

  @override
  State<FirstView> createState() => _FirstViewState();
}

class _FirstViewState extends State<FirstView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12, top: 120, bottom: 12),
              child: Container(
                width: 185,
                height: 185,
                decoration: BoxDecoration(
                  color: UIColors.apricot1,
                  shape: BoxShape.circle
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 16, bottom: 8),
              child: LoginViewButton()
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 12),
              child: SignupViewButton()
            ),
          ],
        ),
      ),
    );
  }
}
