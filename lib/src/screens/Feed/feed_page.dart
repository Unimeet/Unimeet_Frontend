import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:unimeet/src/models/feed_message_model.dart';
import 'package:unimeet/src/screens/CourseInfo/course_info_page.dart';
import 'package:unimeet/src/screens/Feed/widgets/feed_post_input_widget.dart';
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

  final TextEditingController _postController = TextEditingController();

  @override
  void initState() {
    super.initState();
    EasyLoading.instance
      ..maskType = EasyLoadingMaskType.black
      ..indicatorType = EasyLoadingIndicatorType.fadingCircle;
    EasyLoading.show(status: "Carregando Posts...");
  }

  Future<void> getFeedData(String courseId) async {
    getFeedMessages(courseId).then((courseData) {
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
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    final courseId = args.id ?? "a3c3a119-dbe6-4ee3-91ac-aa34742bf2d7";
    getFeedData(courseId);
    return Scaffold(
      appBar: CustomAppBar(title: args.title),
      backgroundColor: Color(0xFF1E1E26),
      body: Column(
        children: [
          Container(
              height: 100,
              child: FeedPostInput(
                  controller: _postController,
                  labelText: "Adicione um novo post",
                  courseId: courseId)),
          Expanded(
            child: ListView.builder(
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
                  courseId: courseId,
                  postId: messageList[index].postId,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
