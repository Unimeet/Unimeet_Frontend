import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      required this.buttonText,
      required this.handleClickButton,
      this.isLoading = false});

  final String buttonText;
  final VoidCallback handleClickButton;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          foregroundColor: const Color(0xFF1E1E26),
          backgroundColor: const Color(0xFF3959FC),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
          minimumSize: const Size.fromHeight(50)),
      onPressed: handleClickButton,
      child: isLoading
          ? const CircularProgressIndicator(
              color: Color(0xFFEDF2FF),
            )
          : Text(
              buttonText,
              style: const TextStyle(
                color: Color(0xFFEDF2FF),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
    );
  }
}
