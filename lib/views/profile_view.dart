import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/constants/routes.dart';
import 'package:mindpal_flutter_app/constants/ui_style.dart';
import 'package:mindpal_flutter_app/widgets/buttons/logout_button.dart';
import 'package:mindpal_flutter_app/widgets/cards/user_info_card.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0), 
        child: ListView(
          children: [
            SizedBox(height: 14),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 8),
              child: Text("我的個人資訊", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),), 
            ),
            SizedBox(height: 6),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: UserInfoCard(),
            ),
            SizedBox(height: 12,),
            Padding(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: ElevatedButton(
                style: MyButtonStyles.profileButtonStyle,
                onPressed: () => {
                  print("on pressed."),
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("心理狀態測驗"),
                    Text(">")
                  ],
                )
              )
            ),          
            SizedBox(height: 12,),
            Padding(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: LogoutButton(),
            )
          ],
        ),
      )
    );
  }
}