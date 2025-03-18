import 'package:flutter_brighthr_task/domain/entity/article_entity.dart';
import 'package:flutter_brighthr_task/domain/entity/comment_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_detail_state.freezed.dart';

@freezed
class ArticleDetailState with _$ArticleDetailState {
  const factory ArticleDetailState({
    @Default(false) bool isLoading,
    ArticleEntity? article,
    @Default([]) List<CommentEntity> comments,
    @Default(false) bool isBookmarked,
  }) = _ArticleDetailState;
}
