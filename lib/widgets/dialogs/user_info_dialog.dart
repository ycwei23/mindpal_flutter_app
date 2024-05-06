import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/constants/ui_colors.dart';
import 'package:mindpal_flutter_app/constants/ui_style.dart';

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
          minHeight: 200,
          maxHeight: 200,
        ),
        child: const Column(
          children: [
            
          ],
        ),
      ),
      actions: <Widget>[
        ElevatedButton(
          onPressed: () => {Navigator.pop(context)},
          style: UIStyle.dialogCencelButtonStyle,
          child: const Center(
            child: Text("取消"),
          ),
        ),
        ElevatedButton(
          onPressed: () => {Navigator.pop(context)},
          style: UIStyle.dialogUpdateButtonStyle,
          child: const Center(
            child: Text("更新"),
          ),
        ),        
      ],
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
          child: Container( 
            height: 55,
            width: 55,
            decoration: BoxDecoration(                  
              color: UIColors.grey2,
              shape: BoxShape.circle                  
            ),
            child: const Center(
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
          ),
        ),
        Text("User ID: 000001", style: UIStyle.userNameTextStyle,),
      ],
    );
  }
}