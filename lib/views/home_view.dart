import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/widgets/cards/latest_summary_card.dart';
import 'package:mindpal_flutter_app/widgets/cards/mood_elf_card.dart';
import 'package:mindpal_flutter_app/widgets/cards/mood_status_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          SizedBox(height: 14),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Text("早安, 郝美麗", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),), 
          ),
          SizedBox(height: 12),
          Padding(
            padding: EdgeInsets.only(left: 12, right: 12),
            child: MoodStatusCard()
          ),
          SizedBox(height: 12),
          Padding(
            padding: EdgeInsets.only(left: 12, right: 12),
            child: LatestSummaryCard()
          ),
          SizedBox(height: 12),
          Padding(
            padding: EdgeInsets.only(left: 12, right: 12),
            child: MoodElfCard()
          )
        ]
      )
    );
  }
}
