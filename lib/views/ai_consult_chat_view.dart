import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:mindpal_flutter_app/constants/ui_colors.dart';
import 'package:mindpal_flutter_app/constants/ui_style.dart';

class AIConsultChatView extends StatefulWidget {
  const AIConsultChatView({super.key});

  @override
  State<AIConsultChatView> createState() => _AIConsultChatViewState();
}

class _AIConsultChatViewState extends State<AIConsultChatView> {
  final List<types.Message> _messages = [];
  final _user = const types.User(id: '82091008-a484-4a89-ae75-a22bf8d6f3ac');//user 自己

  @override
  void initState() {
    final _user2 = const types.User(id: '88091008-a484-4a89-ae75-a22bf8d6f3ac');
    _messages.insert(
      0, 
      types.TextMessage(
      author: _user2,//自己
      createdAt: DateTime.now().millisecondsSinceEpoch,//訊息建立時間，我個人偏向使用伺服器的時間
      id: randomString(),//每一個message要有獨立的id
      text: "AI諮商訊息",//文字訊息
      )
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MindPal", style: MyTextStyles.appBarTextStyle,),),
      body: Chat(
        theme: DefaultChatTheme(
          primaryColor: UIColors.lightGreen,
          secondaryColor: UIColors.apricot1,
          inputTextCursorColor: UIColors.white,
          inputBackgroundColor: UIColors.grey4
        ),
        messages: _messages,
        onSendPressed: _handleSendPressed,
        user: _user
      ),
    );
  }

  void _addMessage(types.Message message) {
    setState(() {
      //新增新訊息時，將資料插入到index 0的位置，並且setState刷新UI
      _messages.insert(0, message);
    });
  }

  //當點擊send按鈕時，會從Chat Widget中觸發此函數並將訊息資料傳出。
  //根據資料內容可以創建新的`TextMessage`並加入訊息歷史列表中
  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,//自己
      createdAt: DateTime.now().millisecondsSinceEpoch,//訊息建立時間，我個人偏向使用伺服器的時間
      id: randomString(),//每一個message要有獨立的id
      text: message.text,//文字訊息
    );

    _addMessage(textMessage);
  }
}

String randomString() {
  final random = Random.secure();
  final values = List<int>.generate(16, (i) => random.nextInt(255));
  return base64UrlEncode(values);
}