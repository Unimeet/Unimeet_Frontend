import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:unimeet/src/services/feed/feed_messages_service.dart';

class FeedPostInput extends StatelessWidget {
  const FeedPostInput({
    super.key,
    required this.controller,
    required this.labelText,
    required this.courseId,
    this.maxLines = 2,
  });

  final TextEditingController controller;
  final String labelText;
  final int maxLines;
  final String courseId;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted: (String postText) {
        // Lida com o texto aqui quando o usuário pressiona Enter
        createPost(courseId, postText).then((value) {
          postText = "";
        });
      },
      maxLines: maxLines,
      textAlignVertical: TextAlignVertical.top,
      textAlign: TextAlign.start,
      controller: controller,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        alignLabelWithHint: false,
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
