import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/widgets/buttons/mood_diary_buttons.dart';

class MoodDiaryView extends StatefulWidget {
  const MoodDiaryView({super.key});

  @override
  State<MoodDiaryView> createState() => _MoodDiaryViewState();
}

class _MoodDiaryViewState extends State<MoodDiaryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          SizedBox(height: 14),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 8),
            child: Text("我的情緒日誌", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),), 
          ),
          SizedBox(height: 12,),
          Padding(
            padding: EdgeInsets.only(left: 14, right: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MoodDiaryDeleteButton(),
                MoodDiaryEditButton(),
                MoodDiaryFinishButton()
              ],
            ),
          )
        ],
      )
    );
  }
}