import 'package:bucket_list_app/presentation/page/achieved_list_page.dart';
import 'package:bucket_list_app/presentation/page/detail_page.dart';
import 'package:bucket_list_app/presentation/page/list_page.dart';
import 'package:bucket_list_app/presentation/page/login_page.dart';
import 'package:bucket_list_app/presentation/page/my_page.dart';
import 'package:go_router/go_router.dart';

final goRouter = GoRouter(
  initialLocation: '/login',
  routes: [
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
