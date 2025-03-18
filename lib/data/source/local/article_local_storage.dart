import 'package:flutter_brighthr_task/domain/entity/article_entity.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@singleton
class ArticleLocalStorage {
  static const String boxName = 'offline_articles';
  late Box<Map> _box;
  bool _isInitialized = false;

  Future<void> init() async {
    print('init');
    if (!_isInitialized) {
      _box = await Hive.openBox<Map>(boxName);
      _isInitialized = true;
    }
  }

  Future<void> ensureInitialized() async {
    if (!_isInitialized) {
      await init();
    }
  }

  Future<void> saveArticle(ArticleEntity article) async {
    await ensureInitialized();
    await _box.put(article.id.toString(), article.toJson());
  }

  Future<void> removeArticle(int articleId) async {
    await ensureInitialized();
    await _box.delete(articleId.toString());
  }

  Future<List<ArticleEntity>> getOfflineArticles() async {
    await ensureInitialized();
    return _box.values
        .map((json) => ArticleEntity.fromJson(Map<String, dynamic>.from(json)))
        .toList();
  }

  Future<bool> isArticleSaved(int articleId) async {
    await ensureInitialized();
    return _box.containsKey(articleId.toString());
  }
}
