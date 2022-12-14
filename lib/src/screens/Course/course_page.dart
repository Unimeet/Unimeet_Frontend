import 'package:flutter/material.dart';
import 'package:unimeet/src/screens/Course/widgets/report_button.dart';
import 'package:unimeet/src/screens/CourseInfo/course_info_page.dart';
import '../../widgets/custom_appbar.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E26),
      appBar: CustomAppBar(title: args.title),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: ListView(
          children: [
            const SizedBox(height: 16),
            ReportButton(handleClickButton: () {
              print("report");
            })
          ],
        ),
      ),
    );
  }
}
