import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/constants/ui_colors.dart';
import 'package:mindpal_flutter_app/constants/ui_style.dart';
import 'package:mindpal_flutter_app/widgets/head_image_widgets.dart';

class UserInfoDialog extends StatefulWidget {
  const UserInfoDialog({super.key});

  @override
  State<UserInfoDialog> createState() => _UserInfoDialogState();
}

class _UserInfoDialogState extends State<UserInfoDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: UIColors.apricot1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      title: const DialogTitle(),
      content: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 300,
          minWidth: 300,
          minHeight: 250,
          maxHeight: 250,
        ),
        child: const Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12),
              child: InfoTextField(infoName: "姓名"),
            ),            
            SizedBox(height: 8,),
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12),
              child: InfoTextField(infoName: "Email"),
            ),                        
            SizedBox(height: 8,),
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12),
              child: InfoPasswordTextField(),
            ),                        
            SizedBox(height: 8,),            
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12),
              child: InfoTextField(infoName: "電話"),
            ),                        
          ],
        ),
      ),
      actions: <Widget>[
        ElevatedButton(
          onPressed: () => {Navigator.pop(context)},
          style: MyButtonStyles.dialogCencelButtonStyle,
          child: const Center(
            child: Text("取消"),
          ),
        ),
        ElevatedButton(
          onPressed: () => {Navigator.pop(context)},
          style: MyButtonStyles.dialogUpdateButtonStyle,
          child: const Center(
            child: Text("更新"),
          ),
        ),        
      ],
    );
  }
}

class InfoTextField extends StatelessWidget {
  final String infoName;
  const InfoTextField({super.key, required this.infoName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white, // 背景顏色
        borderRadius: BorderRadius.circular(10), // 圓角
      ),
      child: Row(
        children: [
          Text(infoName, style: TextStyle(fontSize: 16, color: UIColors.grey4)), // 左側的Text widget
          SizedBox(width: 10), // 間隔
          Expanded( // 讓TextField佔據剩餘空間
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none, // 無邊框
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class InfoPasswordTextField extends StatefulWidget {
  const InfoPasswordTextField({super.key});

  @override
  State<InfoPasswordTextField> createState() => _InfoPasswordTextFieldState();
}

class _InfoPasswordTextFieldState extends State<InfoPasswordTextField> {
  bool passwordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white, // 背景顏色
        borderRadius: BorderRadius.circular(10), // 圓角
      ),
      child: Row(
        children: [
          Text("密碼", style: TextStyle(fontSize: 16, color: UIColors.grey4)), // 左側的Text widget
          SizedBox(width: 10), // 間隔
          Expanded( // 讓TextField佔據剩餘空間
            child: TextField(
              obscureText: passwordVisible, 
              keyboardType: TextInputType.visiblePassword, 
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                border: InputBorder.none,
                suffixIcon: IconButton( 
                  icon: Icon(passwordVisible 
                      ? Icons.visibility_off 
                      : Icons.visibility), 
                  onPressed: () {setState(() { passwordVisible = !passwordVisible; });}, 
                ), 
                alignLabelWithHint: false,
              ) 
            ),
          ),
        ],
      ),
    );
  }
}

class DialogTitle extends StatefulWidget {
  const DialogTitle({super.key});

  @override
  State<DialogTitle> createState() => _DialogTitleState();
}

class _DialogTitleState extends State<DialogTitle> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 8),
          child: ProfileHeadContainer()
        ),
        Text("User ID: 000001", style: MyTextStyles.userNameTextStyle,),
      ],
    );
  }
}