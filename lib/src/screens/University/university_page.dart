import 'package:flutter/material.dart';
import 'package:unimeet/src/screens/University/widgets/cards/buddies_widget.dart';
import 'package:unimeet/src/screens/University/widgets/cards/courses_widget.dart';
import 'package:unimeet/src/screens/University/widgets/cards/supplementaries_hours_widget.dart';
import 'package:unimeet/src/screens/University/widgets/cards/time_table_widget.dart';
import 'package:unimeet/src/widgets/button_widget.dart';
import 'package:unimeet/src/widgets/custom_appbar.dart';
import 'package:unimeet/src/screens/University/widgets/button.dart';

class University extends StatefulWidget {
  const University({super.key});

  @override
  State<University> createState() => _UniversityState();
}

class _UniversityState extends State<University> {
  final _formKey = GlobalKey<FormState>();

  bool editing = false;

  void setEditUniversity() {
    setState(() {
      editing = !editing;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E26),
      appBar: const CustomAppBar(title: "UNIFESP"),
      body: Container(
        margin: const EdgeInsets.only(left: 24, right: 24),
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          key: _formKey,
          children: [
            const SizedBox(height: 16),
            const Courses(),
            const SizedBox(height: 16),
            const SupplementariesHours(),
            const SizedBox(height: 16),
            const TimeTable(),
            const SizedBox(height: 16),
            const Buddies(),
            const SizedBox(height: 16),
            Button(
                buttonText: "Exibir Perfil",
                handleClickButton: () {
                  Navigator.pushNamed(context, '/profile');
                })
          ],
        ),
      ),
    );
  }
}
