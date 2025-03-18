import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_brighthr_task/data/source/local/article_local_storage.dart';
import 'package:flutter_brighthr_task/domain/entity/article_entity.dart';
import 'package:hive/hive.dart';
import 'dart:io';

void main() {
  late ArticleLocalStorage articleLocalStorage;
  late Box<Map> box;
  late Directory tempDir;

  setUpAll(() async {
    tempDir = await Directory.systemTemp.createTemp();
    Hive.init(tempDir.path);
  });

  setUp(() async {
    articleLocalStorage = ArticleLocalStorage();
    box = await Hive.openBox<Map>('offline_articles');
  });

  tearDown(() async {
    await box.clear();
  });

  tearDownAll(() async {
    await Hive.close();
    tempDir.deleteSync(recursive: true);
  });

  group('ArticleLocalStorage', () {
    final testArticle = ArticleEntity(
      id: 1,
      title: 'Test Article',
      body: 'Test Body',
      userId: 1,
    );

    final testArticleJson = {
      'id': 1,
      'title': 'Test Article',
      'body': 'Test Body',
      'userId': 1,
    };

    test('saveArticle should store article in box stroge', () async {
      await articleLocalStorage.saveArticle(testArticle);

      final savedArticle = box.get(testArticle.id.toString());
      expect(savedArticle, testArticleJson);
    });

    test('removeArticle should delete article from box stroge', () async {
      // First save the article
      await box.put(testArticle.id.toString(), testArticleJson);

      // Then remove it
      await articleLocalStorage.removeArticle(testArticle.id);

      final savedArticle = box.get(testArticle.id.toString());
      expect(savedArticle, null);
    });

    test('getOfflineArticles should return list of stored articles', () async {
      // Save test article
      await box.put(testArticle.id.toString(), testArticleJson);

      final result = await articleLocalStorage.getOfflineArticles();

      expect(result.length, 1);
      expect(result.first.id, testArticle.id);
      expect(result.first.title, testArticle.title);
      expect(result.first.body, testArticle.body);
      expect(result.first.userId, testArticle.userId);
    });

    test(
      'isArticleSaved should check if article exists in box stroge',
      () async {
        // Save test article
        await box.put(testArticle.id.toString(), testArticleJson);

        final result = await articleLocalStorage.isArticleSaved(testArticle.id);
        expect(result, true);

        // Test for non-existent article
        final nonExistentResult = await articleLocalStorage.isArticleSaved(999);
        expect(nonExistentResult, false);
      },
    );
  });
}
