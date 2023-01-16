import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:unimeet/src/models/buddies_list_model.dart';
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
  List<buddiesListModel> _buddies = [];

  @override
  void initState() {
    super.initState();
    EasyLoading.instance
      ..maskType = EasyLoadingMaskType.black
      ..indicatorType = EasyLoadingIndicatorType.fadingCircle;
    EasyLoading.show(status: "Procurando buddies...");
    getBuddy().then((users) {
      setState(() {
        _buddies = users;
      });
      EasyLoading.dismiss();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E26),
      appBar: const CustomAppBar(title: "Buddies disponíveis"),
      body: Container(
        margin: const EdgeInsets.only(left: 24, right: 24),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          children: _buddies.map((buddy) {
            return BuddyCard(
              name: buddy.name,
              course: buddy.course,
              cellphone: buddy.cellphone,
            );
          }).toList(),
        ),
      ),
    );
  }
}
