import 'package:dio/dio.dart';
import 'package:unimeet/src/models/course_model.dart';
import 'package:unimeet/src/utils/user_secure_storage.dart';

Dio dio = Dio();
const String baseURL =
    "https://0ul7agory0.execute-api.us-east-1.amazonaws.com/Prod";

String token = UserSecureStorage.getToken() as String;

Future getAllCourses() async {
    try {
        dio.options.headers['Authorization'] = "Bearer $token";
        Response response = await dio.get('$baseURL/api/v1/course/find/all');
        var courses = response.data as Map<String, dynamic>;
        int count = courses["count"];
        List<CourseModel> courseList = (courses["courses"] as List)
            .map((c) => CourseModel.fromJson(c))
            .toList();
        return courseList;
    } catch (e) {
        print(e);
    }
}