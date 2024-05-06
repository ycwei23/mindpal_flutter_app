import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/widgets/buttons/logout_button.dart';
import 'package:mindpal_flutter_app/widgets/buttons/profile_buttons.dart';
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
        padding: EdgeInsets.all(8.0), 
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16, right: 8, top: 14, bottom: 6),
              child: Text("我的個人資訊", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),), 
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: UserInfoCard(),
            ),
            SizedBox(height: 12,),
            Padding(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: NavToMyTherapistButton()
            ),
            SizedBox(height: 12,),
            Padding(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: NavToTherapistListButton()
            ),                        
            SizedBox(height: 12,),
            Padding(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: NavToMoodDiaryButton(),
            ),
            SizedBox(height: 12,),
            Padding(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: NavToConsultlogButton()
            ),  
            SizedBox(height: 12,),
            Padding(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: NavToSystemSettingsButton()
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