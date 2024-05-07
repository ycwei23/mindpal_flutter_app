import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/constants/ui_colors.dart';
import 'package:mindpal_flutter_app/constants/ui_style.dart';
import 'package:mindpal_flutter_app/widgets/head_image_widgets.dart';

class TodayMoodCard extends StatefulWidget {
  const TodayMoodCard({super.key});

  @override
  State<TodayMoodCard> createState() => _TodayMoodCardState();
}

class _TodayMoodCardState extends State<TodayMoodCard> {
  int _selectedIndex = -1;  // 初始狀態，沒有容器被選中
  @override
  Widget build(BuildContext context) {
    return Card(
      color: UIColors.apricot1,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("今天的心情", style: MyTextStyles.cardTitleTextStyle,)
              ],
            ),
            const SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 0;
                    });                    
                  },
                  child: BadMoodContainer(
                    index: 0,
                    isSelected: _selectedIndex == 0,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 1;
                    });                    
                  },
                  child: NormalMoodContainer(
                    index: 1,
                    isSelected: _selectedIndex == 1,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 2;
                    });                    
                  },
                  child: SmileMoodContainer(
                    index: 2,
                    isSelected: _selectedIndex == 2,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 4;
                    });                    
                  },
                  child: HappyMoodContainer(
                    index: 4,
                    isSelected: _selectedIndex == 4,
                  ),
                ),                                                

              ],
            ),
            const SizedBox(height: 8,),
          ],
        ),
      ),
    );
  }
}