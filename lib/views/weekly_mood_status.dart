import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/constants/ui_style.dart';

class WeeklyMoodStatusView extends StatelessWidget {
  const WeeklyMoodStatusView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MindPal", style: MyTextStyles.appBarTextStyle,),),
      body: ListView(
        children: [
          SizedBox(height: 14),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 18),
                child: Text("一週心理光譜趨勢", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),), 
              ),    
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 18),
                child: Text("每小時心理光譜變化", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),), 
              ),    
            ],
          ),         
        ],
      ),
    );
  }
}