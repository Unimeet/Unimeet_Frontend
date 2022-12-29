import 'package:flutter/material.dart';

class ButtonComment extends StatelessWidget {
  const ButtonComment({super.key, required this.id});
  static const IconData mode_comment_outlined =
      IconData(0xf1d6, fontFamily: 'MaterialIcons');
  final int id;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {}, // commentary page
      icon: const Icon(
        mode_comment_outlined,
        color: Colors.black,
        size: 30,
      ),
    );
  }
}
