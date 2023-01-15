import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:like_button/like_button.dart';
import 'package:unimeet/src/services/feed/feed_messages_service.dart';

class ButtonLike extends StatelessWidget {
  const ButtonLike({
    super.key,
    required this.courseId,
    required this.postId,
  });
  final String courseId;
  final String postId;

  Future<bool> onLikeButtonTapped(bool isLiked) async {
    postFeedLike(courseId, postId);
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return LikeButton(
      onTap: onLikeButtonTapped,
    );
  }
}
