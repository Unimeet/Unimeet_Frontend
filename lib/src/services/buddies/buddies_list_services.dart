import 'package:dio/dio.dart';
import 'package:unimeet/src/models/buddies_list_model.dart';

Dio dio = Dio();
const String baseURL =
    "https://0ul7agory0.execute-api.us-east-1.amazonaws.com/Prod";

const String token =
    "eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ3aWxlbDEzMDU0QGNhZG9sbHMuY29tIiwibmJmIjoxNjczODE3MDIxLCJjb2xsZWdlSWQiOiJmYWZhMDYwOS1iYjNiLTQzMjktODdmYi04MTI0OTk3MWY1ZDAiLCJyb2xlcyI6W10sImlzcyI6InVuaW1lZXQiLCJleHAiOjE2NzM4MjA4MjEsImlhdCI6MTY3MzgxNzAyMSwidXNlcklkIjoiZDZjZjNiNGYtNzgxNS00NjgwLWI2MTctZTkzYTUxOWVjYTUxIiwiY291cnNlSWQiOiJjODliM2I5MC0wYzc2LTQ3NGUtYTZiNC1iZjdmZDcwYmQ1YzkiLCJlbWFpbCI6IndpbGVsMTMwNTRAY2Fkb2xscy5jb20ifQ.r5jdZ11_3oL1wnpNPoQROmYC3NqprtztFN0CTzWPoCI";

Future getBuddy() async {
  print('here');
  try {
    dio.options.headers["Authorization"] = "Bearer $token";
    Response response = await dio.get('$baseURL/api/v1/college/buddy/list',
        queryParameters: {'collegeId': 'fafa0609-bb3b-4329-87fb-81249971f5d0'});

    var users = response.data as Map<String, dynamic>;
    List<buddiesListModel> buddiesList = (users["users"] as List)
        .map((c) => buddiesListModel.fromJson(c))
        .toList();
    print(buddiesList);
    return buddiesList;
  } catch (e) {
    print(e);
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