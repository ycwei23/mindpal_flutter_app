import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/constants/ui_style.dart';
import 'package:mindpal_flutter_app/widgets/buttons/signup_button.dart';
import 'package:mindpal_flutter_app/widgets/textfields/info_textfield.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // 使空白處可以點擊
      behavior: HitTestBehavior.translucent,
      // 點擊後失去當前的Focus(request一個空的Focus給它)
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "註冊",
            style: UIStyle.appBarTextStyle
          ),
        ),
        body: Center(
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 120, bottom: 10),
                child: NameTextField(controller: _nameController,)
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                child: EmailTextField(controller: _emailController,)
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                child: PasswordTextField(controller: _passwordController,)
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 32, bottom: 12),
                child: SignupButton(
                  onPressed: () {
                    _signup(_nameController.text, _emailController.text, _passwordController.text);
                  },
                ),
              ),   
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 12, bottom: 12),
                child: Center(
                  child: Text("忘記密碼?", style: TextStyle(color: Color(0xFF5DB075), fontWeight: FontWeight.bold, fontSize: 16),),
                )
              ),                             
            ],
          ),
        )
      )
    );
  }

  Future<void> _signup(String name, String email, String password) async {
    print('Signing up with Name: $name, Email: $email, Password: $password');
  }
  
}