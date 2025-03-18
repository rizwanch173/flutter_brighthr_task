import 'dart:io';

import 'package:flutter_brighthr_task/di/di.dart';
import 'package:flutter_brighthr_task/domain/entity/article_entity.dart';
import 'package:flutter_brighthr_task/domain/entity/comment_entity.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi()
@injectable
abstract class ApiService {
  @factoryMethod
  factory ApiService(Dio dio, @Named(DIConstants.baseUrl) String baseUrl) =>
      _ApiService(dio, baseUrl: baseUrl);

  @GET('posts')
  Future<List<ArticleEntity>> fetchArticles();

  @GET('posts/{postId}')
  Future<ArticleEntity> fetchArticle(int postId);

  @GET('posts/{postId}/comments')
  Future<List<CommentEntity>> fetchComments(@Path('postId') int postId);
}
