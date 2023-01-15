import 'package:flutter/material.dart';
import 'package:unimeet/src/screens/Feed/widgets/comment_button_widget.dart';
import 'package:unimeet/src/screens/Feed/widgets/like_button_widget.dart';
import 'package:unimeet/src/widgets/profile_pic.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget(
      {super.key,
      required this.name,
      required this.profilePic,
      required this.course,
      required this.date,
      required this.hour,
      required this.text,
      required this.postId,
      required this.courseId});

  final String name;
  final String profilePic;
  final String course;
  final String date;
  final String hour;
  final String text;
  final String postId;
  final String courseId;
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ProfilePic(
                imageURL: profilePic,
                size: 40,
                allowBorder: false,
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    course,
                    style:
                        const TextStyle(fontSize: 14, color: Color(0xFF5F5F5F)),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  Text(
                    date,
                    style:
                        const TextStyle(fontSize: 14, color: Color(0xFF5F5F5F)),
                  ),
                  Text(
                    hour,
                    style:
                        const TextStyle(fontSize: 14, color: Color(0xFF5F5F5F)),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            text,
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              // ButtonComment(
              //   id: 432423,
              // ),
              ButtonLike(
                courseId: courseId,
                postId: postId,
              )
            ],
          )
        ],
      ),
    ));
  }
}
