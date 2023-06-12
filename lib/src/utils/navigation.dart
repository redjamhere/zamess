import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:mesapp/src/views/views.dart';

base class NavigationConfig {
  final GlobalKey<NavigatorState> _rootNavigatorKey =
      GlobalKey<NavigatorState>();
  final _shellNavigatorKey = GlobalKey<NavigatorState>();

  GoRouter initRouter() {
    return GoRouter(
        navigatorKey: _rootNavigatorKey,
        initialLocation: '/',
        routes: [
          GoRoute(
            path: '/',
            parentNavigatorKey: _rootNavigatorKey,
            builder: (context, state) => const WelcomeView(
              key: ObjectKey('home_view'),
            ),
          ),
          GoRoute(
            path: '/login',
            parentNavigatorKey: _rootNavigatorKey,
            builder: (context, state) => const LoginView(
              key: ObjectKey('login_view'),
            ),
          )
        ]);
  }
}
