import 'package:flutter/material.dart';
import 'package:unimeet/src/screens/University/widgets/label_black_text.dart';
import 'package:unimeet/src/screens/University/widgets/main_black_text.dart';

class TwoTextsButton extends StatelessWidget {
  const TwoTextsButton({
    super.key,
    required this.titleText,
    required this.subTitleText,
    required this.handleClickButton,
  });

  final String titleText;
  final String subTitleText;
  final VoidCallback handleClickButton;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.white,
        padding: const EdgeInsets.only(bottom: 24, top: 24),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onPressed: handleClickButton,
      child: ListTile(
        title: MainBlackText(title: titleText),
        subtitle: LabelBlackText(title: subTitleText),
      ),
    );
  }
}
