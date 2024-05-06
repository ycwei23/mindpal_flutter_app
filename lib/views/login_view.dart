import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/constants/routes.dart';
import 'package:mindpal_flutter_app/constants/ui_style.dart';
import 'package:mindpal_flutter_app/widgets/buttons/forget_password_button.dart';
import 'package:mindpal_flutter_app/widgets/buttons/login_button.dart';
import 'package:mindpal_flutter_app/widgets/textfields/info_textfield.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
            "登入",
            style: MyTextStyles.appBarTextStyle,
          ),
        ),
        body: Center(
          child: ListView(
            children: [
              const SizedBox(height: 180),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: EmailTextField(controller: _emailController,)
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: PasswordTextField(controller: _passwordController,)
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: LoginButton(
                  onPressed: () {
                    _login(_emailController.text, _passwordController.text);
                  },
                ),
              ),
              const SizedBox(height: 12),   
              const Padding(
                padding: EdgeInsets.only(left: 110, right: 110),
                child: ForgetPasswordButton()                
              ),                             
            ],
          ),
        )
      )
    );
  }
  Future<void> _login(String email, String password) async {
    print('Log In with Email: $email, Password: $password');
    Navigator.pushNamedAndRemoveUntil(context, Routes.baseview, (route) => false);
  } 
}
