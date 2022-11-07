import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget(
      {super.key,
      this.title = "",
      this.subtitle = "",
      required this.handleClickButton});

  final String title;
  final VoidCallback handleClickButton;
  final String subtitle;

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
        title: Text(title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            )),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Text(
            subtitle,
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
