import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  const CardButton({
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
        title: Text(titleText,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            )),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Text(
            subTitleText,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
