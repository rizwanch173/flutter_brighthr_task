import 'package:flutter_brighthr_task/domain/entity/comment_entity.dart';
import 'package:flutter_brighthr_task/domain/entity/common/network_error.dart';
import 'package:flutter_brighthr_task/domain/repository/article_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class ArticleCommentsFetchUseCase {
  final ArticleRepository _repository;

  ArticleCommentsFetchUseCase(this._repository);

  Future<Either<NetworkError, List<CommentEntity>>> execute(int articleId) {
    return _repository.fetchComments(articleId);
  }
}
