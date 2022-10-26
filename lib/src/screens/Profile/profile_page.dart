import 'package:flutter/material.dart';
import 'package:unimeet/src/screens/Profile/widgets/label_text.dart';
import 'package:unimeet/src/screens/Profile/widgets/main_text.dart';
import 'package:unimeet/src/widgets/custom_appbar.dart';
import 'package:unimeet/src/widgets/button_widget.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E26),
      appBar: const CustomAppBar(title: "Minhas informações"),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 24),
        child: Button(
          buttonText: "Editar Informações",
          handleClickButton: () =>
              {Navigator.pushNamed(context, '/university')},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            Center(
              child: Container(
                width: 166,
                height: 166,
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(30)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: SizedBox.fromSize(
                    size: const Size.fromRadius(30),
                    child: Image.network(
                      'https://cdn.shopify.com/s/files/1/0001/9202/0527/products/quadros-democrart-gustavo-jacob-ondas-paisagem-de-baixa-luz-beleza-incontavel-galeria-de-arte-obras-de-arte_7ba14f0d-e0e9-4dc2-adc0-2121e3fa734e_875x.jpg?v=1528209171',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Center(
                child: Text(
              "Luigi G. Fonseca",
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )),
            const SizedBox(height: 36),
            const LabelText(
              title: 'Curso',
            ),
            const SizedBox(height: 8),
            const MainText(
              title: 'Engenharia de Materiais',
            ),
            const SizedBox(height: 24),
            const LabelText(
              title: 'Faculdade',
            ),
            const SizedBox(height: 8),
            const MainText(
              title: 'Unifesp - Universidade Federal de São Paulo',
            ),
            const SizedBox(height: 24),
            const LabelText(
              title: 'Sobre mim',
            ),
            const SizedBox(height: 8),
            const MainText(
              title:
                  'Estou em busca de um conhecimento interdisciplinar até me encontrar em uma área específica.',
            ),
            const SizedBox(height: 24),
            const LabelText(
              title: 'Contato',
            ),
            const SizedBox(height: 8),
            const MainText(
              title: '(12) 994583218',
            ),
            const SizedBox(height: 100)
          ],
        ),
      ),
    );
  }
}
