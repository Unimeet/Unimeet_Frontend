import 'package:dio/dio.dart';

const String baseURL =
    "https://0ul7agory0.execute-api.us-east-1.amazonaws.com/Prod";

const String token =
    "eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ3aWxlbDEzMDU0QGNhZG9sbHMuY29tIiwibmJmIjoxNjczODIxMDMxLCJjb2xsZWdlSWQiOiJmYWZhMDYwOS1iYjNiLTQzMjktODdmYi04MTI0OTk3MWY1ZDAiLCJyb2xlcyI6W10sImlzcyI6InVuaW1lZXQiLCJleHAiOjE2NzM4MjQ4MzEsImlhdCI6MTY3MzgyMTAzMSwidXNlcklkIjoiZDZjZjNiNGYtNzgxNS00NjgwLWI2MTctZTkzYTUxOWVjYTUxIiwiY291cnNlSWQiOiJjODliM2I5MC0wYzc2LTQ3NGUtYTZiNC1iZjdmZDcwYmQ1YzkiLCJlbWFpbCI6IndpbGVsMTMwNTRAY2Fkb2xscy5jb20ifQ.a3ofKV1X315rXkVBLgs9apnzumXkp2FdLypA8Bh44FE";

Future getFeedMessages(String courseId) async {
  try {
    final dio = Dio();
    dio.options.headers["Authorization"] = "Bearer $token";
    final response = await dio.get('$baseURL/api/v1/feed/find/feed',
        queryParameters: {'courseId': courseId});

    return response.data['posts'];
  } on DioError catch (e) {
    return e.response?.statusCode;
  }
}
