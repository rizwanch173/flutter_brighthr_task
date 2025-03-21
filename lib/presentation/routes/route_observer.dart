import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

String currentRoute = '';

class AppRouteObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    currentRoute = route.settings.name ?? '';
    if (kDebugMode) {
      print('New route pushed: ${route.settings.name}');
    }
  }

  // only override to observer tab routes
  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    if (kDebugMode) {
      print('Tab route visited: ${route.name}');
    }
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    if (kDebugMode) {
      print('Tab route re-visited: ${route.name}');
    }
  }
}
