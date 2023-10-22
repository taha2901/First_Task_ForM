class ScreenModel {
  final String content;
  final String author;

  ScreenModel({
    required this.content,
    required this.author,
  });
  factory ScreenModel.fromjson(json) {
    return ScreenModel(
      content: json['content'],
      author: json['author'],
    );
  }
}
