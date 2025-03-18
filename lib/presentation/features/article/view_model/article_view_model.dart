import 'package:flutter_brighthr_task/presentation/features/article/state/home_state.dart';
import 'package:flutter_brighthr_task/presentation/state_manager/view_model.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_brighthr_task/domain/entity/article_entity.dart';
import 'package:flutter_brighthr_task/domain/usecases/article_fetech_usecase.dart';
import 'package:flutter_brighthr_task/domain/repository/article_repository.dart';

@injectable
class ArticleViewModel extends ViewModel<HomeState> {
  final ArticleFetchUseCase _articleFetchUseCase;
  final ArticleRepository _articleRepository;

  ArticleViewModel(this._articleFetchUseCase, this._articleRepository)
    : super(const HomeState());

  Future<void> initialize() async {
    await fetchArticles();
    await loadSavedArticles();
    await updateSavedArticlesCount();
  }

  Future<void> fetchArticles() async {
    state = state.copyWith(isLoading: true);
    final result = await _articleFetchUseCase.execute();
    result.fold(
      (l) {
        print(l);
        state = state.copyWith(isLoading: false, errorMessage: l.errorMessage);
      },
      (r) {
        state = state.copyWith(articles: r, isLoading: false);
      },
    );
  }

  Future<void> loadSavedArticles() async {
    final result = await _articleRepository.getOfflineArticles();
    result.fold(
      (l) {
        print(l);
      },
      (r) {
        state = state.copyWith(savedArticles: r);
      },
    );
  }

  Future<void> updateSavedArticlesCount() async {
    final result = await _articleRepository.getOfflineArticles();
    result.fold(
      (error) {
        print(error);
      },
      (articles) {
        state = state.copyWith(savedArticlesCount: articles.length);
      },
    );
  }

  Future<void> toggleBookmark(ArticleEntity article) async {
    try {
      final isArticleSaved = await _articleRepository.isArticleSaved(
        article.id,
      );

      isArticleSaved.fold(
        (l) {
          print('Error checking if article is saved: $l');
        },
        (isSaved) async {
          if (isSaved) {
            // Remove article
            final result = await _articleRepository.removeArticleOffline(
              article.id,
            );
            result.fold((l) => print('Error removing article: $l'), (r) {
              final updatedSavedArticles =
                  state.savedArticles.where((a) => a.id != article.id).toList();
              state = state.copyWith(
                savedArticles: updatedSavedArticles,
                savedArticlesCount: state.savedArticlesCount - 1,
              );
            });
          } else {
            // Save article
            final result = await _articleRepository.saveArticleOffline(article);
            result.fold((l) => print('Error saving article: $l'), (r) {
              final updatedSavedArticles = [...state.savedArticles, article];
              state = state.copyWith(
                savedArticles: updatedSavedArticles,
                savedArticlesCount: state.savedArticlesCount + 1,
              );
            });
          }
        },
      );
    } catch (e) {
      print('Error in toggleBookmark: $e');
    }
  }
}
