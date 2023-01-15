import 'package:unimeet/src/screens/Courses/widgets/course_card.dart';

class CourseModel {
  final String courseId;
  final String name;
  final String duration;
  final int studentsNumber;
  final String collegeId;

  CourseModel({
   required this.courseId,
   required this.name,
   required this.duration, 
   required this.studentsNumber, 
   required this.collegeId});

  @override
  String toString() {
    return '{courseId: $courseId, name: $name, duration: $duration, studentsNumber: $studentsNumber, collegeId: $collegeId}';
  }

  factory CourseModel.fromJson(Map<String, dynamic> json) {
    return CourseModel(
      courseId: json['courseId'],
      name: json['name'],
      duration: json['duration'],
      studentsNumber: json['studentsNumber'],
      collegeId: json['collegeId'],
    );
  }
}