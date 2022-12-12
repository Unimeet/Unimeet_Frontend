import 'package:dio/dio.dart';
import 'package:unimeet/src/models/complementary_hours_model.dart';
import 'package:unimeet/src/screens/University/complementary_hours.dart';
import 'package:unimeet/src/utils/user_secure_storage.dart';

const String baseURL =
    "https://0ul7agory0.execute-api.us-east-1.amazonaws.com/Prod";

Future editComplementaryHours(
    ComplementaryHoursModel complementaryHoursData) async {
  try {
    final response = await Dio().patch(
      '$baseURL/api/v1/college/additionalHours',
      data: {'description': complementaryHoursData.description},
    );

    if (response.statusCode == 200) {
      print(response.data);
      //response.data["email"].toString()
    }

    //add other fields from request here
    return response.statusCode;
  } on DioError catch (e) {
    return e.response?.statusCode;
  }
}
