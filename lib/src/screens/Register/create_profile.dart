import 'package:flutter/material.dart';
import 'package:unimeet/src/models/user_register_model.dart';
import 'package:unimeet/src/widgets/button_widget.dart';
import 'package:unimeet/src/widgets/dropdown_input_widget.dart';
import 'package:unimeet/src/widgets/input_widget.dart';

class CreateProfile extends StatefulWidget {
  const CreateProfile({super.key});

  @override
  State<CreateProfile> createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  String gender = "Female";
  // final userData =
  //     ModalRoute.of(context)!.settings.arguments as UserRegisterModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E26),
      body: Container(
        margin: const EdgeInsets.only(left: 24, right: 24),
        child: Form(
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
              const SizedBox(
                height: 40,
              ),
              AppDropdownInput(
                hintText: "Gender",
                options: const ["Male", "Female"],
                value: gender,
                onChanged: (String? value) {
                  setState(() {
                    gender = value!;
                  });
                },
                getLabel: (String value) => value,
              ),
              const SizedBox(
                height: 40,
              ),
              Button(
                buttonText: "Teste",
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
