import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/constants/ui_style.dart';

class ConsultLogView extends StatefulWidget {
  const ConsultLogView({super.key});

  @override
  State<ConsultLogView> createState() => _ConsultLogViewState();
}

class _ConsultLogViewState extends State<ConsultLogView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("諮商紀錄", style: MyTextStyles.appBarTextStyle,),),
    );
  }
}