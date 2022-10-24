import 'package:flutter/material.dart';
import 'package:unimeet/src/utils/validators.dart';

class Input extends StatelessWidget {
  const Input({
    super.key,
    required this.controller,
    required this.labelText,
    required this.submitted,
    this.minLines = 1,
    this.maxLines = 1,
    this.typeInput = "text",
  });

  final TextEditingController controller;
  final int minLines;
  final int maxLines;
  final String labelText;
  final String typeInput;
  final bool submitted;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      minLines: minLines,
      maxLines: maxLines,
      textAlignVertical: TextAlignVertical.top,
      textAlign: TextAlign.start,
      obscureText: typeInput == "password" ? true : false,
      autovalidateMode:
          submitted ? AutovalidateMode.always : AutovalidateMode.disabled,
      validator: (inputValue) {
        switch (typeInput) {
          case "email":
            return emailValidator(inputValue);

          case "password":
            return passwordValidator(inputValue);

          default:
            return defaultValidator(inputValue);
        }
      },
      controller: controller,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey, width: 1.0),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.purple, width: 1.0),
          borderRadius: BorderRadius.circular(12),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey, width: 1.0),
          borderRadius: BorderRadius.circular(12),
        ),
        labelText: labelText,
        alignLabelWithHint: true,
        labelStyle: const TextStyle(color: Colors.white),
      ),
      style: const TextStyle(
        color: Color(0xFFFFFFFF),
        fontSize: 20,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
