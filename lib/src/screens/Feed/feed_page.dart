import 'package:flutter/material.dart';
import 'package:unimeet/src/widgets/custom_appbar.dart';
import 'package:unimeet/src/widgets/university_name_widget.dart';

class Feed extends StatelessWidget {
  const Feed({super.key});

  @override
  Widget build(BuildContext context) {
    const String appBarTitle = "Engenharia da computação";
    const String universityName = "Universidade Federal de São Paulo - UNIFESP";

    return Scaffold(
      appBar: const CustomAppBar(title: appBarTitle),
      backgroundColor: const Color(0xFF1E1E26),
      body: Container(
        child: UniversityName(title: universityName),
      ),
    );
  }
}
