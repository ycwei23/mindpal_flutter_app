import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/constants/routes.dart';
import 'package:mindpal_flutter_app/constants/ui_colors.dart';
import 'package:mindpal_flutter_app/constants/ui_style.dart';

class MoodDiaryCard extends StatefulWidget {
  const MoodDiaryCard({super.key});

  @override
  State<MoodDiaryCard> createState() => _MoodDiaryCardState();
}

class _MoodDiaryCardState extends State<MoodDiaryCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: UIColors.apricot1,
      child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12, top: 4, bottom: 4),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("2024/04/27", style: MyTextStyles.cardTitleTextStyle,),
                TextButton(onPressed: () => {}, child: Text("查看更多", style: MyTextStyles.cardTextButtonTextStyle,))
              ],
            ),
          ],
        ),
      ),
    );
  }
}