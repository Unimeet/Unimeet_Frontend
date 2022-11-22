// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:unimeet/src/screens/Dashboard/profile_pic.dart';
import 'package:unimeet/src/screens/Dashboard/widgets/dashboard_card.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E26),
      body: Container(
        margin: const EdgeInsets.only(left: 24, right: 24, top: 48),
        child: Column(children: [
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
            height: 20,
          ),
          const ProfilePic(),
          SizedBox(
            height: 20,
          ),
          Text(
            'Olá, usuario_99',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          DashboardCard(
            title: 'Minha faculdade',
            handleClickButton: () {},
            color: Color(0xFF15A051),
          ),
          SizedBox(
            height: 16,
          ),
          DashboardCard(
            title: 'Meus cursos',
            handleClickButton: () {},
            color: Color(0xFFA114FC),
          ),
          SizedBox(
            height: 16,
          ),
          DashboardCard(
            title: 'Meu perfil',
            handleClickButton: () {},
            color: Color(0xFF395AFC),
          ),
        ]),
      ),
    );
  }
}
