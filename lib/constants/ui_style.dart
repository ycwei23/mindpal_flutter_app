import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/constants/ui_colors.dart';

class UIStyle {
  static ButtonStyle bigButtonStyle = ElevatedButton.styleFrom(
      backgroundColor: UIColors.lightGreen,
      foregroundColor: UIColors.white,
      fixedSize: const Size(343, 60),
      textStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold
      )
  );

  static ButtonStyle profileButtonStyle = ElevatedButton.styleFrom(
      backgroundColor: UIColors.lightGreen,
      foregroundColor: UIColors.white,
      fixedSize: const Size(343, 51),
      textStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
  );

  static TextStyle hintTextStyle = TextStyle(
    color: Color(0XFFBDBDBD),
    height: 1
  );

  static TextStyle appBarTextStyle = TextStyle(
    color: UIColors.darkGreen,
    fontWeight: FontWeight.bold,
    fontSize: 34
  );

  static TextStyle cardTitleTextStyle = TextStyle(
    color: UIColors.darkGreen,
    fontWeight: FontWeight.bold,
    fontSize: 18
  );
  static TextStyle cardTextButtonTextStyle = TextStyle(
    color: UIColors.lightGreen,
  );

  static TextStyle lastestSummaryTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 12,
    fontWeight: FontWeight.normal
  ); 

  static TextStyle userInfoCardTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 12,
    fontWeight: FontWeight.normal
  ); 
  static TextStyle userNameTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.bold
  ); 
}