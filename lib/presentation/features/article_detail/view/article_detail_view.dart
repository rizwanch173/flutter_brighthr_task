import 'package:flutter_brighthr_task/domain/entity/article_entity.dart';
import 'package:flutter_brighthr_task/l10n/localization.dart';
import 'package:flutter_brighthr_task/presentation/features/article_detail/state/article_detail_state.dart';
import 'package:flutter_brighthr_task/presentation/features/article_detail/view_model/article_detail_view_model.dart';
import 'package:flutter_brighthr_task/presentation/res/colors.dart';
import 'package:flutter_brighthr_task/presentation/res/textstyles/txtfiles.dart';
import 'package:flutter_brighthr_task/presentation/routes/app_router.gr.dart';
import 'package:flutter_brighthr_task/presentation/routes/navigation_handler.dart';
import 'package:flutter_brighthr_task/presentation/state_manager/base_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ArticleDetailScreen extends StatelessWidget {
  final ArticleEntity article;

  const ArticleDetailScreen({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return BaseView<ArticleDetailViewModel, ArticleDetailState>(
      onViewModelReady: (viewModel) {
        viewModel.setArticle(article);
      },
      builder: (context, viewModel, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(Localization.value.article_detail_title),
            actions: [
              IconButton(
                icon: Icon(
                  state.isBookmarked ? Icons.bookmark : Icons.bookmark_border,
                  color:
                      state.isBookmarked
                          ? Theme.of(context).primaryColor
                          : null,
                ),
                onPressed: () => viewModel.toggleBookmark(),
              ),
              IconButton(
                icon: const Icon(Icons.comment, color: AppColors.grey),
                onPressed: () {
                  navigateTo(
                    CommentsListRoute(
                      articleId: article.id,
                      articleTitle: article.title,
                    ),
                  );
                },
              ),
            ],
          ),
          body:
              state.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : SingleChildScrollView(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(article.title, style: context.t11),
                        const SizedBox(height: 16),
                        Text(article.body, style: context.t2),
                        const SizedBox(height: 24),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 8.0),
                          width: double.infinity,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              context.router.push(
                                CommentsListRoute(
                                  articleId: article.id,
                                  articleTitle: article.title,
                                ),
                              );
                            },
                            icon: const Icon(
                              Icons.comment_outlined,
                              color: AppColors.white,
                            ),
                            label: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  Localization.value.view_all_comment_btn_tex,
                                  style: context.t10!.copyWith(
                                    color: AppColors.white,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 2,
                                  ),
                                  decoration: BoxDecoration(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Text(
                                    state.comments.length.toString(),
                                    style: context.t108,
                                  ),
                                ),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.grey,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 12,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
        );
      },
    );
  }
}
