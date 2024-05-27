import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/constants/ui_style.dart';
import 'package:mindpal_flutter_app/widgets/buttons/signup_button.dart';
import 'package:mindpal_flutter_app/widgets/textfields/info_textfield.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

enum Gender {male, female, other}

class _SignupViewState extends State<SignupView> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emergencyContactNameController = TextEditingController();
  final TextEditingController _emergencyContactEmailController = TextEditingController();
  final TextEditingController _emergencyContactPhoneController = TextEditingController();
  Gender? _selectedGender;
  String _getGenderString() {
    switch (_selectedGender) {
      case Gender.female:
        return 'female';
      case Gender.male:
        return 'male';
      case Gender.other:
        return 'other';
      default:
        return "None";
    }
  }
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
              const SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: NameTextField(controller: _nameController,)
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: PhoneTextField(controller: _phoneController,)
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
                child: Text("性別")
              ),              
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: RadioListTile<Gender>(
                        title: const Text('男性'),
                        value: Gender.male,
                        groupValue: _selectedGender,
                        onChanged: (Gender? value) { setState(() { _selectedGender = value; }); },
                      ),
                    ),
                    Expanded(
                      child: RadioListTile<Gender>(
                        title: const Text('女性'),
                        value: Gender.female,
                        groupValue: _selectedGender,
                        onChanged: (Gender? value) { setState(() { _selectedGender = value; }); },
                      ),
                    ),
                    Expanded(
                      child: RadioListTile<Gender>(
                        title: const Text('其他'),
                        value: Gender.other,
                        groupValue: _selectedGender,
                        onChanged: (Gender? value) { setState(() { _selectedGender = value; }); },
                      ),
                    ),                                                                                                    
                  ],
                )        
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: EmergencyContactNameTextField(controller: _emergencyContactNameController)
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: EmergencyContactEmailTextField(controller: _emergencyContactEmailController)
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
                    _signup(_nameController.text, _phoneController.text, _emailController.text, _passwordController.text, _getGenderString(), _emergencyContactNameController.text, _emergencyContactEmailController.text, _emergencyContactPhoneController.text);
                  },
                ),
              ),                         
            ],
          ),
        )
      )
    );
  }

  Future<void> _signup(String name, String phone, String email, String password, String gender, String emergencyContactName, String emergencyContactEmail, String emergencyContactPhone) async {
    if(name == "") {
      print("Please Enter your name!");
    }
    else if(phone == "") {
      print("Please en");
    }
    print('Signing up with Name: $name, Phone: $phone, Email: $email, Password: $password, Gender: $gender, EmergencyContactName: $emergencyContactName, EmergencyContactPhone: $emergencyContactEmail EmergencyContactPhone: $emergencyContactPhone');
  }
  
}
