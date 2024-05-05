import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/views/add_mood_diary_view.dart';
import 'package:mindpal_flutter_app/views/audio_consult_view.dart';
import 'package:mindpal_flutter_app/views/base_view.dart';
import 'package:mindpal_flutter_app/views/ai_consult_view.dart';
import 'package:mindpal_flutter_app/views/consult_log_view.dart';
import 'package:mindpal_flutter_app/views/first_view.dart';
import 'package:mindpal_flutter_app/views/forget_password_view.dart';
import 'package:mindpal_flutter_app/views/consult_log_detail_view.dart';
import 'package:mindpal_flutter_app/views/my_therapist_view.dart';
import 'package:mindpal_flutter_app/views/therapist_list_view.dart';
import 'package:mindpal_flutter_app/views/home_view.dart';
import 'package:mindpal_flutter_app/views/login_view.dart';
import 'package:mindpal_flutter_app/views/mood_diary_view.dart';
import 'package:mindpal_flutter_app/views/profile_view.dart';
import 'package:mindpal_flutter_app/views/system_settings_view.dart';
import 'package:mindpal_flutter_app/views/signup_view.dart';

class Routes {
  static const String addMoodDiary = '/addMoodDiary';
  static const String aiConsult = '/aiConsult';
  static const String audioConsult = '/audioConsult';
  static const String baseview = '/baseview';
  static const String consultLogDetail = '/consultLogDetail';
  static const String consultLog = '/consultLog';
  static const String first = '/first';
  static const String forgetPassword = '/forgetPassword';
  static const String home = '/home';
  static const String login = '/login';
  static const String moodDiary = '/moodDiary';
  static const String myTherapist = 'myTherapist';
  static const String profile = '/profile';
  static const String signup = '/signup';
  static const String systemSettings = '/systemSettings';
  static const String therapistList = '/therapistList';
  static const List pages = [HomeView(), MyTherapistView(), AIConsultView(), MoodDiaryView(), ProfileView()];

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      addMoodDiary: (context) => AddMoodDiaryView(),
      aiConsult: (context) => AIConsultView(),
      audioConsult:(context) => AudioConsultView(),
      baseview:(context) => BaseView(),
      consultLogDetail:(context) => ConsultLogDetailView(),
      consultLog: (context) => ConsultLogView(),
      first:(context) => FirstView(),
      forgetPassword:(context) => ForgetPasswordView(),
      home: (context) => HomeView(),
      login: (context) => LoginView(),
      moodDiary: (context) => MoodDiaryView(),
      myTherapist:(context) => MyTherapistView(),
      profile: (context) => ProfileView(),
      signup: (context) => SignupView(),
      systemSettings: (context) => SystemSettingsView(),
      therapistList: (context) => TherapistListView(),
    };
  }
}
