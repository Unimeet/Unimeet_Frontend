// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:unimeet/src/widgets/profile_pic.dart';
import 'package:unimeet/src/screens/Dashboard/widgets/dashboard_card.dart';
import 'package:unimeet/src/utils/user_secure_storage.dart';

class Dashboard extends StatefulWidget {
  Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String name = "Temporario";

  String profilePic =
      "https://s3.amazonaws.com/unimeet-dev.com.br/users/d6cf3b4f-7815-4680-b617-e93a519eca51/images/profile/image.jpg";

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => getData());
  }

  Future<void> getData() async {
    String? tempName = await UserSecureStorage.getName();
    String? tempImage = await UserSecureStorage.getProfileImage();
    setState(() {
      name = tempName!;
      profilePic = tempImage!;
    });
  }

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
          ProfilePic(imageURL: profilePic),
          SizedBox(
            height: 20,
          ),
          Text(
            'Olá, $name',
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
