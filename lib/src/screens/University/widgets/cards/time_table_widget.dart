import 'package:flutter/material.dart';

import '../button.dart';

class TimeTable extends StatelessWidget {
  const TimeTable({super.key});

  @override
  Widget build(BuildContext context) {
    return TwoTextsButton(
      titleText: 'Grade Horária',
      subTitleText: 'Como montar? Quais matérias pegar?',
      handleClickButton: () {
        print("do something TimeTable");
      },
    );
  }
}
