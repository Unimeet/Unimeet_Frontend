import 'package:flutter/material.dart';
import 'package:unimeet/src/screens/CourseInfo/widgets/description.dart';
import 'package:unimeet/src/screens/CourseInfo/widgets/card_widget.dart';
import '../../widgets/custom_appbar.dart';

class ScreenArguments {
  final String title;
  final String message;
  final String id;

  ScreenArguments(this.title, this.message, this.id);
}

class CourseInfoPage extends StatelessWidget {
  const CourseInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E26),
      appBar: CustomAppBar(title: args.title),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: ListView(
          children: [
            const SizedBox(height: 16),
            const DescriptionBox(
              title: "Tempo médio de conclusão",
              description: "3 anos",
            ),
            const DescriptionBox(
              title: "Estágio obrigatório",
              description: "Não",
            ),
            const DescriptionBox(
              title: "Trabalho de Conclusão de Curso",
              description: "Não obrigatório",
            ),
            const DescriptionBox(
              title: "Matérias obrigatórias",
              description:
                  "(teste) As do BCT, mais eletivas de vários eixos que podem ser escolhidos. Ccomp e ecomp compartilham a maioria, mas é preciso ficar atento na ementa",
            ),
            const DescriptionBox(
              title: "Descrição do curso",
              description:
                  "Muito chatinho, teorico, maçante, triste, boa sorte pois eu estou quase me retirando",
            ),
            CardWidget(
              title: "Entrar",
              handleClickButton: () {
                Navigator.pushNamed(
                  context,
                  '/feed',
                  arguments: ScreenArguments(args.title, args.message, args.id),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
