import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;
  @override
  Size get preferredSize => const Size.fromHeight(78);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF9F14FC),
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 18),
          child: Text(title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 26,
                fontWeight: FontWeight.bold,
              )),
        ));
  }
}
