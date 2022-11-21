import 'package:flutter/material.dart';
import 'package:unimeet/src/screens/CourseInfo/Widgets/description.dart';
import '../../widgets/custom_appbar.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E26),
      appBar: const CustomAppBar(title: "Ciência da computação"),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: ListView(
          children: const [
            SizedBox(height: 16),
            DescriptionBox(
              title: "Tempo médio de conclusão",
              description: "3 anos",
            ),
            DescriptionBox(
              title: "Estágio obrigatório",
              description: "Não",
            ),
            DescriptionBox(
              title: "Trabalho de Conclusão de Curso",
              description: "Não obrigatório",
            ),
            DescriptionBox(
              title: "Matérias obrigatórias",
              description:
                  "(teste) As do BCT, mais eletivas de vários eixos que podem ser escolhidos. Ccomp e ecomp compartilham a maioria, mas é preciso ficar atento na ementa",
            ),
            DescriptionBox(
              title: "Descrição do curso",
              description:
                  "Muito chatinho, teorico, maçante, triste, boa sorte pois eu estou quase me retirando",
            ),
          ],
        ),
      ),
    );
  }
}
