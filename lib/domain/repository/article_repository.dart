import 'package:flutter_brighthr_task/domain/entity/article_entity.dart';
import 'package:flutter_brighthr_task/domain/entity/comment_entity.dart';
import 'package:flutter_brighthr_task/domain/entity/common/network_error.dart';
import 'package:dartz/dartz.dart';

abstract class ArticleRepository {
  Future<Either<NetworkError, List<ArticleEntity>>> fetchArticles();
  Future<Either<NetworkError, List<CommentEntity>>> fetchComments(int postId);
  Future<Either<NetworkError, bool>> saveArticleOffline(ArticleEntity article);
  Future<Either<NetworkError, bool>> removeArticleOffline(int articleId);
  Future<Either<NetworkError, List<ArticleEntity>>> getOfflineArticles();
  Future<Either<NetworkError, bool>> isArticleSaved(int articleId);
  Future<Either<NetworkError, ArticleEntity>> fetchArticle(int postId);
}
