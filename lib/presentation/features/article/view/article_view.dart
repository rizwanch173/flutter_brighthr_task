import 'package:flutter/cupertino.dart';
import 'package:flutter_brighthr_task/l10n/localization.dart';
import 'package:flutter_brighthr_task/presentation/features/article/state/home_state.dart';
import 'package:flutter_brighthr_task/presentation/features/article/view_model/article_view_model.dart';
import 'package:flutter_brighthr_task/presentation/features/article/widgets/article_card.dart';
import 'package:flutter_brighthr_task/presentation/res/textstyles/txtfiles.dart';

import 'package:flutter_brighthr_task/presentation/state_manager/base_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ArticleView extends StatelessWidget {
  const ArticleView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<ArticleViewModel, HomeState>(
      onViewModelReady: (viewModel) {
        viewModel.initialize();
      },

      builder: (context, viewModel, state) {
        if (state.isLoading) {
          return const Center(child: CupertinoActivityIndicator());
        }

        return DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(Localization.value.home_title),
              bottom: TabBar(
                tabs: [
                  Tab(text: Localization.value.allArticles),
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(Localization.value.savedArticles),
                        if (state.savedArticlesCount > 0) ...[
                          const SizedBox(width: 8),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.secondary,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              state.savedArticlesCount.toString(),
                              style: context.t27White,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                // All Articles Tab
                ListView.builder(
                  itemCount: state.articles.length,
                  itemBuilder: (context, index) {
                    final article = state.articles[index];
                    final isSaved = state.savedArticles.any(
                      (a) => a.id == article.id,
                    );
                    return ArticleCard(
                      article: article,
                      isSaved: isSaved,
                      onBookmarkPressed: () {
                        viewModel.toggleBookmark(article);
                      },
                    );
                  },
                ),
                // Saved Articles Tab
                ListView.builder(
                  itemCount: state.savedArticles?.length ?? 0,
                  itemBuilder: (context, index) {
                    final article = state.savedArticles![index];
                    return ArticleCard(
                      article: article,
                      isSaved: true,
                      onBookmarkPressed: () {
                        viewModel.toggleBookmark(article);
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
