import 'package:flutter/cupertino.dart';

class LabelBlackText extends StatelessWidget {
  const LabelBlackText({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Color.fromARGB(255, 0, 0, 0),
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
