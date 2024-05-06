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
  final TextEditingController _emergencyContactNameController = TextEditingController();
  final TextEditingController _emergencyContactPhoneController = TextEditingController();

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
          title: Text("註冊", style: MyTextStyles.appBarTextStyle),
        ),
        body: Center(
          child: ListView(
            children: [
              const SizedBox(height: 120),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: NameTextField(controller: _nameController,)
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: EmailTextField(controller: _emailController,)
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: PasswordTextField(controller: _passwordController,)
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: EmergencyContactNameTextField(controller: _emergencyContactNameController)
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: EmergencyContactPhoneTextField(controller: _emergencyContactPhoneController)
              ),
              const SizedBox(height: 42),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: SignupButton(
                  onPressed: () {
                    _signup(_nameController.text, _emailController.text, _passwordController.text, _emergencyContactNameController.text, _emergencyContactPhoneController.text);
                  },
                ),
              ),                         
            ],
          ),
        )
      )
    );
  }

  Future<void> _signup(String name, String email, String password, String emergencyContactName, String emergencyContactPhone) async {
    print('Signing up with Name: $name, Email: $email, Password: $password, emergencyContactName: $emergencyContactName, EmergencyContactPhone: $emergencyContactPhone');
  }
  
}
