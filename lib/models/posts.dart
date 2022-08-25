import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Posts {
  String title;
  String body;
  int userId;
  Posts({
    required this.title,
    required this.body,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'body': body,
      'userId': userId,
    };
  }

  factory Posts.fromMap(Map<String, dynamic> map) {
    return Posts(
      title: map['title'] as String,
      body: map['body'] as String,
      userId: map['userId'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Posts.fromJson(String source) =>
      Posts.fromMap(json.decode(source) as Map<String, dynamic>);
}
