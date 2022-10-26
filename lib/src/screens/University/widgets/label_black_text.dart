import 'package:flutter/material.dart';

class LabelBlackText extends StatelessWidget {
  const LabelBlackText({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
