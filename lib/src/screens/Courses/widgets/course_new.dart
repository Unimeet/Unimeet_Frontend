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
      style: OutlinedButton.styleFrom(
          backgroundColor: const Color(0xFF1E1E26),
          padding: const EdgeInsets.only(bottom: 24, top: 24),
          side: const BorderSide(width: 2.0, color: Colors.white)),
      onPressed: handleClickButton,
      child: const Text("adicionar"),
    );
  }
}
