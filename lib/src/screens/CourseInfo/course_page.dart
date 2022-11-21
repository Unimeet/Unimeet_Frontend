import 'package:flutter/material.dart';
import 'package:unimeet/src/widgets/main_text.dart';
import '../../widgets/custom_appbar.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E26),
      appBar: const CustomAppBar(title: "Informações do curso"),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: ListView(
          children: const [
            SizedBox(height: 16),
            MainText(title: 'Tempo médio de conclusão'),
            SizedBox(height: 16),
            MainText(title: 'Estágio obrigatório'),
            SizedBox(height: 16),
            MainText(title: 'TCC obrigatório'),
            SizedBox(height: 16),
            MainText(title: 'Matérias obrigatórias'),
            SizedBox(height: 16),
            MainText(title: 'Descrição do curso'),
          ],
        ),
      ),
    );
  }
}
