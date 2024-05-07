import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/constants/ui_colors.dart';
import 'package:mindpal_flutter_app/constants/ui_style.dart';
import 'package:mindpal_flutter_app/widgets/dialogs/user_info_dialog.dart';
import 'package:mindpal_flutter_app/widgets/head_image_widgets.dart';

class UserInfoCard extends StatefulWidget {
  const UserInfoCard({super.key});

  @override
  State<UserInfoCard> createState() => _UserInfoCardState();
}

class _UserInfoCardState extends State<UserInfoCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: UIColors.apricot1,
      child: Padding(
        padding: const EdgeInsets.only(left: 6, right: 6, top: 16, bottom: 0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 8),
                  child: ProfileHeadContainer()
                ),
                Text("郝美麗", style: MyTextStyles.userNameTextStyle,),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 75),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("User ID: 000001", style: MyTextStyles.userInfoCardTextStyle,),
                  Text("Email: iampretty@gmail.com", style: MyTextStyles.userInfoCardTextStyle,),
                  Text("生日: 2003/2/30", style: MyTextStyles.userInfoCardTextStyle,),
                  Text("專屬諮商師: 郝善良 諮商師", style: MyTextStyles.userInfoCardTextStyle,),
                  Text("與MindPal的第一次互動: 2024/04/01", style: MyTextStyles.userInfoCardTextStyle,),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => {
                    showDialog(context: context, builder: (context) => const UserInfoDialog())
                  }, 
                  child: Text("修改個人資訊", style: MyTextStyles.cardTextButtonTextStyle,)
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}