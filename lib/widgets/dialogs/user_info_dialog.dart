import 'package:flutter/material.dart';

class UserInfoDialog extends StatefulWidget {
  const UserInfoDialog({super.key});

  @override
  State<UserInfoDialog> createState() => _UserInfoDialogState();
}

class _UserInfoDialogState extends State<UserInfoDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("User ID: 000001"),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text("最後登錄時間：實際上書時間"),
            Text("於MindPal的第一次登入：2024/01/01"),
            SizedBox(height: 20),
            TextFormField(
              initialValue: 'lampretty@gmail.com',
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            TextFormField(
              initialValue: '********',
              obscureText: true,
              decoration: InputDecoration(
                labelText: '密碼',
                suffixIcon: IconButton(
                  icon: Icon(Icons.visibility),
                  onPressed: () {},
                ),
              ),
            ),
            TextFormField(
              initialValue: '0912345678',
              decoration: InputDecoration(
                labelText: '電話',
              ),
            ),
            TextFormField(
              initialValue: 'A234567890',
              decoration: InputDecoration(
                labelText: '身份證號',
              ),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            // 實現更新邏輯
            Navigator.of(context).pop();
          },
          child: Text('Update'),
        ),
      ],
    );
  }
}