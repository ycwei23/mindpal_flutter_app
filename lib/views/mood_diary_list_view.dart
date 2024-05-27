import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/constants/routes.dart';
import 'package:mindpal_flutter_app/constants/ui_style.dart';
import 'package:mindpal_flutter_app/widgets/cards/mood_diary_card.dart';
import 'package:mindpal_flutter_app/widgets/textfields/search_textfield.dart';

class MoodDiaryListView extends StatefulWidget {
  const MoodDiaryListView({super.key});

  @override
  State<MoodDiaryListView> createState() => _MoodDiaryListViewState();
}

class _MoodDiaryListViewState extends State<MoodDiaryListView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // 使空白處可以點擊
      behavior: HitTestBehavior.translucent,
      // 點擊後失去當前的Focus(request一個空的Focus給它)
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Text("我的情緒日誌", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),), 
                )                
              ],
            ),
            SizedBox(height: 12),        
            const Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: SizedBox(
                width: double.infinity,
                child: SearchTextField(),
              )
            ),   
            SizedBox(height: 12),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text("新增本日情緒日誌"),
                  style: MyButtonStyles.addTodayMoodDiaryButtonStyle,
                  onPressed: () => {Navigator.pushNamed(context, Routes.moodDiary)},
                )
              ),
            ),
            SizedBox(height: 12),                     
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 13, right: 13),
                child: ListView(
                  children: const [
                    SizedBox(
                      width: double.infinity,
                      child: MoodDiaryCard(),
                    ),
                    SizedBox(height: 8,),
                    SizedBox(
                      width: double.infinity,
                      child: MoodDiaryCard(),
                    ),
                    SizedBox(height: 8,),
                    SizedBox(
                      width: double.infinity,
                      child: MoodDiaryCard(),
                    ),
                    SizedBox(height: 8,),
                    SizedBox(
                      width: double.infinity,
                      child: MoodDiaryCard(),
                    ),
                    SizedBox(height: 8,),
                    SizedBox(
                      width: double.infinity,
                      child: MoodDiaryCard(),
                    ),
                    SizedBox(height: 8,),
                    SizedBox(
                      width: double.infinity,
                      child: MoodDiaryCard(),
                    ),
                    SizedBox(height: 8,),
                    SizedBox(
                      width: double.infinity,
                      child: MoodDiaryCard(),
                    )                                                                                                                        
                  ],
                ),
              )          
            ),
          ],
        )
      ),
    );
  }
}