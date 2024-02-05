import 'package:bucket_list_app/presentation/router/router.dart';
import 'package:bucket_list_app/presentation/theme/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBottomNav extends StatelessWidget {
  const AppBottomNav({
    super.key,
    required this.currentIndex,
  });

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: AppStrings.bottomNavListLabel,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.check),
          label: AppStrings.bottomNavAchievedLabel,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: AppStrings.bottomNavMyPageLabel,
        ),
      ],
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (value) => _handleTap(context, value),
    );
  }

  void _handleTap(BuildContext context, int value) {
    switch (value) {
      case 0:
        if (currentIndex != value) {
          context.push(RoutePaths.routeList);
        }
        break;
      case 1:
        if (currentIndex != value) {
          context.push(RoutePaths.routeAchieved);
        }
        break;
      case 2:
        if (currentIndex != value) {
          context.push(RoutePaths.routeMyPage);
        }
        break;
      default:
    }
  }
}
