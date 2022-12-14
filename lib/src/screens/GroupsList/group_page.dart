import 'package:flutter/material.dart';
import 'package:unimeet/src/screens/GroupsList/group_button.dart';
import 'package:unimeet/src/widgets/custom_appbar.dart';

class GroupPage extends StatefulWidget {
  const GroupPage({Key? key}) : super(key: key);

  @override
  _GroupPageState createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
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
                children: [
                  for (int i = 0; i < 10; i++)
                    GroupButton(
                      courseName: 'Ccomp',
                      message: 'hello',
                      messageSender: 'Isabela',
                      messagesQnty: 3,
                      hour: 13,
                      minut: 54,
                      route: '/university',
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
