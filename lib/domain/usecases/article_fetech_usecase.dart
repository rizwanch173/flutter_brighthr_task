import 'package:flutter_brighthr_task/domain/entity/article_entity.dart';
import 'package:flutter_brighthr_task/domain/entity/common/network_error.dart';
import 'package:flutter_brighthr_task/domain/repository/article_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class ArticleFetchUseCase {
  final ArticleRepository _repository;

  ArticleFetchUseCase(this._repository);

  Future<Either<NetworkError, List<ArticleEntity>>> execute() {
    return _repository.fetchArticles();
  }
}
