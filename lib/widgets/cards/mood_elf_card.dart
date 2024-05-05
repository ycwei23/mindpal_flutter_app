import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/constants/ui_colors.dart';
import 'package:mindpal_flutter_app/constants/ui_style.dart';

class MoodElfCard extends StatefulWidget {
  const MoodElfCard({super.key});

  @override
  State<MoodElfCard> createState() => _MoodElfCardState();
}

class _MoodElfCardState extends State<MoodElfCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12, right: 12, top: 6, bottom: 6),
      child: Card(
        color: UIColors.apricot1,
        child: Padding(
          padding: EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("情緒小精靈", style: UIStyle.cardTitleTextStyle,)
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 30, bottom: 30),
                child: Text("你遠比你想象中的還要強大。", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),), 
              )
            ],
          ),
        ),
      ),
    );
  }
}