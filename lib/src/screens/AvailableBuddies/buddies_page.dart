import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:unimeet/src/screens/AvailableBuddies/widgets/buddy_card.dart';
import 'package:unimeet/src/services/buddies/buddies_list_services.dart';
import 'package:unimeet/src/widgets/custom_appbar.dart';
import 'package:unimeet/src/utils/user_secure_storage.dart';

class BuddiesInfo extends StatefulWidget {
  const BuddiesInfo({Key? key}) : super(key: key);

  @override
  _BuddiesInfoState createState() => _BuddiesInfoState();
}

class _BuddiesInfoState extends State<BuddiesInfo> {
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
