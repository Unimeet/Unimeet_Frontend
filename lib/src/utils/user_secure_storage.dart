import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class UserSecureStorage {
  static const _storage = FlutterSecureStorage();

  static const _keyName = 'name';
  static const _keyPhone = 'phone';
  static const _keyProfileImage = 'image_profile';
  static const _keyEmail = 'email';
  static const _keyAboutMe = 'about_me';
  static const _keyCollege = 'college';
  static const _keyCourse = 'course';
  static const _keyMyCourses = 'my_courses';
  static const _keyUserId = 'user_id';
  static const _keyToken = 'token';
  static const _keyIsBuddy = 'isBuddy';

  static Future setName(String name) async =>
      await _storage.write(key: _keyName, value: name);

  static Future<String?> getName() async => await _storage.read(key: _keyName);

  static Future setPhone(String phone) async =>
      await _storage.write(key: _keyPhone, value: phone);

  static Future<String?> getPhone() async =>
      await _storage.read(key: _keyPhone);

  static Future setProfileImage(String profileImage) async =>
      await _storage.write(key: _keyProfileImage, value: profileImage);

  static Future<String?> getProfileImage() async =>
      await _storage.read(key: _keyProfileImage);

  static Future setEmail(String email) async =>
      await _storage.write(key: _keyEmail, value: email);

  static Future<String?> getEmail() async =>
      await _storage.read(key: _keyEmail);

  static Future setAboutMe(String aboutMe) async =>
      await _storage.write(key: _keyAboutMe, value: aboutMe);

  static Future<String?> getAboutMe() async =>
      await _storage.read(key: _keyAboutMe);

  static Future setCollege(String college) async =>
      await _storage.write(key: _keyCollege, value: college);

  static Future<String?> getCollege() async =>
      await _storage.read(key: _keyCollege);

  static Future setCourse(String course) async =>
      await _storage.write(key: _keyCourse, value: course);

  static Future<String?> getCourse() async =>
      await _storage.read(key: _keyCourse);

  static Future setMyCourses(String myCourses) async =>
      await _storage.write(key: _keyMyCourses, value: myCourses);

  static Future<String?> getMyCourses() async =>
      await _storage.read(key: _keyMyCourses);

  static Future setUserId(String userId) async =>
      await _storage.write(key: _keyUserId, value: userId);

  static Future<String?> getUserId() async =>
      await _storage.read(key: _keyUserId);

  static Future setToken(String token) async =>
      await _storage.write(key: _keyToken, value: token);

  static Future<String?> getToken() async =>
      await _storage.read(key: _keyToken);

  static Future setIsBuddy(String isBuddy) async =>
      await _storage.write(key: _keyIsBuddy, value: isBuddy);

  static Future<String?> getIsBuddy() async =>
      await _storage.read(key: _keyIsBuddy);
}
