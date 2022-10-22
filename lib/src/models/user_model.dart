import 'package:unimeet/src/models/user_auth.dart';

class UserModel implements UserAuthModel {
  String email;
  String name;
  String phone;
  String aboutMe;
  String college;
  String course;
  List<String> courses;

  UserModel(this.email, this.name, this.phone, this.aboutMe, this.college,
      this.course, this.courses, this.bearerToken, this.userID);

  @override
  String bearerToken;

  @override
  String userID;
}
