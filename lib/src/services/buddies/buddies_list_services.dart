import 'package:dio/dio.dart';
import 'package:unimeet/src/models/buddies_list_model.dart';

const String baseURL =
    "https://0ul7agory0.execute-api.us-east-1.amazonaws.com/Prod";

const String token =
    "eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ3aWxlbDEzMDU0QGNhZG9sbHMuY29tIiwibmJmIjoxNjczODM4Njc3LCJjb2xsZWdlSWQiOiJmYWZhMDYwOS1iYjNiLTQzMjktODdmYi04MTI0OTk3MWY1ZDAiLCJyb2xlcyI6W10sImlzcyI6InVuaW1lZXQiLCJleHAiOjE2NzM4NDI0NzcsImlhdCI6MTY3MzgzODY3NywidXNlcklkIjoiZDZjZjNiNGYtNzgxNS00NjgwLWI2MTctZTkzYTUxOWVjYTUxIiwiY291cnNlSWQiOiJjODliM2I5MC0wYzc2LTQ3NGUtYTZiNC1iZjdmZDcwYmQ1YzkiLCJlbWFpbCI6IndpbGVsMTMwNTRAY2Fkb2xscy5jb20ifQ.WT8x4aIZMjylJbLSaQ8oSOjvGXdfazi6oo_YjoIXd9c";

Future getBuddy() async {
  print('here');
  try {
    final dio = Dio();
    dio.options.headers["Authorization"] = "Bearer $token";
    Response response = await dio.get('$baseURL/api/v1/college/buddy/list',
        queryParameters: {'collegeId': 'fafa0609-bb3b-4329-87fb-81249971f5d0'});

    List<buddiesListModel> buddiesList = [];
    response.data['users'].forEach((user) {
      buddiesListModel buddy = buddiesListModel(
          id: user['id'],
          email: user['email'],
          name: user['name'],
          cpf: user['cpf'],
          birthdate: user['birthdate'],
          cellphone: user['cellphone'],
          college: user['college'],
          course: user['course'] ?? '0',
          startCourseDate: user['startCourseDate'],
          aboutMe: user['aboutMe'],
          buddy: user['buddy'],
          createdAt: user['createdAt'],
          updatedAt: user['updatedAt']);
      buddiesList.add(buddy);
    });
    print(buddiesList[0].name);
    return buddiesList;
  } on DioError catch (e) {
    return e.response?.statusCode;
  }
}


 /*void getHTTP() async {
    print('here');
    try {
      var response =
          await Dio().get('https://jsonplaceholder.typicode.com/todos/1');
      print(response);
    } catch (e) {
      print(e);
    }
  }*/