import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_brighthr_task/domain/entity/comment_entity.dart';

part 'comments_list_state.freezed.dart';

@freezed
class CommentsListState with _$CommentsListState {
  const factory CommentsListState({
    @Default(false) bool isLoading,
    @Default([]) List<CommentEntity> comments,
  }) = _CommentsListState;
}
