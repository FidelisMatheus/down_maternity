import 'dart:convert';

class Topic {
  final String title;
  final String text;
  late bool expand;
  late bool check;

  Topic(this.title, this.text, this.check, this.expand);

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'text': text,
      'expand': expand,
      'check': check,
    };
  }

  factory Topic.fromMap(Map<String, dynamic> map) {
    return Topic(
      map['title'] ?? '',
      map['text'] ?? '',
      map['expand'],
      map['check'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Topic.fromJson(String source) => Topic.fromMap(json.decode(source));
}
