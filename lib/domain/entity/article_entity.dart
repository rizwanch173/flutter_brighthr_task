import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_entity.freezed.dart';
part 'article_entity.g.dart';

@freezed
class ArticleEntity with _$ArticleEntity {
  @JsonSerializable()
  const factory ArticleEntity({
    required int userId,
    required int id,
    required String title,
    required String body,
  }) = _ArticleEntity;

  factory ArticleEntity.fromJson(Map<String, dynamic> json) =>
      _$ArticleEntityFromJson(json);
}
