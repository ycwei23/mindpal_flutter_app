import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/constants/ui_style.dart';
import 'package:mindpal_flutter_app/widgets/cards/consult_log_card.dart';
import 'package:mindpal_flutter_app/widgets/textfields/search_textfield.dart';

class ConsultLogView extends StatefulWidget {
  const ConsultLogView({super.key});

  @override
  State<ConsultLogView> createState() => _ConsultLogViewState();
}

class _ConsultLogViewState extends State<ConsultLogView> {
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
        appBar: AppBar(title: Text("MindPal", style: MyTextStyles.appBarTextStyle,),),
        body: Column(
          children: [
            SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Text("AI諮商紀錄", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),), 
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