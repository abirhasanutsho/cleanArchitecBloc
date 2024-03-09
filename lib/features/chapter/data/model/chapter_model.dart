import '../../domain/entities/chapterEntity.dart';

class ChapterModel extends Chapterten {
  ChapterModel({
    required super.id,
    required super.imageUrl,
    required super.audioUrl,
  });

  factory ChapterModel.fromJson(Map<String, dynamic> json) {
    return ChapterModel(
      id: json['id'],
      imageUrl: json['imageUrl'],
      audioUrl: json['audioUrl'],
    );
  }
}
