import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/constants/ui_style.dart';
import 'package:mindpal_flutter_app/widgets/head_image_widgets.dart';
import 'package:mindpal_flutter_app/widgets/textfields/info_textfield.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({super.key});

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

enum Gender {male, female, other}

class _EditProfileViewState extends State<EditProfileView> {
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
    return Scaffold(
      appBar: AppBar(title: Text("MindPal", style: MyTextStyles.appBarTextStyle,),),
      body: Padding(
        padding: const EdgeInsets.all(8.0), 
        child: ListView(
          children: [
            SizedBox(height: 14),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 8),
              child: Text("個人資訊設定", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),), 
            ),
            SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: ProfileHeadContainer()
                ),
                Text("User ID: 000001", style: MyTextStyles.userNameTextStyle,),
              ],
            ),
            const SizedBox(height: 20),   
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
            Row(
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
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: ElevatedButton(
                child: const Text("更改個人資訊"),
                style: MyButtonStyles.editProfileButtonStyle,
                onPressed: () => {print("更改資訊")},
              )
            ),               
          ],
        ),
      )      
    );
  }
}