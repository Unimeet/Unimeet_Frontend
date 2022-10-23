import 'package:flutter/material.dart';
import 'package:unimeet/src/home_page.dart';
import 'package:unimeet/src/screens/RecoveryPassword/auth_page.dart';
import 'package:unimeet/src/screens/Login/login_page.dart';
import 'package:unimeet/src/screens/Profile/profile_page.dart';
import 'package:unimeet/src/screens/RecoveryPassword/email_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Roboto'),
      initialRoute: '/profile',
      routes: {
        '/': (context) => const HomePage(),
        '/sign-in': ((context) => const Login()),
        '/profile': (context) => const Profile(),
        '/auth': (context) => const VerfiyMfa(),
        '/password-recovery': (context) => const PasswordRecovery(),
      },
    );
  }
}
