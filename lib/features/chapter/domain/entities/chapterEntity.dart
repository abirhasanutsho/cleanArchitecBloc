import 'package:equatable/equatable.dart';

class Chapterten extends Equatable {
  Chapterten({
    num? id,
    String? imageUrl,
    String? audioUrl,
  }) {
    _id = id;
    _imageUrl = imageUrl;
    _audioUrl = audioUrl;
  }

  Chapterten.fromJson(dynamic json) {
    _id = json['id'];
    _imageUrl = json['imageUrl'];
    _audioUrl = json['audioUrl'];
  }

  num? _id;
  String? _imageUrl;
  String? _audioUrl;

  num? get id => _id;

  String? get imageUrl => _imageUrl;

  String? get audioUrl => _audioUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['imageUrl'] = _imageUrl;
    map['audioUrl'] = _audioUrl;
    return map;
  }

  @override
  List<Object?> get props => [id, imageUrl, audioUrl];
}