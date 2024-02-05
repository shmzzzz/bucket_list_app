import 'package:bucket_list_app/main.dart';
import 'package:bucket_list_app/presentation/pages/achieved_list_page.dart';
import 'package:bucket_list_app/presentation/pages/auth_page.dart';
import 'package:bucket_list_app/presentation/pages/list_page.dart';
import 'package:bucket_list_app/presentation/pages/my_page.dart';
import 'package:go_router/go_router.dart';

final goRouter = GoRouter(
  routes: [
    GoRoute(
      path: RoutePaths.route,
      builder: (context, state) => const HomePage(),
      routes: <GoRoute>[
        GoRoute(
          path: RoutePaths.auth,
          builder: (context, state) => const AuthPage(),
        ),
        GoRoute(
          path: RoutePaths.mypage,
          builder: (context, state) => const MyPage(),
        ),
      ],
    ),
    GoRoute(
      path: RoutePaths.routeAuth,
      builder: (context, state) => const AuthPage(),
    ),
    GoRoute(
      path: RoutePaths.routeList,
      builder: (context, state) => const ListPage(),
    ),
    GoRoute(
      path: RoutePaths.routeAchieved,
      builder: (context, state) => const AchievedListPage(),
    ),
    GoRoute(
      path: RoutePaths.routeMyPage,
      builder: (context, state) => const MyPage(),
    ),
  ],
);

class RoutePaths {
  static const route = '/';
  static const auth = 'auth';
  static const mypage = 'mypage';
  static const routeAuth = '/auth';
  static const routeList = '/list';
  static const routeAchieved = '/achieved';
  static const routeMyPage = '/mypage';
}
