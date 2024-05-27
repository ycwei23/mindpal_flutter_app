import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/constants/ui_style.dart';
import 'package:mindpal_flutter_app/widgets/buttons/mood_diary_buttons.dart';
import 'package:mindpal_flutter_app/widgets/cards/today_event_card.dart';
import 'package:mindpal_flutter_app/widgets/cards/today_mood_card.dart';
import 'package:mindpal_flutter_app/widgets/cards/today_mood_diary_card.dart';

class MoodDiaryView extends StatefulWidget {
  const MoodDiaryView({super.key});

  @override
  State<MoodDiaryView> createState() => _MoodDiaryViewState();
}

class _MoodDiaryViewState extends State<MoodDiaryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MindPal", style: MyTextStyles.appBarTextStyle,),),
      body: ListView(
        children: const [
          SizedBox(height: 14),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 8),
            child: Text("我的情緒日誌", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),), 
          ),
          SizedBox(height: 12,),
          Padding(
            padding: EdgeInsets.only(left: 18, right: 18),
            child: TodayMoodCard(),
          ),
          SizedBox(height: 12,),
          Padding(
            padding: EdgeInsets.only(left: 18, right: 18),
            child: TodayEventCard(),
          ),          
          SizedBox(height: 12,), 
          Padding(
            padding: EdgeInsets.only(left: 18, right: 18),
            child: TodayMoodDiaryCard(),
          ),          SizedBox(height: 12,),    
          Padding(
            padding: EdgeInsets.only(left: 18, right: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MoodDiaryDeleteButton(),
                MoodDiaryEditButton(),
                MoodDiaryFinishButton()
              ],
            ),
          ),
        ],
      )
    );
  }
}