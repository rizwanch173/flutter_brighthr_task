import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';

/*
* Run this command in terminal
* flutter packages pub run build_runner build --delete-conflicting-outputs
* */

/*
* Run this command in terminal to watch auto change
* flutter packages pub run build_runner watch --delete-conflicting-outputs
* */

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  AppRouter({super.navigatorKey});

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: ArticleView.page, initial: true),
    AutoRoute(page: ArticleDetailRoute.page),
    AutoRoute(page: CommentsListRoute.page),
  ];
}
