import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/constants/ui_colors.dart';
import 'package:mindpal_flutter_app/widgets/buttons/nav_to_login_view_button.dart';
import 'package:mindpal_flutter_app/widgets/buttons/nav_to_signup_view_button.dart';

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
          children: const [
            SizedBox(height: 120),
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12),
              child: GrayCircleContainer()
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: NavToLoginViewButton()
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: NavToSignupViewButton()
            ),
          ],
        ),
      ),
    );
  }
}

class GrayCircleContainer extends StatelessWidget {
  const GrayCircleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 185,
      height: 185,
      decoration: BoxDecoration(
        color: UIColors.apricot1,
        shape: BoxShape.circle
      ),
    );
  }
}
