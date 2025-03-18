import 'package:flutter_brighthr_task/presentation/routes/app_router.dart';
import 'package:flutter_brighthr_task/presentation/routes/route_observer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

enum NavigationType {
  push,
  pushReplacement,
  popUntil,
  pushAndPopUntil,
  pushNamePopUntil,
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
final _appRouter = AppRouter(navigatorKey: navigatorKey);

// RouteInformationParser<Object> get routeInformationParser =>
//     _appRouter.defaultRouteParser();

// RouterDelegate<Object> get routerDelegate => _appRouter.delegate();

RouterConfig<UrlState> get routerConfig =>
    _appRouter.config(navigatorObservers: () => [AppRouteObserver()]);

bool get canNavigateBack => _appRouter.canNavigateBack;

Future<bool> navigatePop<T extends Object?>([T? arguments]) async {
  _appRouter.pop<T>(arguments);
  return true;
}

Future<T?> navigateTo<T>(
  PageRouteInfo route, {
  NavigationType navigationType = NavigationType.push,
}) async {
  switch (navigationType) {
    case NavigationType.push:
      return _appRouter.push<T>(route);
    case NavigationType.pushNamePopUntil:
      return _appRouter.pushAndPopUntil(route, predicate: (_) => false);
    case NavigationType.pushReplacement:
      return _appRouter.replace(route);
    case NavigationType.popUntil:
      _appRouter.popUntilRouteWithName(route.routeName);
      return Future.value();
    case NavigationType.pushAndPopUntil:
      _appRouter.popUntilRoot();
      return _appRouter.replace(route);
  }
}

extension PageRouteInfoExt on PageRouteInfo {
  Future<T?> navigateTo<T>(
    PageRouteInfo<dynamic> pageRouteInfo, {
    NavigationType navigationType = NavigationType.push,
  }) async {
    return navigateTo(this, navigationType: navigationType);
  }
}
