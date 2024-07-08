class Comment {
  final String content;
  final String author;
  final String authorImg;
  final String createdAt;

  const Comment( { required this.authorImg, required this.author, required this.content, required this.createdAt,});
}

class Post {
  final String content;
  final String author;
  final String authorImg;
  final String createdAt;
  final bool isLiked;
  List<Comment>? comments;
  String? imagePath;

  Post({
    required this.content,
    required this.author,
    required this.authorImg,
    required this.createdAt,
    this.isLiked = false,
    this.imagePath,
    this.comments,
  });
}