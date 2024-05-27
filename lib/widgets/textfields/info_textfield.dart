import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/constants/ui_colors.dart';
import 'package:mindpal_flutter_app/constants/ui_style.dart';

class NameTextField extends StatelessWidget {
  final TextEditingController controller;
  const NameTextField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintStyle: MyTextStyles.hintTextStyle,
        hintText: "姓名",
        filled: true,
        fillColor: UIColors.grey1,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: UIColors.grey3, width: 2),
          borderRadius: BorderRadius.circular(8)
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: UIColors.grey3),
          borderRadius: BorderRadius.circular(8)
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: UIColors.lightGreen, width: 2),
          borderRadius: BorderRadius.circular(8)          
        ), 
      ),
      keyboardType: TextInputType.name,
    );
  }
}

class PhoneTextField extends StatelessWidget {
  final TextEditingController controller;
  const PhoneTextField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintStyle: MyTextStyles.hintTextStyle,
        hintText: "電話",
        filled: true,
        fillColor: UIColors.grey1,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: UIColors.grey3, width: 2),
          borderRadius: BorderRadius.circular(8)
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: UIColors.grey3),
          borderRadius: BorderRadius.circular(8)
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: UIColors.lightGreen, width: 2),
          borderRadius: BorderRadius.circular(8)          
        ),      
      ),
      keyboardType: TextInputType.phone,
    );
  }
}

class EmailTextField extends StatelessWidget {
  final TextEditingController controller;
  const EmailTextField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintStyle: MyTextStyles.hintTextStyle,
        hintText: "電子信箱",
        filled: true,
        fillColor: UIColors.grey1,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: UIColors.grey3, width: 2),
          borderRadius: BorderRadius.circular(8)
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: UIColors.grey3),
          borderRadius: BorderRadius.circular(8)
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: UIColors.lightGreen, width: 2),
          borderRadius: BorderRadius.circular(8)          
        ),      
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }
}

class PasswordTextField extends StatefulWidget {
  final TextEditingController controller;
  const PasswordTextField({super.key, required this.controller});
  
  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {

  bool passwordVisible = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: passwordVisible, 
      keyboardType: TextInputType.visiblePassword, 
      textInputAction: TextInputAction.done,
      decoration: InputDecoration( 
        hintText: "密碼",
        hintStyle: MyTextStyles.hintTextStyle,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: UIColors.grey3, width: 2),
          borderRadius: BorderRadius.circular(8)
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: UIColors.grey3),
          borderRadius: BorderRadius.circular(8)
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: UIColors.lightGreen, width: 2),
          borderRadius: BorderRadius.circular(8)          
        ),        
        suffixIcon: IconButton( 
          icon: Icon(passwordVisible 
              ? Icons.visibility_off 
              : Icons.visibility), 
          onPressed: () {setState(() { passwordVisible = !passwordVisible; });}, 
        ), 
        alignLabelWithHint: false, 
        filled: true,
        fillColor: UIColors.grey1
      ), 
    );
  }
}

class EmergencyContactNameTextField extends StatelessWidget {
  final TextEditingController controller;
  const EmergencyContactNameTextField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        hintStyle: MyTextStyles.hintTextStyle,
        hintText: "緊急聯絡姓名",
        border: OutlineInputBorder(
          borderSide: BorderSide(color: UIColors.grey3, width: 2),
          borderRadius: BorderRadius.circular(8)
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: UIColors.grey3),
          borderRadius: BorderRadius.circular(8)
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: UIColors.lightGreen, width: 2),
          borderRadius: BorderRadius.circular(8)          
        ), 
        filled: true,
        fillColor: UIColors.grey1
      ),      
    );
  }
}

class EmergencyContactEmailTextField extends StatelessWidget {
  final TextEditingController controller;
  const EmergencyContactEmailTextField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        hintStyle: MyTextStyles.hintTextStyle,
        hintText: "緊急聯絡信箱",
        border: OutlineInputBorder(
          borderSide: BorderSide(color: UIColors.grey3, width: 2),
          borderRadius: BorderRadius.circular(8)
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: UIColors.grey3),
          borderRadius: BorderRadius.circular(8)
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: UIColors.lightGreen, width: 2),
          borderRadius: BorderRadius.circular(8)          
        ), 
        filled: true,
        fillColor: UIColors.grey1
      ),      
    );
  }
}

class EmergencyContactPhoneTextField extends StatelessWidget {
  final TextEditingController controller;
  const EmergencyContactPhoneTextField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        hintStyle: MyTextStyles.hintTextStyle,
        hintText: "緊急聯絡人電話",
        border: OutlineInputBorder(
          borderSide: BorderSide(color: UIColors.grey3, width: 2),
          borderRadius: BorderRadius.circular(8)
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: UIColors.grey3),
          borderRadius: BorderRadius.circular(8)
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: UIColors.lightGreen, width: 2),
          borderRadius: BorderRadius.circular(8)          
        ),
        filled: true,
        fillColor: UIColors.grey1
      ),      
    );
  }
}