import 'package:dio/dio.dart';
import 'package:unimeet/src/models/user_register_model.dart';

const String baseURL =
    "https://0ul7agory0.execute-api.us-east-1.amazonaws.com/Prod";

Future postRegisterUser(UserRegisterModel userData) async {
  final response = await Dio().post('$baseURL/api/v1/user/create', data: {
    'email': userData.email,
    'password': userData.password,
    'name': userData.name,
    'cpf': userData.cpf,
    'birthdate': userData.birthday
  });

  //add other fields from request here
  return response.statusCode;
}
