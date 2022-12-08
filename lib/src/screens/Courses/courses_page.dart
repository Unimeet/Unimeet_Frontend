import 'package:flutter/material.dart';
import 'package:unimeet/src/screens/CourseInfo/course_page.dart';
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
    Course(name: "Engenharia de Comp", description: "testeste", id: '1'),
    Course(name: "Engenharia Biomédica", description: "testeste", id: '2'),
    Course(name: "Engenharia dos materiais", description: "testeste", id: '3'),
    Course(name: "Ciencias da computacao", description: "testeste", id: '4'),
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
                      handleClickButton: () {
                        Navigator.pushNamed(
                          context,
                          '/course-info',
                          arguments: ScreenArguments(
                              course.name, course.description, course.id),
                        );
                      });
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
