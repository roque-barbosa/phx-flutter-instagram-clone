class Post {
  final String caption;

  const Post({
    required this.caption,
  });

  factory Post.fromJson(Map<String, dynamic> json){
    return Post(
      caption: json['caption']
    );
  }
}