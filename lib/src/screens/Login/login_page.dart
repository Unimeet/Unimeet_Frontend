import 'package:flutter/material.dart';
import 'package:unimeet/src/widgets/button_widget.dart';
import 'package:unimeet/src/widgets/input_widget.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final String login = 'Logar';

  final String register = 'Cadastrar';

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  bool submitted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E26),
      body: Container(
        margin: const EdgeInsets.only(left: 24, right: 24),
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 96),
              child: Center(
                child: Text(
                  "UNIMEET",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 64,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 108,
            ),
            Input(
              controller: _emailController,
              submitted: submitted,
              labelText: "Email",
              typeInput: "email",
            ),
            const SizedBox(
              height: 16,
            ),
            Input(
              controller: _passwordController,
              submitted: submitted,
              labelText: "Senha",
              typeInput: "password",
            ),
            const SizedBox(
              height: 40,
            ),
            Button(
              buttonText: login,
              handleClickButton: () => {
                setState(() {
                  submitted = true;
                })
              },
            ),
            const SizedBox(
              height: 16,
            ),
            Button(
              buttonText: register,
              handleClickButton: () => {},
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Esqueci a senha",
                style: TextStyle(
                  color: Color(
                    0xFFFFFFFF,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
