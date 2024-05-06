import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/constants/ui_style.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("忘記密碼", style: UIStyle.appBarTextStyle,),),
    );
  }
}