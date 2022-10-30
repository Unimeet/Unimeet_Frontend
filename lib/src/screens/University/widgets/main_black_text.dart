import 'package:flutter/material.dart';

class MainBlackText extends StatelessWidget {
  const MainBlackText({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ));
  }
}