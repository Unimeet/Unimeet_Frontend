import 'package:flutter/material.dart';
import 'package:unimeet/src/home_page.dart';
import 'package:unimeet/src/screens/RecoveryPassword/auth_page.dart';
import 'package:unimeet/src/screens/Login/login_page.dart';
import 'package:unimeet/src/screens/Register/confirm_code.dart';
import 'package:unimeet/src/screens/Register/create_profile.dart';
import 'package:unimeet/src/screens/Register/register_page.dart';
import 'package:unimeet/src/screens/Profile/profile_page.dart';
import 'package:unimeet/src/screens/RecoveryPassword/email_page.dart';
import 'package:unimeet/src/screens/university/university_page.dart';
import 'package:unimeet/src/screens/Courses/courses_page.dart';
import 'package:unimeet/src/screens/Courses/create_courses_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Roboto'),
      initialRoute: '/courses',
      routes: {
        '/': (context) => const HomePage(),
        '/sign-in': ((context) => const Login()),
        '/register': ((context) => const Register()),
        '/profile': (context) => const Profile(),
        '/auth': (context) => const VerfiyMfa(),
        '/password-recovery': (context) => const PasswordRecovery(),
        '/create_profile': (context) => const CreateProfile(),
        '/university': (context) => const University(),
        '/confirm-code-register': (context) => const ConfirmCodeRegister(),
        '/courses': (context) => const CoursesPage(),
        '/create-course': (context) => const CreateCourse()
      },
    );
  }
}
