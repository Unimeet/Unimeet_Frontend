import 'package:flutter/material.dart';
import 'package:unimeet/src/models/user_login_model.dart';
import 'package:unimeet/src/services/user/login_service.dart';
import 'package:unimeet/src/utils/user_secure_storage.dart';
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
  final _formKey = GlobalKey<FormState>();

  bool submitted = false;
  bool error = false;
  bool isLoading = false;
  late String email;
  late String password;

  void handleClickLoginButton() {
    setState(() {
      submitted = true;
      password = _passwordController.text;
      email = _emailController.text;
      isLoading = true;
    });

    UserLoginModel userData = UserLoginModel(email, password);
    postLoginUser(userData).then((status) => status == 200
        ? {Navigator.pushNamed(context, '/dashboard')}
        : setState(() {
            error = true;
            isLoading = false;
          }));
  }

  void handleClickRegisterButton() {
    Navigator.pushNamed(context, '/register');
  }

  void handleClickForgotPasswordButton() {
    Navigator.pushNamed(context, '/password-recovery');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E26),
      body: Container(
        margin: const EdgeInsets.only(left: 24, right: 24),
        child: Form(
          key: _formKey,
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
              if (error == true)
                const Padding(
                  padding: EdgeInsets.only(top: 8, left: 4),
                  child: Text("Dados inválidos tente novamente.",
                      style: TextStyle(color: Colors.red)),
                ),
              const SizedBox(
                height: 40,
              ),
              Button(
                buttonText: login,
                isLoading: isLoading,
                handleClickButton: () {
                  if (_formKey.currentState!.validate() && isLoading == false) {
                    handleClickLoginButton();
                  }
                },
              ),
              const SizedBox(
                height: 16,
              ),
              Button(
                buttonText: register,
                handleClickButton: () {
                  handleClickRegisterButton();
                },
              ),
              const SizedBox(height: 8),
              TextButton(
                onPressed: () {
                  handleClickForgotPasswordButton();
                },
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
      ),
    );
  }
}
