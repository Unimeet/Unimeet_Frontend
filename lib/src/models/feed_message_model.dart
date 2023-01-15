class Post {
  String postId;
  String text;

  DateTime createdAt;
  DateTime updatedAt;
  String date;
  String time;

  Post({
    required this.postId,
    required this.text,
    required this.createdAt,
    required this.updatedAt,
    required this.date,
    required this.time,
  });
}

class Like {
  final String userId;
  final DateTime createdAt;

  Like({
    required this.userId,
    required this.createdAt,
  });
}

class Comment {
  final String userId;
  final String text;
  final DateTime createdAt;

  Comment({
    required this.userId,
    required this.text,
    required this.createdAt,
  });
}
