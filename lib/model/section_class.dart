// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class SectionQuizzes {
  final String title;
  SectionQuizzes({
    required this.title,
  });

  SectionQuizzes copyWith({
    String? title,
  }) {
    return SectionQuizzes(
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
    };
  }

  factory SectionQuizzes.fromMap(Map<String, dynamic> map) {
    return SectionQuizzes(
      title: map['title'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory SectionQuizzes.fromJson(String source) => SectionQuizzes.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'SectionQuizzes(title: $title)';

  @override
  bool operator ==(covariant SectionQuizzes other) {
    if (identical(this, other)) return true;
  
    return 
      other.title == title;
  }

  @override
  int get hashCode => title.hashCode;
}
