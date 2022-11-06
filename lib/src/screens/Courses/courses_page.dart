import 'package:flutter/material.dart';
import 'package:unimeet/src/screens/Courses/widgets/course_card.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final String login = 'Logar';
  final String register = 'Cadastrar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E26),
      body: Container(
        margin: const EdgeInsets.only(left: 24, right: 24),
        child: Form(
          child: ListView(
            children: [
              const SizedBox(height: 16),
              CardButton(
                  titleText: "Nome do Curso",
                  subTitleText: "infos gerais",
                  handleClickButton: () => print("redirect to the course")),
            ],
          ),
        ),
      ),
    );
  }
}
