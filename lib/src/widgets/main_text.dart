import 'package:flutter/cupertino.dart';

class MainText extends StatelessWidget {
  const MainText({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: const TextStyle(
          color: Color(0xFFFFFFFF),
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ));
  }
}
