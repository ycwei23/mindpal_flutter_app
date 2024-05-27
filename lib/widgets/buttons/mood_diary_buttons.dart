import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/constants/ui_style.dart';

class MoodDiaryDeleteButton extends StatelessWidget {
  const MoodDiaryDeleteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: MyButtonStyles.moodDiaryButtonStyle,
      onPressed: () => {},
      child: Text("刪除")
    );
  }
}

class MoodDiaryEditButton extends StatelessWidget {
  const MoodDiaryEditButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: MyButtonStyles.moodDiaryButtonStyle,
      onPressed: () => {},
      child: Text("編輯")
    );
  }
}

class MoodDiaryFinishButton extends StatelessWidget {
  const MoodDiaryFinishButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: MyButtonStyles.moodDiaryButtonStyle,
      onPressed: () => {},
      child: Text("完成")
    );
  }
}