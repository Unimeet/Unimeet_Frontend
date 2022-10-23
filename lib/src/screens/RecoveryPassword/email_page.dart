import 'package:flutter/material.dart';
import 'package:unimeet/src/widgets/button_widget.dart';
import 'package:unimeet/src/widgets/input_widget.dart';

class PasswordRecovery extends StatefulWidget {
  const PasswordRecovery({super.key});

  @override
  State<PasswordRecovery> createState() => _PasswordRecoveryState();
}

class _PasswordRecoveryState extends State<PasswordRecovery> {
  final TextEditingController _emailController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  bool submitted = false;
  late String email;

  void handleClickRecoveryButton() {
    setState(() {
      submitted = true;
      email = _emailController.text;
    });
    //function to receive recovery API
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E26),
      body: Container(
        margin: const EdgeInsets.only(left: 24, right: 24),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  "UNIMEET",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 64,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Input(
                controller: _emailController,
                submitted: submitted,
                labelText: "Email",
                typeInput: "email",
              ),
              const SizedBox(
                height: 40,
              ),
              Button(
                buttonText: "Recuperar Senha",
                handleClickButton: () {
                  if (_formKey.currentState!.validate()) {
                    handleClickRecoveryButton();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
