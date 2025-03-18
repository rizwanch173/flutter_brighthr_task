import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_brighthr_task/domain/entity/article_entity.dart';

part 'home_state.freezed.dart';

@Freezed()
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(false) bool showAddButton,
    @Default([]) List<ArticleEntity> articles,
    @Default([]) List<ArticleEntity> savedArticles,
    @Default('') String errorMessage,
    @Default(false) bool isLoading,
    @Default(0) int savedArticlesCount,
  }) = _HomeState;
}
