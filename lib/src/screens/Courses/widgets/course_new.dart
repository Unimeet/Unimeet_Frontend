import 'package:flutter/material.dart';

class CourseAdd extends StatelessWidget {
  const CourseAdd({
    super.key,
    required this.handleClickButton,
  });

  final VoidCallback handleClickButton;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(const Size(380, 125)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            )),
            side: MaterialStateProperty.all<BorderSide>(
              const BorderSide(color: Colors.white),
            )),
        onPressed: handleClickButton,
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 40,
        ));
  }
}
