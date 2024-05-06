import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/widgets/textfields/chat_textfield.dart';

class AIConsultView extends StatefulWidget {
  const AIConsultView({super.key});

  @override
  State<AIConsultView> createState() => _AIConsultViewState();
}

class _AIConsultViewState extends State<AIConsultView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // 使空白處可以點擊
      behavior: HitTestBehavior.translucent,
      // 點擊後失去當前的Focus(request一個空的Focus給它)
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: ChatTextField()
            )
          ],
        )
      ),
    );
  }
}