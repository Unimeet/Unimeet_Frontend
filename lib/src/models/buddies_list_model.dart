class buddiesListModel {
  final String id;
  final String email;
  final String name;
  final String cpf;
  final String birthdate;
  final String cellphone;
  final String college;
  final String course;
  final String startCourseDate;
  final String aboutMe;
  final bool buddy;
  final String createdAt;
  final String updatedAt;

  buddiesListModel(
      {required this.id,
      required this.email,
      required this.name,
      required this.cpf,
      required this.birthdate,
      required this.cellphone,
      required this.college,
      required this.course,
      required this.startCourseDate,
      required this.aboutMe,
      required this.buddy,
      required this.createdAt,
      required this.updatedAt});

  @override
  String toString() {
    return '{id: $id, email: $email, name: $name, cpf: $cpf, birthdate: $birthdate, cellphone: $cellphone, college: $college, course: $course, startCourseDate: $startCourseDate, aboutMe: $aboutMe, buddy: $buddy, createdAt: $createdAt, updatedAt: $updatedAt,}';
  }

  factory buddiesListModel.fromJson(Map<String, dynamic> json) {
    return buddiesListModel(
        name: json['name'],
        course: json['course'],
        cellphone: json['cellphone'],
        updatedAt: json['updatedAt'],
        startCourseDate: json['startCourseDate'],
        id: json['id'],
        email: json['email'],
        createdAt: json['createdAt'],
        cpf: json['cpf'],
        college: json['college'],
        buddy: json['buddy'],
        birthdate: json['birthdate'],
        aboutMe: json['aboutMe']);
  }
}
