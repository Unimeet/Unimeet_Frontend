import 'package:flutter/material.dart';
import 'package:unimeet/src/screens/University/widgets/card_widget.dart';
import 'package:unimeet/src/widgets/button_widget.dart';
import 'package:unimeet/src/widgets/custom_appbar.dart';

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
            CardWidget(
              title: "Cursos",
              subtitle: "Cursos oferecidos pela universidade.",
              handleClickButton: () {},
            ),
            const SizedBox(height: 16),
            CardWidget(
              title: "Horas complementares",
              subtitle: "O que são as horas complementares? Quais são elas",
              handleClickButton: () {},
            ),
            const SizedBox(height: 16),
            CardWidget(
              title: "Grade horária",
              subtitle: "Como montar? Quais matérias pegar?",
              handleClickButton: () {},
            ),
            const SizedBox(height: 16),
            CardWidget(
              title: "Buddies disponíveis",
              subtitle:
                  "Entre em contato com algum veterano camarada que irá te auxiliar em suas dúvidas",
              handleClickButton: () {},
            ),
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
