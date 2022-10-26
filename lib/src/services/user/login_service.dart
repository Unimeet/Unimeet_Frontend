import 'package:dio/dio.dart';
import 'package:unimeet/src/models/user_login_model.dart';
import 'package:unimeet/src/utils/user_secure_storage.dart';

const String baseURL =
    "https://0ul7agory0.execute-api.us-east-1.amazonaws.com/Prod";

Future postLoginUser(UserLoginModel userData) async {
  try {
    final response = await Dio().post('$baseURL/api/v1/auth/login',
        data: {'email': userData.email, 'password': userData.password});
    final myMap = Map<String, dynamic>.from(response.data);

    UserSecureStorage.setEmail(myMap["email"]);
    //add other fields from request here
    return response.statusCode;
  } catch (err) {
    return err;
  }
}
