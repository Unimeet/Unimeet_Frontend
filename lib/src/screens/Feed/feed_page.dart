import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:unimeet/src/models/feed_message_model.dart';
import 'package:unimeet/src/screens/Feed/widgets/message_widget.dart';
import 'package:unimeet/src/services/feed/feed_messages_service.dart';
import 'package:unimeet/src/utils/getDayAndHour.dart';
import 'package:unimeet/src/widgets/custom_appbar.dart';

class Feed extends StatefulWidget {
  const Feed({super.key});

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  late List<Post> messageList = [];

  late String courseId;

  @override
  void initState() {
    super.initState();
    EasyLoading.instance
      ..maskType = EasyLoadingMaskType.black
      ..indicatorType = EasyLoadingIndicatorType.fadingCircle;
    EasyLoading.show(status: "Carregando Posts...");
    getFeedData();
  }

  Future<void> getFeedData() async {
    getFeedMessages("a3c3a119-dbe6-4ee3-91ac-aa34742bf2d7").then((courseData) {
      List<Post> array = [];

      courseData.forEach((item) {
        Map<String, String> itemDate = parseDateTime(item["updatedAt"]);
        Post post = Post(
          postId: item['postId'],
          text: item['text'],
          createdAt: DateTime.parse(item['createdAt']),
          updatedAt: DateTime.parse(item['updatedAt']),
          date: itemDate['day'] ?? "",
          time: itemDate['time'] ?? "",
        );
        array.add(post);
      });

      setState(() {
        messageList = array;
      });
      EasyLoading.dismiss();
    });
  }

  @override
  Widget build(BuildContext context) {
    const String appBarTitle = "Engenharia da computação";
    const String universityName = "Universidade Federal de São Paulo - UNIFESP";

    return Scaffold(
      appBar: CustomAppBar(title: appBarTitle),
      backgroundColor: Color(0xFF1E1E26),
      body: ListView.builder(
        itemCount: messageList.length,
        itemBuilder: (BuildContext context, int index) {
          return MessageWidget(
            profilePic:
                "https://s3.amazonaws.com/unimeet-dev.com.br/users/d6cf3b4f-7815-4680-b617-e93a519eca51/images/profile/image.jpg",
            name: "Luigi Gottardello Fonseca",
            course: "Engenharia da Computação",
            date: messageList[index].date,
            hour: messageList[index].time,
            text: messageList[index].text,
          );
        },
      ),
    );
  }
}
