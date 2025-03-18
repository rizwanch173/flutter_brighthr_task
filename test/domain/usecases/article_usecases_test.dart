import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_brighthr_task/domain/entity/article_entity.dart';
import 'package:flutter_brighthr_task/domain/entity/comment_entity.dart';
import 'package:flutter_brighthr_task/domain/entity/common/network_error.dart';
import 'package:flutter_brighthr_task/domain/repository/article_repository.dart';
import 'package:flutter_brighthr_task/domain/usecases/article_fetech_usecase.dart';
import 'package:flutter_brighthr_task/domain/usecases/article_comments_fetch_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([ArticleRepository])
import 'article_usecases_test.mocks.dart';

void main() {
  late ArticleFetchUseCase articleFetchUseCase;
  late ArticleCommentsFetchUseCase articleCommentsFetchUseCase;
  late MockArticleRepository mockRepository;

  setUp(() {
    mockRepository = MockArticleRepository();
    articleFetchUseCase = ArticleFetchUseCase(mockRepository);
    articleCommentsFetchUseCase = ArticleCommentsFetchUseCase(mockRepository);
  });

  group('ArticleFetchUseCase', () {
    final tArticles = [
      ArticleEntity(
        id: 1,
        title: 'Test Article 1',
        body: 'Test Body 1',
        userId: 1,
      ),
      ArticleEntity(
        id: 2,
        title: 'Test Article 2',
        body: 'Test Body 2',
        userId: 2,
      ),
    ];

    test('should get articles from the repository', () async {
      // arrange
      when(
        mockRepository.fetchArticles(),
      ).thenAnswer((_) async => Right(tArticles));

      // act
      final result = await articleFetchUseCase.execute();

      // assert
      expect(result, Right(tArticles));
      verify(mockRepository.fetchArticles());
      verifyNoMoreInteractions(mockRepository);
    });

    test('should return NetworkError when repository fails', () async {
      // arrange
      final tError = NetworkError('Test error', null, 500);
      when(
        mockRepository.fetchArticles(),
      ).thenAnswer((_) async => Left(tError));

      // act
      final result = await articleFetchUseCase.execute();

      // assert
      expect(result, Left(tError));
      verify(mockRepository.fetchArticles());
      verifyNoMoreInteractions(mockRepository);
    });
  });

  group('ArticleCommentsFetchUseCase', () {
    final tArticleId = 1;
    final tComments = [
      CommentEntity(
        id: 1,
        postId: tArticleId,
        name: 'Test User',
        email: 'test@example.com',
        body: 'Test Comment',
      ),
      CommentEntity(
        id: 2,
        postId: tArticleId,
        name: 'Test User 2',
        email: 'test2@example.com',
        body: 'Test Comment 2',
      ),
    ];

    test('should get comments for an article from the repository', () async {
      // arrange
      when(
        mockRepository.fetchComments(tArticleId),
      ).thenAnswer((_) async => Right(tComments));

      // act
      final result = await articleCommentsFetchUseCase.execute(tArticleId);

      // assert
      expect(result, Right(tComments));
      verify(mockRepository.fetchComments(tArticleId));
      verifyNoMoreInteractions(mockRepository);
    });

    test('should return NetworkError when repository fails', () async {
      // arrange
      final tError = NetworkError('Test error', null, 500);
      when(
        mockRepository.fetchComments(tArticleId),
      ).thenAnswer((_) async => Left(tError));

      // act
      final result = await articleCommentsFetchUseCase.execute(tArticleId);

      // assert
      expect(result, Left(tError));
      verify(mockRepository.fetchComments(tArticleId));
      verifyNoMoreInteractions(mockRepository);
    });
  });
}
