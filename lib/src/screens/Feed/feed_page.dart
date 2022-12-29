import 'package:flutter/material.dart';
import 'package:unimeet/src/widgets/custom_appbar.dart';
import 'package:unimeet/src/widgets/profile_pic.dart';
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
      body: Card(
          child: Padding(
        padding:
            const EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                ProfilePic(
                  imageURL:
                      "https://www.altoastral.com.br/media/uploads/legacy/2016/07/AAT001-P001-89335-1-m-Divulgacao_1.jpg",
                  size: 40,
                  allowBorder: false,
                ),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Luigi G Fonseca",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Engenharia de Materiais",
                      style: TextStyle(fontSize: 14, color: Color(0xFF5F5F5F)),
                    )
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Text(
                      "01/10/2022",
                      style: TextStyle(fontSize: 14, color: Color(0xFF5F5F5F)),
                    ),
                    Text(
                      "14:24",
                      style: TextStyle(fontSize: 14, color: Color(0xFF5F5F5F)),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Quanto tempo leva para concluir o curso de engenharia da computação? Estou querendo migrar pois não me senti a vontade em E. Materiais.",
            ),
            SizedBox(height: 12),
            Row(
              children: [Text("teste"), Text("test")],
            )
          ],
        ),
      )),
    );
  }
}
