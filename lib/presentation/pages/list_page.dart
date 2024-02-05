import 'package:bucket_list_app/presentation/theme/app_strings.dart';
import 'package:bucket_list_app/presentation/theme/theme.dart';
import 'package:bucket_list_app/presentation/widgets/app_bottom_nav.dart';
import 'package:bucket_list_app/presentation/widgets/tab_bar_items.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> tabItems = [
      const Text(AppStrings.listTitle),
      const Text(AppStrings.categoryTitle),
      const Text(AppStrings.wantedTitle),
    ];

    const inititalTabIndex = 0;
    const currentIndex = 0;

    return DefaultTabController(
      initialIndex: inititalTabIndex,
      length: tabItems.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            AppStrings.appBarTitle,
          ),
          bottom: TabBarItems(
            tabItems: tabItems,
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Container(
                    height: 80,
                    color: MaterialTheme.lightScheme().primary,
                  ),
                );
              },
            ),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Container(
                    height: 80,
                    color: MaterialTheme.lightScheme().inversePrimary,
                  ),
                );
              },
            ),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Container(
                    height: 80,
                    color: MaterialTheme.lightScheme().tertiary,
                  ),
                );
              },
            ),
          ],
        ),
        bottomNavigationBar: const AppBottomNav(
          currentIndex: currentIndex,
        ),
      ),
    );
  }
}
