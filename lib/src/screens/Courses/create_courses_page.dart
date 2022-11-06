import 'package:flutter/material.dart';
import 'package:unimeet/src/widgets/button_widget.dart';
import 'package:unimeet/src/widgets/custom_appbar.dart';
import 'package:unimeet/src/widgets/dropdown_input_widget.dart';
import 'package:unimeet/src/widgets/input_widget.dart';

class CreateCourse extends StatefulWidget {
  const CreateCourse({super.key});

  @override
  State<CreateCourse> createState() => _CreateCourseState();
}

class _CreateCourseState extends State<CreateCourse> {
  String tcc = "Sim";
  String internship = "Sim";
  String endCourse = "Bacharelado: 4 a 6 anos";
  bool submitted = false; //vira true ao enviar formulario
  bool isLoading = false; // ignora
  bool error = false; // ignora
  final TextEditingController _descriptionCourse = TextEditingController();
  final TextEditingController _nameCourse = TextEditingController();
  final TextEditingController _subjectsCourse = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Criação de Curso"),
      backgroundColor: const Color(0xFF1E1E26),
      body: Container(
        margin: const EdgeInsets.only(left: 24, right: 24),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              const SizedBox(height: 16),
              Input(
                controller: _nameCourse,
                labelText: "Nome do curso",
                submitted: submitted,
                minLines: 1,
                maxLines: 1,
              ),
              const SizedBox(height: 16),
              AppDropdownInput(
                hintText: "Tempo médio de Conclusão",
                options: const [
                  "Bacharelado: 4 a 6 anos",
                  "Licenciatura: 3 a 5 anos",
                  "Tecnólogo: 2 a 3 anos",
                ],
                value: endCourse,
                onChanged: (String? value) {
                  setState(() {
                    endCourse = value!;
                  });
                },
                getLabel: (String value) => value,
              ),
              const SizedBox(height: 16),
              AppDropdownInput(
                hintText: "Estágio Obrigatório",
                options: const [
                  "Sim",
                  "Não",
                ],
                value: internship,
                onChanged: (String? value) {
                  setState(() {
                    internship = value!;
                  });
                },
                getLabel: (String value) => value,
              ),
              const SizedBox(height: 16),
              AppDropdownInput(
                hintText: "TCC Obrigatório",
                options: const [
                  "Sim",
                  "Não",
                ],
                value: tcc,
                onChanged: (String? value) {
                  setState(() {
                    tcc = value!;
                  });
                },
                getLabel: (String value) => value,
              ),
              const SizedBox(height: 16),
              Input(
                controller: _subjectsCourse,
                labelText: "Matérias Obrigatórias",
                submitted: submitted,
                minLines: 1,
                maxLines: 4,
              ),
              const SizedBox(height: 4),
              const Padding(
                padding: EdgeInsets.only(left: 13),
                child: Text(
                  "Separe as Matérias por vírgula. Ex: Física, Inglês",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 16),
              Input(
                controller: _descriptionCourse,
                labelText: "Descrição do curso",
                submitted: submitted,
                minLines: 4,
                maxLines: 10,
              ),
              const SizedBox(
                height: 40,
              ),
              if (error == true)
                const Padding(
                  padding: EdgeInsets.only(top: 8, left: 4),
                  child: Text("Erro ao tentar criar curso, tente novamente.",
                      style: TextStyle(color: Colors.red)),
                ),
              Button(
                buttonText: "Criar curso",
                isLoading: isLoading,
                handleClickButton: () {},
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
