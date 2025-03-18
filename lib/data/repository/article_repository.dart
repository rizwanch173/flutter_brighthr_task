import 'dart:async';
import 'package:flutter_brighthr_task/core/extensions/repo_ext.dart';
import 'package:flutter_brighthr_task/data/source/network/service/api_service.dart';
import 'package:flutter_brighthr_task/data/source/local/article_local_storage.dart';
import 'package:flutter_brighthr_task/domain/entity/article_entity.dart';
import 'package:flutter_brighthr_task/domain/entity/comment_entity.dart';
import 'package:flutter_brighthr_task/domain/entity/common/network_error.dart';
import 'package:flutter_brighthr_task/domain/repository/article_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ArticleRepository)
class ArticleRepositoryImpl extends ArticleRepository {
  final ApiService _apiService;
  final ArticleLocalStorage _localStorage;

  ArticleRepositoryImpl(this._apiService, this._localStorage);

  @override
  Future<Either<NetworkError, List<ArticleEntity>>> fetchArticles() {
    return _apiService.fetchArticles().getResult();
  }

  @override
  Future<Either<NetworkError, ArticleEntity>> fetchArticle(int postId) {
    return _apiService.fetchArticle(postId).getResult();
  }

  @override
  Future<Either<NetworkError, List<CommentEntity>>> fetchComments(int postId) {
    return _apiService.fetchComments(postId).getResult();
  }

  @override
  Future<Either<NetworkError, List<ArticleEntity>>> getOfflineArticles() async {
    try {
      final articles = await _localStorage.getOfflineArticles();
      return Right(articles);
    } catch (e) {
      return Left(NetworkError(e.toString(), 'error', 500));
    }
  }

  @override
  Future<Either<NetworkError, bool>> isArticleSaved(int articleId) async {
    try {
      final result = await _localStorage.isArticleSaved(articleId);
      return Right(result);
    } catch (e) {
      return Left(NetworkError(e.toString(), 'error', 500));
    }
  }

  @override
  Future<Either<NetworkError, bool>> removeArticleOffline(int articleId) async {
    try {
      await _localStorage.removeArticle(articleId);
      return const Right(true);
    } catch (e) {
      return Left(NetworkError(e.toString(), 'error', 500));
    }
  }

  @override
  Future<Either<NetworkError, bool>> saveArticleOffline(
    ArticleEntity article,
  ) async {
    try {
      await _localStorage.saveArticle(article);
      return const Right(true);
    } catch (e) {
      return Left(NetworkError(e.toString(), 'error', 500));
    }
  }
}
