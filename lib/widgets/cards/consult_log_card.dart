import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/constants/routes.dart';
import 'package:mindpal_flutter_app/constants/ui_colors.dart';
import 'package:mindpal_flutter_app/constants/ui_style.dart';

class ConsultLogCard extends StatelessWidget {
  final String consultLogDate;
  const ConsultLogCard({super.key, required this.consultLogDate});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: UIColors.apricot1,
      child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(consultLogDate, style: MyTextStyles.cardTitleTextStyle,),
                TextButton(onPressed: () => {Navigator.pushNamed(context, Routes.consultLogDetail)}, child: Text("查看諮商紀錄", style: MyTextStyles.cardTextButtonTextStyle,))
              ],
            ),
            const SizedBox(height: 8,),
            Text("諮商日期：$consultLogDate", style: MyTextStyles.lastestSummaryTextStyle,),
            Text("諮商主題：升學的迷茫", style: MyTextStyles.lastestSummaryTextStyle,),
            const SizedBox(height: 12,),
            Text("1. 在會談中我們發現了您的人格特質優勢，例如積極向上、有規劃執行力。", style: MyTextStyles.lastestSummaryTextStyle,),
            Text("2. 我們一起分析及探討在國內與國外就讀研究所的優劣勢。", style: MyTextStyles.lastestSummaryTextStyle,),
            Text("3. 建議您也可以多跟信賴的教授或長輩聊聊。", style: MyTextStyles.lastestSummaryTextStyle,),
            Text("4. 記得相信自己可以做得很棒。", style: MyTextStyles.lastestSummaryTextStyle,)
          ],
        ),
      ),
    );
  }
}