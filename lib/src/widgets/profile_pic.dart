import 'package:flutter/cupertino.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic(
      {super.key,
      this.imageURL =
          "https://s3.amazonaws.com/unimeet-dev.com.br/users/d6cf3b4f-7815-4680-b617-e93a519eca51/images/profile/image.jpg",
      this.size = 166,
      this.allowBorder = true});

  final String imageURL;
  final double size;
  final allowBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      padding: const EdgeInsets.all(1),
      decoration: allowBorder == true
          ? BoxDecoration(
              color: const Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(30))
          : null,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: SizedBox.fromSize(
          size: const Size.fromRadius(30),
          child: Image.network(
            imageURL,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
