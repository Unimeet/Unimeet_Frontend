import 'package:flutter/material.dart';
import 'package:unimeet/src/widgets/custom_appbar.dart';
import 'package:unimeet/src/screens/University/widgets/button.dart';

class University extends StatelessWidget {
  const University({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E26),
      appBar: const CustomAppBar(title: "UNIFESP"),
      body: Container(
        margin: const EdgeInsets.only(left: 24, right: 24),
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const SizedBox(height: 16),
            const TwoTextsButton(
              titleText: 'Cursos',
              subTitleText: 'Cursos oferecidos pela faculdade.',
            ),
            const SizedBox(height: 16),
            const TwoTextsButton(
              titleText: 'Horas Complementares',
              subTitleText: 'O que são as horas complementares',
            ),
            const SizedBox(height: 16),
            const TwoTextsButton(
              titleText: 'Grade Horária',
              subTitleText: 'Como montar? Quais matérias pegar?',
            ),
            const SizedBox(height: 16),
            const TwoTextsButton(
              titleText: 'Buddies disponíveis',
              subTitleText:
                  'Entre em contato com algum veterano camarada que irá te auxiliar em suas dúvidas.',
            ),
          ],
        ),
      ),
    );
  }
}
