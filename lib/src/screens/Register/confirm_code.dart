import 'package:flutter/material.dart';
import 'package:unimeet/src/widgets/button_widget.dart';

class ConfirmCodeRegister extends StatelessWidget {
  const ConfirmCodeRegister({super.key});

  @override
  Widget build(BuildContext context) {
    void handleClickButton() {
      Navigator.pushNamed(context, '/sign-in');
    }

    return Scaffold(
      backgroundColor: const Color(0xFF1E1E26),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                "UNIMEET",
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 64,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Confirme sua conta com o link enviado ao seu email.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Button(
              buttonText: "Ir para tela de Login",
              handleClickButton: () {
                handleClickButton();
              },
            ),
          ],
        ),
      ),
    );
  }
}
