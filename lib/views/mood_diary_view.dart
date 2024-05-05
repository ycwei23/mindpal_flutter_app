import 'package:flutter/material.dart';

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
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16, right: 8, top: 14, bottom: 6),
            child: Text("我的情緒日誌", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),), 
          ),
        ],
      )
    );
  }
}