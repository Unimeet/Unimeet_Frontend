import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({
    super.key,
    required this.controller,
    required this.labelText,
    required this.submitted,
    this.typeInput = "email",
  });

  final TextEditingController controller;
  final String labelText;
  final String typeInput;
  final bool submitted;

  String? emailValidator(String? value) {
    if (value == null || value == "") {
      return "Campo de email não pode ser vazio";
    } else if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^`{|}~]+@[a-zA-Z0-9]+.[a-zA-Z]+")
        .hasMatch(value.trim())) {
      return "Endereço de email inválido";
    } else {
      return null;
    }
  }

  String? passwordValidator(String? value) {
    if (value == null || value == "") {
      return "Campo de senha não pode ser vazio";
    } else if (!RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$")
        .hasMatch(value.trim())) {
      return "Insira uma senha com pelo menos uma letra maiúscula, uma minúscula e um número";
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: typeInput == "password" ? true : false,
      autovalidateMode:
          submitted ? AutovalidateMode.always : AutovalidateMode.disabled,
      validator: (inputValue) {
        if (typeInput == "email") {
          return emailValidator(inputValue);
        } else {
          return passwordValidator(inputValue);
        }
      },
      controller: controller,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey, width: 1.0),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.purple, width: 1.0),
          borderRadius: BorderRadius.circular(12),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey, width: 1.0),
          borderRadius: BorderRadius.circular(12),
        ),
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.white),
      ),
      style: const TextStyle(
        color: Color(0xFFFFFFFF),
        fontSize: 20,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
