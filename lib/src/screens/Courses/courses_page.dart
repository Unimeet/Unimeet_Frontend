import 'package:flutter/material.dart';
import 'package:unimeet/src/screens/Courses/widgets/course_card.dart';
import 'package:unimeet/src/screens/Courses/widgets/course_new.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage({super.key});

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E26),
      body: Container(
        margin: const EdgeInsets.only(left: 24, right: 24),
        child: Form(
          child: ListView(
            children: [
              const SizedBox(height: 16),
              CardButton(
                  titleText: "Nome do Curso",
                  subTitleText: "infos gerais",
                  handleClickButton: () => print("redirect to the course")),
              const SizedBox(height: 16),
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
