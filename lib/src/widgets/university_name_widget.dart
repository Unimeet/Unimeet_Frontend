import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class UniversityName extends StatelessWidget {
  const UniversityName({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 428,
      height: 27,
      child: Container(
        color: Color(0xFFFFFFFF),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 38, right: 38, bottom: 4, top: 4),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
