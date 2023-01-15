import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:unimeet/src/models/course_model.dart';
import 'package:unimeet/src/screens/CourseInfo/course_info_page.dart';
import 'package:unimeet/src/screens/Courses/widgets/course_card.dart';
import 'package:unimeet/src/screens/Courses/widgets/course_new.dart';
import 'package:unimeet/src/widgets/custom_appbar.dart';

import '../../services/courses/courses_service.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage({super.key});

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  List<CourseModel> _courses = [];

  @override
  void initState() {
    super.initState();
    EasyLoading.instance
    ..maskType = EasyLoadingMaskType.black
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle;
    EasyLoading.show(status: "Carregando Cursos...");
    getAllCourses().then((courses) {
      setState(() {
        _courses = courses;
      });
      EasyLoading.dismiss();
    });
  }

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
                children: _courses.map((course) {
                  return CardButton(
                      course: course,
                      handleClickButton: () {
                        Navigator.pushNamed(
                          context,
                          '/course-info',
                          arguments: ScreenArguments(
                              course.name, course.duration, course.courseId),
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
