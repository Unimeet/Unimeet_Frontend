import 'package:flutter/material.dart';
import 'package:unimeet/src/models/user_register_model.dart';
import 'package:unimeet/src/widgets/button_widget.dart';
import 'package:unimeet/src/widgets/input_widget.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final String register = 'Cadastrar';

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _cpfController = TextEditingController();
  final TextEditingController _birthdayController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool submitted = false;
  late String name;
  late String email;
  late String cpf;
  late String birthday;
  late String password;
  late String confirmPassword;

  void handleClickRegisterButton() {
    setState(() {
      submitted = true;
      name = _nameController.text;
      email = _emailController.text;
      cpf = _cpfController.text;
      birthday = _birthdayController.text;
      password = _passwordController.text;
      confirmPassword = _confirmPasswordController.text;
    });

    UserRegisterModel userData =
        UserRegisterModel(name, email, cpf, birthday, password);
    //need to pass the require route to data base right here
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
                height: 40,
              ),
              Input(
                controller: _nameController,
                submitted: submitted,
                labelText: "Nome",
                typeInput: "text",
              ),
              const SizedBox(
                height: 16,
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
                controller: _cpfController,
                submitted: submitted,
                labelText: "CPF",
                typeInput: "text",
              ),
              const SizedBox(
                height: 16,
              ),
              Input(
                controller: _birthdayController,
                submitted: submitted,
                labelText: "Data de nascimento",
                typeInput: "text", // TODO: FIX THE THE TYPE INPUT
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
                height: 16,
              ),
              Input(
                controller: _confirmPasswordController,
                submitted: submitted,
                labelText: "Confirme a senha",
                typeInput: "password",
              ),
              const SizedBox(
                height: 40,
              ),
              Button(
                buttonText: register,
                handleClickButton: () {
                  if (_formKey.currentState!.validate()) {
                    handleClickRegisterButton();
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
