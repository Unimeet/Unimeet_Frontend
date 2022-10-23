@override
String? emailValidator(String? value) {
  if (value == null || value == "") {
    return "Email can not be empty";
  } else if (!RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^`{|}~]+@[a-zA-Z0-9]+.[a-zA-Z]+")
      .hasMatch(value.trim())) {
    return "Invalid Email Address";
  } else {
    return null;
  }
}

@override
String validateDigit(String value, String cpf) {
  var add = 0;
  var init = int.parse(value) - 9;
  for (var i = 0; i < 9; i++) {
    add += int.parse(value[(i + init)]) * (i + 1);
  }
  return (add % 11) % 10 == int.parse(cpf[int.parse(value)]) ? "true" : "false";
}

@override
String? cpfValidator(String? value) {
  if (value == null || value == "") {
    return "CPF can not be empty";
  } else {
    value = value.replaceAll(RegExp(r'/[^\d]+/g'), '');
    var r = RegExp(
        r'/^(0{11}|1{11}|2{11}|3{11}|4{11}|5{11}|6{11}|7{11}|8{11}|9{11})$/');
    if (value.length != 11 || r.hasMatch(value)) {
      return "Invalid CPF";
    }
  }
  if (validateDigit('9', value) == "true" &&
      validateDigit('10', value) == "true") {
    return null;
  }
  return "Invalid";
}
