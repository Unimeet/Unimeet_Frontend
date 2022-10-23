import 'package:brasil_fields/brasil_fields.dart';

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

String validateDigit(String value, String cpf) {
  var add = 0;
  var init = int.parse(value) - 9;
  for (var i = 0; i < 9; i++) {
    add += int.parse(value[(i + init)]) * (i + 1);
  }
  return (add % 11) % 10 == int.parse(cpf[int.parse(value)]) ? "true" : "false";
}

String? cpfValidator(String? value) {
  if (value == null || value == "") {
    return "CPF não pode ser vazio";
  } else {
    bool isValid = UtilBrasilFields.isCPFValido(value);
    return isValid ? null : "CPF inválido";
  }
}

String? defaultValidator(String? value) {
  if (value == null || value == "") {
    return "Campo não pode estar vazio.";
  } else {
    return null;
  }
}
