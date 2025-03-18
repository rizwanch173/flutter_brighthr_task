import 'package:flutter_brighthr_task/domain/repository/article_repository.dart';
import 'package:flutter_brighthr_task/presentation/features/comments/state/comments_list_state.dart';
import 'package:flutter_brighthr_task/presentation/state_manager/view_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class CommentsListViewModel extends ViewModel<CommentsListState> {
  final ArticleRepository _articleRepository;

  CommentsListViewModel(this._articleRepository)
    : super(const CommentsListState());

  Future<void> loadComments(int articleId) async {
    state = state.copyWith(isLoading: true);

    final result = await _articleRepository.fetchComments(articleId);
    result.fold(
      (error) {
        print(error);
        state = state.copyWith(isLoading: false);
      },
      (comments) {
        state = state.copyWith(comments: comments, isLoading: false);
      },
    );
  }
}
