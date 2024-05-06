import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/constants/ui_style.dart';

class SystemSettingsView extends StatefulWidget {
  const SystemSettingsView({super.key});

  @override
  State<SystemSettingsView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SystemSettingsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("設定", style: UIStyle.appBarTextStyle,),),
    );
  }
}