import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/constants/routes.dart';
import 'package:mindpal_flutter_app/constants/ui_colors.dart';
import 'package:mindpal_flutter_app/constants/ui_style.dart';

class BaseView extends StatefulWidget {
  const BaseView({super.key});

  @override
  State<BaseView> createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  int _selectedIndex = 0;

  void _navigationBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  final List _pages = Routes.pages;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MinaPal", style: MyTextStyles.appBarTextStyle,),),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: UIColors.lightGreen,
        currentIndex: _selectedIndex,
        onTap: _navigationBar,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.circle), label: "首頁"),
          BottomNavigationBarItem(icon: Icon(Icons.circle), label: "我與諮商師"),
          BottomNavigationBarItem(icon: Icon(Icons.circle), label: "AI諮商"),
          BottomNavigationBarItem(icon: Icon(Icons.circle), label: "情緒日誌"),
          BottomNavigationBarItem(icon: Icon(Icons.circle), label: "個人資訊"),
        ],
      ),
      body: _pages[_selectedIndex],
    );
  }
}