import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:unimeet/src/models/user_register_model.dart';
import 'package:unimeet/src/widgets/button_widget.dart';
import 'package:unimeet/src/widgets/cellphone_input_widget.dart';
import 'package:unimeet/src/widgets/cpf_input_widget.dart';
import 'package:unimeet/src/widgets/date_input_widget.dart';
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
  final TextEditingController _cellPhoneController = TextEditingController();
  final TextEditingController _birthdayController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool submitted = false;
  bool checkPassword = false;
  late String name;
  late String email;
  late String cellphone;
  late String cpf;
  late String birthday;
  late String password;
  late String confirmPassword;

  void handleClickRegisterButton() {
    setState(() {
      submitted = true;
      checkPassword =
          _passwordController.text == _confirmPasswordController.text
              ? true
              : false;
      name = _nameController.text;
      email = _emailController.text;
      cpf = UtilBrasilFields.removeCaracteres(_cpfController.text);
      cellphone = UtilBrasilFields.obterTelefone(_cellPhoneController.text);
      birthday = _birthdayController.text;
      password = _passwordController.text;
      confirmPassword = _confirmPasswordController.text;
    });
    if (checkPassword == true) {
      UserRegisterModel userData =
          UserRegisterModel(name, email, cellphone, cpf, birthday, password);
      Navigator.pushNamed(context, "/create_profile", arguments: userData);
    }
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
                padding: EdgeInsets.only(top: 48),
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
              CellPhoneInput(
                controller: _cellPhoneController,
                submitted: submitted,
                labelText: "Telefone",
              ),
              const SizedBox(
                height: 16,
              ),
              CpfInput(
                controller: _cpfController,
                submitted: submitted,
                labelText: "CPF",
              ),
              const SizedBox(
                height: 16,
              ),
              DateInput(
                controller: _birthdayController,
                submitted: submitted,
                labelText: "Data de nascimento",
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
              if (checkPassword == false && submitted == true)
                const Padding(
                  padding: EdgeInsets.only(top: 8, left: 4),
                  child: Text("Senhas não coincidem, tente novamente.",
                      style: TextStyle(color: Colors.red)),
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
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
