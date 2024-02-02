import 'package:bucket_list_app/main.dart';
import 'package:bucket_list_app/presentation/pages/achieved_list_page.dart';
import 'package:bucket_list_app/presentation/pages/detail_page.dart';
import 'package:bucket_list_app/presentation/pages/list_page.dart';
import 'package:bucket_list_app/presentation/pages/login_page.dart';
import 'package:bucket_list_app/presentation/pages/my_page.dart';
import 'package:go_router/go_router.dart';

final goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
      routes: <GoRoute>[
        GoRoute(
          path: 'login',
          builder: (context, state) => const LoginPage(),
        ),
        GoRoute(
          path: 'mypage',
          builder: (context, state) => const MyPage(),
        ),
      ],
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/list',
      builder: (context, state) => const ListPage(),
    ),
    GoRoute(
      path: '/detail',
      builder: (context, state) => const DetailPage(),
    ),
    GoRoute(
      path: '/achieved',
      builder: (context, state) => const AchievedListPage(),
    ),
    GoRoute(
      path: '/mypage',
      builder: (context, state) => const MyPage(),
    ),
  ],
);
