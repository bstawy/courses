import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/layout/ui/layout.dart';
import '../../features/presentation/ui/home_screen.dart';

class AppRouter {
  static final GlobalKey<NavigatorState> _rootNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'root');
  static final GlobalKey<NavigatorState> _homeTabKey =
      GlobalKey<NavigatorState>(debugLabel: 'home');
  static final GlobalKey<NavigatorState> _jobsTabKey =
      GlobalKey<NavigatorState>(debugLabel: 'jobs');
  static final GlobalKey<NavigatorState> _galleriaTabKey =
      GlobalKey<NavigatorState>(debugLabel: 'galleria');
  static final GlobalKey<NavigatorState> _coursesTabKey =
      GlobalKey<NavigatorState>(debugLabel: 'courses');
  static final GlobalKey<NavigatorState> _messagesTabKey =
      GlobalKey<NavigatorState>(debugLabel: 'messages');

  static final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/home',
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return Layout(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: _homeTabKey,
            routes: [
              GoRoute(path: '/home', builder: (context, state) => HomeScreen()),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _jobsTabKey,
            routes: [
              GoRoute(
                path: '/jobs',
                builder: (context, state) => Center(child: Text('Jobs Screen')),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _galleriaTabKey,
            routes: [
              GoRoute(
                path: '/galleria',
                builder: (context, state) =>
                    Center(child: Text('Galleria Screen')),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _coursesTabKey,
            routes: [
              GoRoute(
                path: '/courses',
                builder: (context, state) =>
                    Center(child: Text('Courses Screen')),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _messagesTabKey,
            routes: [
              GoRoute(
                path: '/messages',
                builder: (context, state) =>
                    Center(child: Text('Messages Screen')),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
