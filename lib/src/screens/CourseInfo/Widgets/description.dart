import 'package:flutter/cupertino.dart';
import 'package:unimeet/src/widgets/label_text.dart';
import 'package:unimeet/src/widgets/main_text.dart';

class DescriptionBox extends StatelessWidget {
  const DescriptionBox(
      {super.key, required this.description, required this.title});

  final String description;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MainText(
            title: title,
          ),
          const SizedBox(
            height: 8,
          ),
          LabelText(
            title: description,
          ),
        ],
      ),
    );
  }
}
