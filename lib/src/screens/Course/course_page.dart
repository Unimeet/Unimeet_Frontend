import 'package:flutter/material.dart';
import 'package:unimeet/src/screens/Course/widgets/report_button.dart';
import 'package:unimeet/src/screens/CourseInfo/course_info_page.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/input_widget.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CourseState();
}

class _CourseState extends State<CoursePage> {
  final TextEditingController _courseReport = TextEditingController();

  bool submitted = false;
  bool openReport = false;
  String courseReport = "";

  void handleOpenReport() {
    print(!openReport ? "open" : "close");
    setState(() {
      openReport = !openReport;
    });
  }

  void handleSendReport() {
    setState(() {
      openReport = !openReport;
    });
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E26),
      appBar: CustomAppBar(title: args.title),
      body: ListView(
        shrinkWrap: true,
        children: [
          const SizedBox(height: 16),
          ReportButton(handleClickButton: handleOpenReport),
          if (openReport)
            ListView(
              shrinkWrap: true,
              children: [
                Input(
                  controller: _courseReport,
                  labelText: "Escreva sua denúncia",
                  submitted: submitted,
                  minLines: 10,
                  maxLines: 120,
                ),
                Button(
                    buttonText: "Enviar", handleClickButton: handleSendReport),
              ],
            ),
        ],
      ),
    );
  }
}
