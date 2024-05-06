import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/constants/ui_colors.dart';
import 'package:mindpal_flutter_app/constants/ui_style.dart';
import 'package:mindpal_flutter_app/widgets/dialogs/user_info_dialog.dart';

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
        padding: EdgeInsets.only(left: 6, right: 6, top: 16, bottom: 0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 12, right: 8),
                  child: Container( 
                    height: 55,
                    width: 55,
                    child: Center(
                      child: Column(
                        children: [
                          RotatedBox(
                            quarterTurns: 1,
                            child: Padding(
                              padding: EdgeInsets.only(left: 14, top: 10),
                              child: Text(":", style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal)),
                            )
                          ),
                          RotatedBox(
                            quarterTurns: 1,
                            child: Padding(
                              padding: EdgeInsets.only(top: 14),
                              child: Text("D", style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal)),
                            )
                          ),                          
                        ],
                      )
                    ),
                    decoration: BoxDecoration(                  
                      color: UIColors.grey2,
                      shape: BoxShape.circle                  
                    ),
                  ),
                ),
                Text("郝美麗", style: UIStyle.userNameTextStyle,),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 75),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("User ID: 000001", style: UIStyle.userInfoCardTextStyle,),
                  Text("Email: iampretty@gmail.com", style: UIStyle.userInfoCardTextStyle,),
                  Text("生日: 2003/2/30", style: UIStyle.userInfoCardTextStyle,),
                  Text("專屬諮商師: 郝善良 諮商師", style: UIStyle.userInfoCardTextStyle,),
                  Text("與MindPal的第一次互動: 2024/04/01", style: UIStyle.userInfoCardTextStyle,),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => {
                    showDialog(context: context, builder: (context) => UserInfoDialog())
                  }, 
                  child: Text("修改個人資訊", style: UIStyle.cardTextButtonTextStyle,)
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}