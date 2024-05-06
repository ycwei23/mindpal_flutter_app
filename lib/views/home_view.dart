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
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 14, bottom: 6),
            child: Text("早安, 郝美麗", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),), 
          ),
          MoodStatusCard(),
          LatestSummaryCard(),
          MoodElfCard()
        ]
      )
    );
  }
}
