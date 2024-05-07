import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/constants/ui_colors.dart';
import 'package:mindpal_flutter_app/constants/ui_style.dart';

class TodayMoodDiaryCard extends StatefulWidget {
  const TodayMoodDiaryCard({super.key});

  @override
  State<TodayMoodDiaryCard> createState() => _TodayMoodDiaryCardState();
}

class _TodayMoodDiaryCardState extends State<TodayMoodDiaryCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: UIColors.apricot1,
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Text("寫下你今天的心情", style: MyTextStyles.cardTitleTextStyle,)],
            ),
            SizedBox(height: 10),  // 加入一點間隔
            TextField(
              maxLines: 5,  // 允許多行輸入
              decoration: InputDecoration(
                hintText: "輸入你的心情日記...",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
