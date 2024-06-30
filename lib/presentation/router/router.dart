import 'package:bucket_list_app/main.dart';
import 'package:bucket_list_app/presentation/pages/achieved_list_page.dart';
import 'package:bucket_list_app/presentation/pages/auth_page.dart';
import 'package:bucket_list_app/presentation/pages/list_item_page.dart';
import 'package:bucket_list_app/presentation/pages/list_page.dart';
import 'package:bucket_list_app/presentation/pages/my_page.dart';
import 'package:bucket_list_app/presentation/widgets/common/app_bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final listNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: RoutePaths.route + RoutePaths.list);
final achievedNavigatorKey = GlobalKey<NavigatorState>(
    debugLabel: RoutePaths.route + RoutePaths.achieved);
final myPageNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: RoutePaths.route + RoutePaths.myPage);

final goRouter = GoRouter(
  initialLocation: RoutePaths.route + RoutePaths.list,
  navigatorKey: rootNavigatorKey,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => AppBottomNav(
        navigationShell: navigationShell,
      ),
      branches: [
        // listブランチ
        StatefulShellBranch(
          navigatorKey: listNavigatorKey,
          routes: [
            GoRoute(
              path: RoutePaths.route + RoutePaths.list,
              builder: (context, state) => const ListPage(),
              routes: [
                GoRoute(
                  path: RoutePaths.listItem,
                  builder: (context, state) => const ListItemPage(),
                ),
              ],
            ),
          ],
        ),
        // achievedブランチ
        StatefulShellBranch(
          navigatorKey: achievedNavigatorKey,
          routes: [
            GoRoute(
              path: RoutePaths.route + RoutePaths.achieved,
              builder: (context, state) => const AchievedListPage(),
            ),
          ],
        ),
        // MyPageブランチ
        StatefulShellBranch(
          navigatorKey: myPageNavigatorKey,
          routes: [
            GoRoute(
              path: RoutePaths.route + RoutePaths.myPage,
              builder: (context, state) => const MyPage(),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: RoutePaths.route,
      builder: (context, state) => const HomePage(),
      routes: <GoRoute>[
        GoRoute(
          path: RoutePaths.auth,
          builder: (context, state) => const AuthPage(),
        ),
      ],
    ),
  ],
);

class RoutePaths {
  static const route = '/';
  static const auth = 'auth';
  static const list = 'list';
  static const listItem = 'listItem';
  static const achieved = 'achieved';
  static const myPage = 'myPage';
}
