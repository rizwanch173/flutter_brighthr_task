import 'package:flutter_brighthr_task/domain/repository/article_repository.dart';
import 'package:flutter_brighthr_task/domain/usecases/article_comments_fetch_usecase.dart';
import 'package:flutter_brighthr_task/presentation/features/article_detail/state/article_detail_state.dart';
import 'package:flutter_brighthr_task/presentation/state_manager/view_model.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_brighthr_task/domain/entity/article_entity.dart';

@injectable
class ArticleDetailViewModel extends ViewModel<ArticleDetailState> {
  final ArticleCommentsFetchUseCase _articleCommentsFetchUseCase;
  final ArticleRepository _articleRepository;

  ArticleDetailViewModel(
    this._articleCommentsFetchUseCase,
    this._articleRepository,
  ) : super(const ArticleDetailState());

  void setArticle(ArticleEntity article) async {
    state = state.copyWith(article: article);
    fetchComments(article.id);
    checkIfBookmarked(article.id);
  }

  Future<void> fetchComments(int articleId) async {
    state = state.copyWith(isLoading: true);

    final result = await _articleCommentsFetchUseCase.execute(articleId);
    result.fold(
      (error) {
        print(error);
        state = state.copyWith(isLoading: false);
      },
      (comments) {
        state = state.copyWith(comments: comments, isLoading: false);
      },
    );
  }

  Future<void> checkIfBookmarked(int articleId) async {
    final isArticleSaved = await _articleRepository.isArticleSaved(articleId);

    isArticleSaved.fold(
      (l) {
        print(l);
      },
      (isSaved) {
        state = state.copyWith(isBookmarked: isSaved);
      },
    );
  }

  Future<void> toggleBookmark() async {
    if (state.article == null) return;

    final isArticleSaved = await _articleRepository.isArticleSaved(
      state.article!.id,
    );

    isArticleSaved.fold(
      (l) {
        print(l);
      },
      (isSaved) async {
        if (isSaved) {
          final result = await _articleRepository.removeArticleOffline(
            state.article!.id,
          );
          result.fold((l) => print(l), (r) {
            state = state.copyWith(isBookmarked: false);
          });
        } else {
          final result = await _articleRepository.saveArticleOffline(
            state.article!,
          );
          result.fold((l) => print(l), (r) {
            state = state.copyWith(isBookmarked: true);
          });
        }
      },
    );
  }
}
