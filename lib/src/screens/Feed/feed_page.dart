import 'package:flutter/material.dart';
import 'package:unimeet/src/screens/Feed/widgets/message_widget.dart';
import 'package:unimeet/src/widgets/custom_appbar.dart';
import 'package:unimeet/src/widgets/profile_pic.dart';
import 'package:unimeet/src/widgets/university_name_widget.dart';

class Feed extends StatelessWidget {
  const Feed({super.key});

  @override
  Widget build(BuildContext context) {
    const String appBarTitle = "Engenharia da computação";
    const String universityName = "Universidade Federal de São Paulo - UNIFESP";

    return const Scaffold(
      appBar: CustomAppBar(title: appBarTitle),
      backgroundColor: Color(0xFF1E1E26),
      body: MessageWidget(
        profilePic:
            "https://www.altoastral.com.br/media/uploads/legacy/2016/07/AAT001-P001-89335-1-m-Divulgacao_1.jpg",
        course: 'Ciência da Computação',
        date: '13/09/2022',
        hour: '14:43',
        name: 'Luigi Gottardello Fonseca',
        text:
            "Quanto tempo leva para concluir o curso de engenharia da computação? Estou querendo migrar pois não me senti a vontade em E. Materiais.",
      ),
    );
  }
}
