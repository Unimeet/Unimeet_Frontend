import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ShareButton extends StatelessWidget {
  final String content;

  const ShareButton({Key? key, required this.content}) : super(key: key);

  void _shareContent() {
    Share.share(content);
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: _shareContent,
      child: const Icon(
        Icons.ios_share_outlined,
        color: Colors.white,
      ),
    );
  }
}
