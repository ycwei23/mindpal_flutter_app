import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/constants/ui_colors.dart';
import 'package:mindpal_flutter_app/constants/ui_style.dart';

class MoodStatusCard extends StatefulWidget {
  const MoodStatusCard({super.key});

  @override
  State<MoodStatusCard> createState() => _MoodStatusCardState();
}

class _MoodStatusCardState extends State<MoodStatusCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, top: 6, bottom: 6),
      child: Card(
        color: UIColors.apricot1,
        child: Padding(
          padding: const EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("心理狀態光譜", style: UIStyle.cardTitleTextStyle,),
                  TextButton(onPressed: () => {}, child: Text("查看更多", style: UIStyle.cardTextButtonTextStyle,))
                ],
              ),
              const ProgressIndicatorWidget(progress: 0.5)

            ],
          ),
        ),
      ),
    );
  }
}

class ProgressIndicatorWidget extends StatelessWidget {
  final double progress; // 進度值，0.0 到 1.0

  const ProgressIndicatorWidget({
    super.key,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 40,
                width: 360,
                decoration: BoxDecoration(
                  color: UIColors.grey2,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                height: 40,
                width: 360 * progress,  // 基於最大寬度乘以進度計算實際寬度
                decoration: BoxDecoration(
                  color: UIColors.lightGreen,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('低落', style: TextStyle(color: Colors.black, fontSize: 14)),
              Text('良好', style: TextStyle(color: Colors.black, fontSize: 14)),
            ],
          )
        ],
      ),
    );
  }
}