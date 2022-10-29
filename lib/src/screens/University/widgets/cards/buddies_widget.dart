import 'package:flutter/material.dart';

import '../button.dart';

class Buddies extends StatelessWidget {
  const Buddies({super.key});

  @override
  Widget build(BuildContext context) {
    return TwoTextsButton(
      titleText: 'Buddies disponíveis',
      subTitleText:
          'Entre em contato com algum veterano camarada que irá te auxiliar em suas dúvidas.',
      handleClickButton: () {
        print("do something Buddies");
      },
    );
  }
}
