import 'package:flutter/material.dart';
import 'package:unimeet/src/screens/Courses/widgets/course_card.dart';
import 'package:unimeet/src/screens/Courses/widgets/course_new.dart';
import 'package:unimeet/src/widgets/custom_appbar.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage({super.key});

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  List<Course> courses = [
    Course(name: "Engenharia de Comp", description: "testeste"),
    Course(name: "Engenharia Biomédica", description: "testeste"),
    Course(name: "Engenharia dos materiais", description: "testeste"),
    Course(name: "Ciencias da computacao", description: "testeste"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Cursos Oferecidos"),
      backgroundColor: const Color(0xFF1E1E26),
      body: Container(
        margin: const EdgeInsets.only(left: 24, right: 24),
        child: Container(
          margin: const EdgeInsets.only(top: 20),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            children: [
              ListView(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                children: courses.map((course) {
                  return CardButton(
                      course: course,
                      handleClickButton: () => print("redirect to the course"));
                }).toList(),
              ),
              CourseAdd(handleClickButton: () {
                Navigator.pushNamed(context, '/create-course');
              }),
            ],
          ),
        ),
      ),
    );
  }
}
