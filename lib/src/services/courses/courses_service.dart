import 'package:dio/dio.dart';
import 'package:unimeet/src/models/course_model.dart';

Dio dio = Dio();
const String baseURL =
    "https://0ul7agory0.execute-api.us-east-1.amazonaws.com/Prod";

const String token =
    "eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ3aWxlbDEzMDU0QGNhZG9sbHMuY29tIiwibmJmIjoxNjczODIxMDMxLCJjb2xsZWdlSWQiOiJmYWZhMDYwOS1iYjNiLTQzMjktODdmYi04MTI0OTk3MWY1ZDAiLCJyb2xlcyI6W10sImlzcyI6InVuaW1lZXQiLCJleHAiOjE2NzM4MjQ4MzEsImlhdCI6MTY3MzgyMTAzMSwidXNlcklkIjoiZDZjZjNiNGYtNzgxNS00NjgwLWI2MTctZTkzYTUxOWVjYTUxIiwiY291cnNlSWQiOiJjODliM2I5MC0wYzc2LTQ3NGUtYTZiNC1iZjdmZDcwYmQ1YzkiLCJlbWFpbCI6IndpbGVsMTMwNTRAY2Fkb2xscy5jb20ifQ.a3ofKV1X315rXkVBLgs9apnzumXkp2FdLypA8Bh44FE";

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
