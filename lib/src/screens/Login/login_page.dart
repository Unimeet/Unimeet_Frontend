import 'package:flutter/material.dart';
import 'package:unimeet/src/widgets/button_widget.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  final String login = 'Logar';
  final String register = 'Cadastrar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E26),
      body: Container(
        margin: const EdgeInsets.only(left: 24, right: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Button(
              buttonText: login,
              handleClickButton: () => {},
            ),
            const SizedBox(
              height: 16,
            ),
            Button(
              buttonText: register,
              handleClickButton: () => {},
            )
          ],
        ),
      ),
    );
  }
}
