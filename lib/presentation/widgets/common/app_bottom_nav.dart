import 'package:bucket_list_app/presentation/theme/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBottomNav extends StatelessWidget {
  const AppBottomNav({
    Key? key,
    required this.navigationShell,
  }) : super(key: key);

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationShell.currentIndex,
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
        onTap: _onTap,
      ),
    );
  }

  void _onTap(index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
