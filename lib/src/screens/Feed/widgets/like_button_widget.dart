import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:like_button/like_button.dart';

class ButtonLike extends StatelessWidget {
  const ButtonLike({super.key, required this.id});
  final int id;

  Future<bool> onLikeButtonTapped(bool isLiked) async {
    /// send your request here
    // final bool success= await sendRequest();

    /// if failed, you can do nothing
    // return success? !isLiked:isLiked;
    return !isLiked;
  }

  @override
  Widget build(BuildContext context) {
    return LikeButton(
      onTap: onLikeButtonTapped,
    );
  }
}
