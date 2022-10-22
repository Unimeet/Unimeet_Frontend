import 'package:flutter/cupertino.dart';

class LabelText extends StatelessWidget {
  const LabelText({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Color(0xFFEDF2FF),
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
