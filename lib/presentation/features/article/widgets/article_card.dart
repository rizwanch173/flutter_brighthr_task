import 'package:flutter/material.dart';
import 'package:flutter_brighthr_task/domain/entity/article_entity.dart';
import 'package:flutter_brighthr_task/presentation/res/textstyles/txtfiles.dart';
import 'package:flutter_brighthr_task/presentation/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';

class ArticleCard extends StatelessWidget {
  final ArticleEntity article;
  final bool isSaved;
  final VoidCallback onBookmarkPressed;
  final bool showBookmarkIcon;

  const ArticleCard({
    super.key,
    required this.article,
    required this.isSaved,
    required this.onBookmarkPressed,
    this.showBookmarkIcon = true,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(article.title, style: context.t11!.copyWith(fontSize: 20)),
        subtitle: Text(
          article.body,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: context.t123,
        ),
        trailing:
            showBookmarkIcon
                ? IconButton(
                  icon: Icon(
                    isSaved ? Icons.bookmark : Icons.bookmark_border,
                    color: isSaved ? Theme.of(context).primaryColor : null,
                  ),
                  onPressed: onBookmarkPressed,
                )
                : null,
        onTap: () {
          context.router.push(ArticleDetailRoute(article: article));
        },
      ),
    );
  }
}
