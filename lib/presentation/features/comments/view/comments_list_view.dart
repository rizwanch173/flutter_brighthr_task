import 'package:flutter_brighthr_task/presentation/features/comments/state/comments_list_state.dart';
import 'package:flutter_brighthr_task/presentation/features/comments/view_model/comments_list_view_model.dart';
import 'package:flutter_brighthr_task/presentation/res/textstyles/txtfiles.dart';
import 'package:flutter_brighthr_task/presentation/state_manager/base_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CommentsListScreen extends StatelessWidget {
  final int articleId;
  final String articleTitle;

  const CommentsListScreen({
    Key? key,
    required this.articleId,
    required this.articleTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<CommentsListViewModel, CommentsListState>(
      onViewModelReady: (viewModel) {
        viewModel.loadComments(articleId);
      },
      builder: (context, viewModel, state) {
        return Scaffold(
          appBar: AppBar(title: Text('Comments - ${articleTitle}')),
          body:
              state.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : state.comments.isEmpty
                  ? const Center(child: Text('No comments available'))
                  : ListView.separated(
                    padding: const EdgeInsets.all(16),
                    itemCount: state.comments.length,
                    separatorBuilder: (context, index) => const Divider(),
                    itemBuilder: (context, index) {
                      final comment = state.comments[index];
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Icon(Icons.person, size: 20),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Text(
                                      comment.name,
                                      style: context.t140,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Text(comment.body, style: context.t123),
                              const SizedBox(height: 8),
                              Text(comment.email, style: context.t124),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
        );
      },
    );
  }
}
