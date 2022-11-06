import 'package:flutter/material.dart';

import '../button.dart';

class Courses extends StatelessWidget {
  const Courses({super.key});

  @override
  Widget build(BuildContext context) {
    return TwoTextsButton(
      titleText: 'Cursos',
      subTitleText: 'Cursos oferecidos pela faculdade.',
      handleClickButton: () {
        Navigator.pushNamed(context, '/courses');
      },
    );
  }
}
