import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/constants/routes.dart';
import 'package:mindpal_flutter_app/constants/ui_style.dart';
import 'package:mindpal_flutter_app/widgets/cards/consult_log_card.dart';
import 'package:mindpal_flutter_app/widgets/textfields/chat_textfield.dart';
import 'package:mindpal_flutter_app/widgets/textfields/search_textfield.dart';

class AIConsultView extends StatefulWidget {
  const AIConsultView({super.key});

  @override
  State<AIConsultView> createState() => _AIConsultViewState();
}

class _AIConsultViewState extends State<AIConsultView> {

  void startNewConsult(BuildContext context) {
    Navigator.pushNamed(context, Routes.aiConsultChat);
  }

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
            SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Text("AI諮商紀錄", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),), 
                ),
                Padding(
                  padding: EdgeInsets.only(right: 18),
                  child: ElevatedButton(
                    child: Text("+開始新對話"),
                    style: MyButtonStyles.newConsultButtonStyle,
                    onPressed: () => { startNewConsult(context) },
                  ), 
                ),                
              ],
            ),
            SizedBox(height: 12),        
            const Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: SearchTextField()
            ),            
            Expanded(
              child: ListView(
                children: const [
                  SizedBox(height: 8,),
                  Padding(padding: EdgeInsets.only(left: 14, right: 14), child: ConsultLogCard(consultLogDate: "2024/04/26 升學的迷茫"),),
                  SizedBox(height: 8,),
                  Padding(padding: EdgeInsets.only(left: 14, right: 14), child: ConsultLogCard(consultLogDate: "2024/04/26 升學的迷茫"),),
                  SizedBox(height: 8,),
                  Padding(padding: EdgeInsets.only(left: 14, right: 14), child: ConsultLogCard(consultLogDate: "2024/04/26 升學的迷茫"),),
                ],
              ),
            ),
            SizedBox(height: 10,),
          ],
        )
      ),
    );
  }
}