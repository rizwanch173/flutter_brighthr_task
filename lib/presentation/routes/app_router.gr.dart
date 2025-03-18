// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:flutter_brighthr_task/domain/entity/article_entity.dart' as _i6;
import 'package:flutter_brighthr_task/presentation/features/article/view/article_view.dart'
    as _i2;
import 'package:flutter_brighthr_task/presentation/features/article_detail/view/article_detail_view.dart'
    as _i1;
import 'package:flutter_brighthr_task/presentation/features/comments/view/comments_list_view.dart'
    as _i3;

/// generated route for
/// [_i1.ArticleDetailScreen]
class ArticleDetailRoute extends _i4.PageRouteInfo<ArticleDetailRouteArgs> {
  ArticleDetailRoute({
    _i5.Key? key,
    required _i6.ArticleEntity article,
    List<_i4.PageRouteInfo>? children,
  }) : super(
         ArticleDetailRoute.name,
         args: ArticleDetailRouteArgs(key: key, article: article),
         initialChildren: children,
       );

  static const String name = 'ArticleDetailRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ArticleDetailRouteArgs>();
      return _i1.ArticleDetailScreen(key: args.key, article: args.article);
    },
  );
}

class ArticleDetailRouteArgs {
  const ArticleDetailRouteArgs({this.key, required this.article});

  final _i5.Key? key;

  final _i6.ArticleEntity article;

  @override
  String toString() {
    return 'ArticleDetailRouteArgs{key: $key, article: $article}';
  }
}

/// generated route for
/// [_i2.ArticleView]
class ArticleView extends _i4.PageRouteInfo<void> {
  const ArticleView({List<_i4.PageRouteInfo>? children})
    : super(ArticleView.name, initialChildren: children);

  static const String name = 'ArticleView';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.ArticleView();
    },
  );
}

/// generated route for
/// [_i3.CommentsListScreen]
class CommentsListRoute extends _i4.PageRouteInfo<CommentsListRouteArgs> {
  CommentsListRoute({
    _i5.Key? key,
    required int articleId,
    required String articleTitle,
    List<_i4.PageRouteInfo>? children,
  }) : super(
         CommentsListRoute.name,
         args: CommentsListRouteArgs(
           key: key,
           articleId: articleId,
           articleTitle: articleTitle,
         ),
         initialChildren: children,
       );

  static const String name = 'CommentsListRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CommentsListRouteArgs>();
      return _i3.CommentsListScreen(
        key: args.key,
        articleId: args.articleId,
        articleTitle: args.articleTitle,
      );
    },
  );
}

class CommentsListRouteArgs {
  const CommentsListRouteArgs({
    this.key,
    required this.articleId,
    required this.articleTitle,
  });

  final _i5.Key? key;

  final int articleId;

  final String articleTitle;

  @override
  String toString() {
    return 'CommentsListRouteArgs{key: $key, articleId: $articleId, articleTitle: $articleTitle}';
  }
}
