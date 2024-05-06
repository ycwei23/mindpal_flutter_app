import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/constants/ui_colors.dart';

class UIStyle {
  static ButtonStyle bigButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: UIColors.lightGreen,
    foregroundColor: UIColors.white,
    splashFactory: NoSplash.splashFactory, // 完全取消水波紋效果
    fixedSize: const Size(343, 60),
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold
    )
  );

  static ButtonStyle dialogCencelButtonStyle = ElevatedButton.styleFrom(
      backgroundColor: UIColors.grey3,
      foregroundColor: UIColors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      splashFactory: NoSplash.splashFactory, // 完全取消水波紋效果
      fixedSize: const Size(70, 40),
      textStyle: const TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.bold
      ),
      elevation: 0,
  );

  static ButtonStyle dialogUpdateButtonStyle = ElevatedButton.styleFrom(
      backgroundColor: UIColors.lightGreen,
      foregroundColor: UIColors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      splashFactory: NoSplash.splashFactory, // 完全取消水波紋效果
      fixedSize: const Size(70, 40),
      textStyle: const TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.bold
      ),
      elevation: 0,
  );

  static ButtonStyle logoutButtonStyle = ElevatedButton.styleFrom(
      backgroundColor: UIColors.lightGreen,
      foregroundColor: UIColors.white,
      splashFactory: NoSplash.splashFactory, // 完全取消水波紋效果
      fixedSize: const Size(343, 51),
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
  );

  static ButtonStyle profileButtonStyle = ElevatedButton.styleFrom(
      backgroundColor: UIColors.apricot1,
      foregroundColor: UIColors.darkGreen,
      splashFactory: NoSplash.splashFactory, // 完全取消水波紋效果
      fixedSize: const Size(343, 51),
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  );

  static TextStyle hintTextStyle = const TextStyle(
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

  static TextStyle lastestSummaryTextStyle = const TextStyle(
    color: Colors.black,
    fontSize: 12,
    fontWeight: FontWeight.normal
  ); 

  static TextStyle userInfoCardTextStyle = const TextStyle(
    color: Colors.black,
    fontSize: 10,
    fontWeight: FontWeight.normal
  ); 
  static TextStyle userNameTextStyle = const TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.bold
  ); 
}