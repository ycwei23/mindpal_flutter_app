import 'package:flutter/material.dart';
import 'package:mindpal_flutter_app/views/add_mood_diary_view.dart';
import 'package:mindpal_flutter_app/views/ai_consult_chat_view.dart';
import 'package:mindpal_flutter_app/views/audio_consult_view.dart';
import 'package:mindpal_flutter_app/views/base_view.dart';
import 'package:mindpal_flutter_app/views/ai_consult_view.dart';
import 'package:mindpal_flutter_app/views/consult_log_view.dart';
import 'package:mindpal_flutter_app/views/edit_profile_view.dart';
import 'package:mindpal_flutter_app/views/first_view.dart';
import 'package:mindpal_flutter_app/views/forget_password_view.dart';
import 'package:mindpal_flutter_app/views/consult_log_detail_view.dart';
import 'package:mindpal_flutter_app/views/mood_diary_list_view.dart';
import 'package:mindpal_flutter_app/views/my_therapist_view.dart';
import 'package:mindpal_flutter_app/views/therapist_list_view.dart';
import 'package:mindpal_flutter_app/views/home_view.dart';
import 'package:mindpal_flutter_app/views/login_view.dart';
import 'package:mindpal_flutter_app/views/mood_diary_view.dart';
import 'package:mindpal_flutter_app/views/profile_view.dart';
import 'package:mindpal_flutter_app/views/system_settings_view.dart';
import 'package:mindpal_flutter_app/views/signup_view.dart';
import 'package:mindpal_flutter_app/views/weekly_mood_status.dart';

class Routes {
  static const String addMoodDiary = '/addMoodDiary';
  static const String aiConsult = '/aiConsult';
  static const String aiConsultChat = '/aiConsultChat';
  static const String audioConsult = '/audioConsult';
  static const String baseview = '/baseview';
  static const String consultLogDetail = '/consultLogDetail';
  static const String consultLog = '/consultLog';
  static const String editProfile = '/editProfile';
  static const String first = '/first';
  static const String forgetPassword = '/forgetPassword';
  static const String home = '/home';
  static const String login = '/login';
  static const String moodDiary = '/moodDiary';
  static const String moodDiartList = 'moodDiartList';
  static const String myTherapist = 'myTherapist';
  static const String profile = '/profile';
  static const String signup = '/signup';
  static const String systemSettings = '/systemSettings';
  static const String therapistList = '/therapistList';
  static const String weeklyMoodStatus = '/weeklyMoodStatus';
  static const List pages = [HomeView(), MyTherapistView(), AIConsultView(), MoodDiaryListView(), ProfileView()];

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      addMoodDiary: (context) => const AddMoodDiaryView(),
      aiConsult: (context) => const AIConsultView(),
      aiConsultChat:(context) => const AIConsultChatView(),
      audioConsult:(context) => const AudioConsultView(),
      baseview:(context) => const BaseView(),
      consultLogDetail:(context) => const ConsultLogDetailView(),
      consultLog: (context) => const ConsultLogView(),
      editProfile:(context) => const EditProfileView(),
      first:(context) => const FirstView(),
      forgetPassword:(context) => const ForgetPasswordView(),
      home: (context) => const HomeView(),
      login: (context) => const LoginView(),
      moodDiary: (context) => const MoodDiaryView(),
      moodDiartList:(context) => const MoodDiaryListView(),
      myTherapist:(context) => const MyTherapistView(),
      profile: (context) => const ProfileView(),
      signup: (context) => const SignupView(),
      systemSettings: (context) => const SystemSettingsView(),
      therapistList: (context) => const TherapistListView(),
      weeklyMoodStatus:(context) => const WeeklyMoodStatusView(),
    };
  }
}
