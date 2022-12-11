import 'package:flutter/material.dart';
import 'package:unimeet/src/screens/GroupsList/group_card.dart';
import 'package:unimeet/src/widgets/custom_appbar.dart';

class GroupPage extends StatelessWidget {
  const GroupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E26),
      appBar: CustomAppBar(
        title: 'Meus grupos',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 16,
              ),
              child: Column(
                children: [for (int i = 0; i < 10; i++) GroupCard()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
