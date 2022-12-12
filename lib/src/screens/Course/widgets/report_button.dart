import 'package:flutter/material.dart';

class ReportButton extends StatelessWidget {
  const ReportButton(
      {super.key,
      this.title = "",
      this.subtitle = "",
      required this.handleClickButton});

  final String title;
  final VoidCallback handleClickButton;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: handleClickButton,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        fixedSize: const Size(20, 20),
        shape: const CircleBorder(),
      ),
      child: const Text(
        '!',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}
