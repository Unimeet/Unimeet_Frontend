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
}
