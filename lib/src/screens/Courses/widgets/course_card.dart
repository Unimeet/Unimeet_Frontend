import 'package:flutter/material.dart';
import 'package:unimeet/src/models/course_model.dart';

class CardButton extends StatelessWidget {
  const CardButton({
    super.key,
    required this.course,
    required this.handleClickButton,
  });

  final CourseModel course;
  final VoidCallback handleClickButton;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.white,
            padding: const EdgeInsets.only(bottom: 24, top: 24),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: handleClickButton,
          child: ListTile(
            title: Text(course.name,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                )),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Text(
                course.duration,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
        ));
  }
}