import 'package:flutter/material.dart';
import 'package:unimeet/src/screens/AvailableBuddies/widgets/buddy_card.dart';
import 'package:unimeet/src/widgets/custom_appbar.dart';

class BuddiesInfo extends StatelessWidget {
  const BuddiesInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E26),
      appBar: const CustomAppBar(title: "Buddies disponíveis"),
      body: Container(
        margin: const EdgeInsets.only(left: 24, right: 24),
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(height: 16),
            BuddyCard(),
          ],
        ),
      ),
    );
  }
}
