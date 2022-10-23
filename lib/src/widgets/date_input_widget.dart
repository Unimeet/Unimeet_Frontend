import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:unimeet/src/utils/validators.dart';

class DateInput extends StatelessWidget {
  const DateInput({
    super.key,
    required this.controller,
    required this.labelText,
    required this.submitted,
  });

  final TextEditingController controller;
  final String labelText;
  final bool submitted;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode:
          submitted ? AutovalidateMode.always : AutovalidateMode.disabled,
      validator: (value) {
        return dateValidator(value);
      },
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        DataInputFormatter(),
      ],
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
