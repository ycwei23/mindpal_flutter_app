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
        hintStyle: UIStyle.hintTextStyle,
        hintText: "用戶名",
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFFE8E8E8), width: 4),
          borderRadius: BorderRadius.circular(8)
        ),
        filled: true,
        fillColor: UIColors.grey1
      ),
      keyboardType: TextInputType.name,
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
        hintStyle: UIStyle.hintTextStyle,
        hintText: "電子信箱",
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFFE8E8E8), width: 4),
          borderRadius: BorderRadius.circular(8)
        ),
        filled: true,
        fillColor: UIColors.grey1
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
      decoration: InputDecoration( 
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFFE8E8E8), width: 4),
          borderRadius: BorderRadius.circular(8)
        ),
        hintText: "密碼",
        hintStyle: UIStyle.hintTextStyle,
        suffixIcon: IconButton( 
          icon: Icon(passwordVisible 
              ? Icons.visibility_off 
              : Icons.visibility), 
          onPressed: () { 
            setState( 
              () { 
                passwordVisible = !passwordVisible; 
              }, 
            ); 
          }, 
        ), 
        alignLabelWithHint: false, 
        filled: true,
        fillColor: UIColors.grey1
      ), 
      keyboardType: TextInputType.visiblePassword, 
      textInputAction: TextInputAction.done,
    );
  }
}