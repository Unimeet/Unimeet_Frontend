import 'package:flutter/material.dart';
import 'package:unimeet/src/models/user_register_college.dart';
import 'package:unimeet/src/models/user_register_model.dart';
import 'package:unimeet/src/services/user/register_service.dart';
import 'package:unimeet/src/widgets/button_widget.dart';
import 'package:unimeet/src/widgets/date_input_widget.dart';
import 'package:unimeet/src/widgets/dropdown_input_widget.dart';
import 'package:unimeet/src/widgets/input_widget.dart';

class CreateProfile extends StatefulWidget {
  const CreateProfile({super.key});

  @override
  State<CreateProfile> createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  String college = "Unifesp";
  String course = "Ciência da Computação";
  late String courseStartDate;
  late String aboutMe;
  late UserRegisterModel userRegisterData;
  bool submitted = false;
  bool isLoading = false;
  bool error = false;
  final TextEditingController _courseStartDate = TextEditingController();
  final TextEditingController _aboutMe = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  void handleClickCreateProfileButton(UserRegisterModel userRegisterData) {
    setState(() {
      aboutMe = _aboutMe.text;
      courseStartDate = _courseStartDate.text;
      userRegisterData = userRegisterData;
      isLoading = true;
    });

    UserRegisterCollege userCollegeData =
        UserRegisterCollege(college, course, courseStartDate, aboutMe, false);

    postRegisterUser(userRegisterData, userCollegeData).then((status) {
      if (status == 200) {
        Navigator.pushNamed(context, '/confirm-code-register');
      } else {
        setState(() {
          isLoading = false;
          error = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final userRegisterData =
        ModalRoute.of(context)!.settings.arguments as UserRegisterModel;

    return Scaffold(
      backgroundColor: const Color(0xFF1E1E26),
      body: Container(
        margin: const EdgeInsets.only(left: 24, right: 24),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 48),
                child: Center(
                  child: Text(
                    "UNIMEET",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 64,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              AppDropdownInput(
                hintText: "Universidade",
                options: const ["Unifesp", "Unicamp"],
                value: college,
                onChanged: (String? value) {
                  setState(() {
                    college = value!;
                  });
                },
                getLabel: (String value) => value,
              ),
              const SizedBox(height: 16),
              AppDropdownInput(
                hintText: "Curso em Andamento",
                options: const [
                  "Ciência da Computação",
                  "Engenharia da Computação",
                  "Engenharia de Materiais"
                ],
                value: course,
                onChanged: (String? value) {
                  setState(() {
                    course = value!;
                  });
                },
                getLabel: (String value) => value,
              ),
              const SizedBox(height: 16),
              DateInput(
                  controller: _courseStartDate,
                  labelText: "Data de início do curso",
                  submitted: submitted),
              const SizedBox(height: 16),
              Input(
                controller: _aboutMe,
                labelText: "Sobre mim",
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
                  child: Text("Erro ao tentar criar perfil, tente novamente.",
                      style: TextStyle(color: Colors.red)),
                ),
              Button(
                buttonText: "Criar Perfil",
                isLoading: isLoading,
                handleClickButton: () {
                  handleClickCreateProfileButton(userRegisterData);
                },
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
