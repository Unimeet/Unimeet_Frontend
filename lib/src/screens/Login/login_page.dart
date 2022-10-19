import 'package:flutter/material.dart';
import 'package:unimeet/src/widgets/button_widget.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  final String login = 'Login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E26),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Button(
            buttonText: login,
            handleClickButton: () => {},
          )
        ],
      ),
    );
  }
}
